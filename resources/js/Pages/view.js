import AddTodo from './components/add-todo.js';
import Modal from './components/modal.js';
import Modalcant from './components/modalcant.js';


export default class View {
  constructor() {
    this.model = null;
    //this.table = document.getElementById('table');
    this.table = document.getElementById('tablaVenta');
    this.addTodoForm = new AddTodo();
    this.modal = new Modal();
    this.modalcant = new Modalcant();
    this.btnCancelar = document.getElementById('btnCancelarVenta');
    this.btnCancelar.onclick = () => this.removeTodoCancelar();
    this.h2Total = document.getElementById('h2Total');
    this.efectivo1 = document.getElementById('efectivo1');
    this.totalBs = document.getElementById('totalBs');
    this.ivaTotal = document.getElementById('ivaTotal');
    this.tazaNow = document.getElementById('tazaNow');
    this.h2TotalDollar = document.getElementById('h2TotalDollar');

    this.addTodoForm.onClick((title, codigo_barras, description, precio_venta, cantidad, iva, und, total, referventa, refercompra) => {
      this.addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total, referventa, refercompra);
      
    });
  
      this.modal.onClick((id, values) => 
    {
      //this.showTotal();
      this.editTodo(id, values);
    });

    this.modalcant.onClick((id, values) => 
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

  /* funcion para renderizar la tabla de nuevo
  sin eliminarla del localstorage
  y poder colocarle los numeros de item */
  renderGo() {
    
    const todos = this.model.getTodos();
    const arrayId = this.model.removeTodoTableGo();
    arrayId.forEach((id) => document.getElementById(id).remove());
    todos.forEach((todo, index) => this.createRowGo(todo, index));
  }

  addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total, referventa, refercompra) {
    //console.log(refercompra);
    //console.log(description);
    //console.log(referventa);
    const todo = this.model.addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total, referventa, refercompra);
    //this.descripcion = "";
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
    row.children[7].innerText = (values.precio_venta * values.cantidad).toFixed(2);
    row.children[9].innerText = values.referventa;
    row.children[10].innerText = values.refercompra;
    
  }

  removeTodo(id) {
    this.model.removeTodo(id);
    document.getElementById(id).remove();
    this.showTotal();
    this.renderGo();
  }

  removeTodoCancelar() {
    //console.log('soy remove todo');
    const todos = this.model.getTodos();
    const arrayId = this.model.removeTodoTable();
    //console.log(arrayId);
    arrayId.forEach((id) => document.getElementById(id).remove());
    //this.showTotal();
    this.ivaTotal.innerHTML = "I.V.A.: Bs " + 0;
    this.h2Total.innerHTML = "Total: Bs " + 0;
    this.h2TotalDollar.innerHTML = "Total: $ " + 0;
    this.efectivo1.value = 0;
    this.totalBs.value = 0;
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
    this.efectivo1.value = totalWithIva.toFixed(2);
    this.totalBs.value = totalWithIva.toFixed(2);

    //total en $

    let totalDollar = totalWithIva / this.tazaNow.value;
    this.h2TotalDollar.innerHTML = "Total: $ " + totalDollar.toFixed(2);
   
  }

  createRow(todo) {
    const row = this.table.insertRow();
    row.setAttribute('id', todo.id);
    row.innerHTML = `
      
      <th>${todo.id+1}</th>
      <td style="display: none;">${todo.title}</td>
      <td>${todo.codigo_barras}</td>
      <td>${todo.description}</td>
      <td>${todo.precio_venta}</td>
      <td align="center">${todo.cantidad}</td>
      <td>${todo.iva}</td>
      <td>${todo.und}</td>
      <td>${(todo.precio_venta * todo.cantidad).toFixed(2)}</td>
      <th>${((todo.iva/100+1) * todo.precio_venta).toFixed(2)}</th>
      <th style="display: none;">${todo.referventa}</th>
      <th style="display: none;">${todo.refercompra}</th>
      

      
      <th class="text-right">

      </th>
    `;

    const editBtnCant = document.createElement('button');
    editBtnCant.classList.add('btn', 'btn-primary', 'mb-1');
    editBtnCant.innerHTML = 'Cant.';
    editBtnCant.setAttribute('data-bs-toggle', 'modal');
    editBtnCant.setAttribute('data-bs-target', '#modalEditCant');
    editBtnCant.onclick = () => this.modalcant.setValues({
      id: todo.id,
      title: row.children[1].innerText,
      codigo_barras: row.children[2].innerText,
      description: row.children[3].innerText,
      precio_venta: row.children[4].innerText,
      cantidad: row.children[5].innerText,
      iva: row.children[6].innerText,
      und: row.children[7].innerText,
      total: row.children[8].innerText,
      referventa: row.children[10].innerText,
      refercompra: row.children[11].innerText,
    });
    row.children[12].appendChild(editBtnCant);

    const editBtn = document.createElement('button');
    editBtn.classList.add('btn', 'btn-primary', 'mb-1');
    editBtn.innerHTML = '<i class="fa fa-edit" aria-hidden="true"></i>';
    editBtn.setAttribute('data-bs-toggle', 'modal');
    editBtn.setAttribute('data-bs-target', '#modal');
    editBtn.onclick = () => this.modal.setValues({
      id: todo.id,
      title: row.children[1].innerText,
      codigo_barras: row.children[2].innerText,
      description: row.children[3].innerText,
      precio_venta: row.children[4].innerText,
      cantidad: row.children[5].innerText,
      iva: row.children[6].innerText,
      und: row.children[7].innerText,
      total: row.children[8].innerText,
      referventa: row.children[10].innerText,
      refercompra: row.children[11].innerText,
    });
    row.children[12].appendChild(editBtn);

    const removeBtn = document.createElement('button');
    removeBtn.classList.add('btn', 'btn-danger', 'mb-1', 'ml-1');
    removeBtn.innerHTML = '<i class="fa fa-trash"></i>';
    removeBtn.onclick = () => this.removeTodo(todo.id);
    row.children[12].appendChild(removeBtn);
    this.renderGo();
  }

  createRowGo(todo, contador) {
    const row = this.table.insertRow();
    row.setAttribute('id', todo.id);
    row.innerHTML = `
      
      <th>${contador+1}</th>
      <td style="display: none;">${todo.title}</td>
      <td>${todo.codigo_barras}</td>
      <td>${todo.description}</td>
      <td>${todo.precio_venta}</td>
      <td align="center">${todo.cantidad}</td>
      <td>${todo.iva}</td>
      <td>${todo.und}</td>
      <td>${(todo.precio_venta * todo.cantidad).toFixed(2)}</td>
      <th>${((todo.iva/100+1) * todo.precio_venta).toFixed(2)}</th>
      <th style="display: none;">${todo.referventa}</th>
      <th style="display: none;">${todo.refercompra}</th>
      

      
      <th class="text-right">

      </th>
    `;

    const editBtnCant = document.createElement('button');
    editBtnCant.classList.add('btn', 'btn-primary', 'mb-1');
    editBtnCant.innerHTML = 'Cant.';
    editBtnCant.setAttribute('data-bs-toggle', 'modal');
    editBtnCant.setAttribute('data-bs-target', '#modalEditCant');
    editBtnCant.onclick = () => this.modalcant.setValues({
      id: todo.id,
      title: row.children[1].innerText,
      codigo_barras: row.children[2].innerText,
      description: row.children[3].innerText,
      precio_venta: row.children[4].innerText,
      cantidad: row.children[5].innerText,
      iva: row.children[6].innerText,
      und: row.children[7].innerText,
      total: row.children[8].innerText,
      referventa: row.children[10].innerText,
      refercompra: row.children[11].innerText,
    });
    row.children[12].appendChild(editBtnCant);

    const editBtn = document.createElement('button');
    editBtn.classList.add('btn', 'btn-primary', 'mb-1');
    editBtn.innerHTML = '<i class="fa fa-edit" aria-hidden="true"></i>';
    editBtn.setAttribute('data-bs-toggle', 'modal');
    editBtn.setAttribute('data-bs-target', '#modal');
    editBtn.onclick = () => this.modal.setValues({
      id: todo.id,
      title: row.children[1].innerText,
      codigo_barras: row.children[2].innerText,
      description: row.children[3].innerText,
      precio_venta: row.children[4].innerText,
      cantidad: row.children[5].innerText,
      iva: row.children[6].innerText,
      und: row.children[7].innerText,
      total: row.children[8].innerText,
      referventa: row.children[10].innerText,
      refercompra: row.children[11].innerText,
    });
    row.children[12].appendChild(editBtn);

    const removeBtn = document.createElement('button');
    removeBtn.classList.add('btn', 'btn-danger', 'mb-1', 'ml-1');
    removeBtn.innerHTML = '<i class="fa fa-trash"></i>';
    removeBtn.onclick = () => this.removeTodo(todo.id);
    row.children[12].appendChild(removeBtn);
  }

}
