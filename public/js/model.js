export default class Model {
  constructor() {
    this.arrayId = [];
    this.view = null;
    this.todos = JSON.parse(localStorage.getItem('todos'));
    if (!this.todos || this.todos.length < 1) {
     /*  this.todos = [
        {
          id: 0,
          title: 'Learn JS',
          codigo_barras: 'Watch JS Tutorials',
          description: 'Watch JS Tutorials',
          precio_venta: 'Watch JS Tutorials',
          cantidad: 'Watch JS Tutorials',
          iva: 'Watch JS Tutorials',
          
          
        }
      ] */

      //aqui agregar vector en blanco
      this.todos = [];
      this.currentId = 0;
    } else {
      this.currentId = this.todos[this.todos.length - 1].id + 1;
    }
  }

  setView(view) {
    //console.log('soy model');
    this.view = view;
  }

  save() {
    localStorage.setItem('todos', JSON.stringify(this.todos));
  }

  getTodos() {
    return this.todos.map((todo) => ({...todo}));
  }

  findTodo(id) {
    return this.todos.findIndex((todo) => todo.id === id);
  }

 /*  toggleCompleted(id) {
    const index = this.findTodo(id);
    const todo = this.todos[index];
    todo.completed = !todo.completed;
    this.save();
  } */

  editTodo(id, values) {
    const index = this.findTodo(id);
    Object.assign(this.todos[index], values);
    this.save();
  }

  addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und) {

    //console.log(title);
    //console.log(description);

    const todo = {
      id: this.currentId++,
      title, 
      codigo_barras, 
      description, 
      precio_venta, 
      cantidad, 
      iva,
      und
    }

    this.todos.push(todo);
    console.log(this.todos);
    this.save();

    return {...todo};
  }

  removeTodo(id) {
    const index = this.findTodo(id);
    this.todos.splice(index, 1);  
    this.save();
  }

  removeTodoTable() {
    //console.log('soy remove todo table');
    this.arrayId = [];
    this.todos.forEach((todo) => {
      this.arrayId.push(todo.id);
    });
    this.todos.splice(0, this.todos.length);
      
    this.save();
    
    return this.arrayId;
  }

}
