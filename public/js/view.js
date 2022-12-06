import AddTodo from './components/add-todo.js';
import Modal from './components/modal.js';


export default class View {
  constructor() {
    this.model = null;
    this.table = document.getElementById('table');
    this.addTodoForm = new AddTodo();
    this.modal = new Modal();
    this.btnCancelar = document.getElementById('btnCancelarVenta');
    this.btnCancelar.onclick = () => this.removeTodoCancelar();
    this.h2Total = document.getElementById('h2Total');
    this.ivaTotal = document.getElementById('ivaTotal');
   
    

    this.addTodoForm.onClick((title, codigo_barras, description, precio_venta, cantidad, iva, und, total) => this.addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total));
    this.modal.onClick((id, values) => 
    {
      //this.showTotal();
      this.editTodo(id, values);
    });
    
  }

  setModel(model) {
    //console.log('soy view');
    this.model = model;
  }

  render() {
    const todos = this.model.getTodos();
    todos.forEach((todo) => this.createRow(todo));
  }

  addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total) {
    //console.log(title);
    //console.log(description);
    const todo = this.model.addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total);
    this.showTotal();
    this.createRow(todo);
  }

  toggleCompleted(id) {
    this.model.toggleCompleted(id);
  }

  editTodo(id, values) {
    values.total = values.precio_venta * values.cantidad;
    //console.log(values);
    this.model.editTodo(id, values);
    this.showTotal();
    const row = document.getElementById(id);
    row.children[0].innerText = values.title;
    row.children[1].innerText = values.codigo_barras;
    row.children[2].innerText = values.description;
    row.children[3].innerText = values.precio_venta;
    row.children[4].innerText = values.cantidad;
    row.children[5].innerText = values.iva;
    row.children[7].innerText = values.precio_venta * values.cantidad;
    
  }

  removeTodo(id) {
    this.model.removeTodo(id);
    document.getElementById(id).remove();
  }

  removeTodoCancelar() {
    //console.log('soy remove todo');
    const todos = this.model.getTodos();
    const arrayId = this.model.removeTodoTable();
    //console.log(arrayId);
    arrayId.forEach((id) => document.getElementById(id).remove());
  }

  showTotal() {
    //console.log("showTotal ha sido corrido");
    const totalesTable = this.model.totalizarTable();
    //console.log(totalesTable);
    let ivaTotal = totalesTable.map((totales) => {
      return totales[0] * (totales[1]/100);
    });
    ivaTotal = ivaTotal.reduce((acc, num) => {
      return acc + num;
    });
    //console.log(ivaTotal);
    this.ivaTotal.innerHTML = "I.V.A.: Bs " + ivaTotal.toFixed(2);

    let sumaTotal = totalesTable.map((totales) => {
      return totales[0];
    });

     sumaTotal = sumaTotal.reduce((acc, num) => {
      return acc + num;
    });

    let totalWithIva = sumaTotal + ivaTotal;
    //console.log(sumaTotal);
    this.h2Total.innerHTML = "Total: Bs " + totalWithIva.toFixed(2);
   
  }

  createRow(todo) {
    const row = table.insertRow();
    row.setAttribute('id', todo.id);
    row.innerHTML = `
      <td>${todo.title}</td>
      <td>${todo.codigo_barras}</td>
      <td>${todo.description}</td>
      <td>${todo.precio_venta}</td>
      <td>${todo.cantidad}</td>
      <td>${todo.iva}</td>
      <td>${todo.und}</td>
      <td>${todo.precio_venta * todo.cantidad}</td>
      <th>${((todo.iva/100+1) * todo.precio_venta).toFixed(2)}</th>

      
      <th class="text-right">

      </th>
    `;

    const editBtn = document.createElement('button');
    editBtn.classList.add('btn', 'btn-primary', 'mb-1');
    editBtn.innerHTML = '<i class="fa fa-edit" aria-hidden="true"></i>';
    editBtn.setAttribute('data-bs-toggle', 'modal');
    editBtn.setAttribute('data-bs-target', '#modal');
    editBtn.onclick = () => this.modal.setValues({
      id: todo.id,
      title: row.children[0].innerText,
      codigo_barras: row.children[1].innerText,
      description: row.children[2].innerText,
      precio_venta: row.children[3].innerText,
      cantidad: row.children[4].innerText,
      iva: row.children[5].innerText,
      und: row.children[6].innerText,
      total: row.children[7].innerText,
    });
    row.children[9].appendChild(editBtn);

    const removeBtn = document.createElement('button');
    removeBtn.classList.add('btn', 'btn-danger', 'mb-1', 'ml-1');
    removeBtn.innerHTML = '<i class="fa fa-trash"></i>';
    removeBtn.onclick = () => this.removeTodo(todo.id);
    row.children[9].appendChild(removeBtn);
  }
}
