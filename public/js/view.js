import AddTodo from './components/add-todo.js';
import Modal from './components/modal.js';
//import Filters from './components/filters.js';

export default class View {
  constructor() {
    this.model = null;
    this.table = document.getElementById('table');
    this.addTodoForm = new AddTodo();
    this.modal = new Modal();
    this.btnCancelar = document.getElementById('btnCancelarVenta');
    this.btnCancelar.onclick = () => this.removeTodoCancelar();
    //this.filters = new Filters();
    

    this.addTodoForm.onClick((title, codigo_barras, description, precio_venta, cantidad, iva, und) => this.addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und));
    this.modal.onClick((id, values) => this.editTodo(id, values));
    //this.filters.onClick((filters) => this.filter(filters));
  }

  setModel(model) {
    //console.log('soy view');
    this.model = model;
  }

  render() {
    const todos = this.model.getTodos();
    todos.forEach((todo) => this.createRow(todo));
  }

 /*  filter(filters) {
    const { type, words } = filters;
    const [, ...rows] = this.table.getElementsByTagName('tr');
    for (const row of rows) {
      const [title, description, completed] = row.children;
      let shouldHide = false;

      if (words) {
        shouldHide = !title.innerText.includes(words) && !description.innerText.includes(words);
      }

      const shouldBeCompleted = type === 'completed';
      const isCompleted = completed.children[0].checked;

      if (type !== 'all' && shouldBeCompleted !== isCompleted) {
        shouldHide = true;
      }

      if (shouldHide) {
        row.classList.add('d-none');
      } else {
        row.classList.remove('d-none');
      }
    }
  } */

  addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und) {
    //console.log(title);
    //console.log(description);
    const todo = this.model.addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und);
    this.createRow(todo);
  }

  toggleCompleted(id) {
    this.model.toggleCompleted(id);
  }

  editTodo(id, values) {
    this.model.editTodo(id, values);
    const row = document.getElementById(id);
    row.children[0].innerText = values.title;
    row.children[1].innerText = values.codigo_barras;
    row.children[2].innerText = values.description;
    row.children[3].innerText = values.precio_venta;
    row.children[4].innerText = values.cantidad;
    row.children[5].innerText = values.iva;
    
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
    //todos.forEach((todo, i) => console.log(i));
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

      
      <th class="text-right">

      </th>
    `;

   /*  const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.checked = todo.completed;
    checkbox.onclick = () => this.toggleCompleted(todo.id);
    row.children[2].appendChild(checkbox); */

    const editBtn = document.createElement('button');
    editBtn.classList.add('btn', 'btn-primary', 'mb-1');
    //editBtn.innerHTML = '<i class="fa fa-pencil"></i>';
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
    });
    row.children[6].appendChild(editBtn);

    const removeBtn = document.createElement('button');
    removeBtn.classList.add('btn', 'btn-danger', 'mb-1', 'ml-1');
    removeBtn.innerHTML = '<i class="fa fa-trash"></i>';
    removeBtn.onclick = () => this.removeTodo(todo.id);
    row.children[6].appendChild(removeBtn);
  }
}
