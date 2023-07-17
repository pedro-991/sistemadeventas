export default class Model {
  constructor() {
    this.arrayId = [];
    this.totalesTable = [];
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

  save2(conteo) {
    if (!this.contador || this.contador.length < 1) {
      localStorage.setItem('conteo', JSON.stringify(conteo));

      } else {
        conteo++
        localStorage.setItem('conteo', JSON.stringify(conteo));
      }
    
  }

  resetContador() {
    localStorage.setItem('conteo', null);
  }

  getTodos() {
    return this.todos.map((todo) => ({...todo}));
  }

  getContador() {
    return this.contador;
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
    //console.log(values);
    
    //this.save();
    this.save();
    //this.view.showTotal();
  }

  addTodo(title, codigo_barras, description, precio_venta, cantidad, iva, und, total, referventa, refercompra) {

    //console.log(title);
    //console.log(description);

    total = precio_venta * cantidad;

    const todo = {
      id: this.currentId++,
      title, 
      codigo_barras, 
      description, 
      precio_venta, 
      cantidad, 
      iva,
      und,
      total,
      referventa,
      refercompra
    }

    this.todos.push(todo);
    //console.log(todo);
    //this.save();
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

  /* esta funcion es para remover solo la tabla
  sin eliminar los datos del vector */
  removeTodoTableGo() {
    //console.log('soy remove todo table');
    this.arrayId = [];
    this.todos.forEach((todo) => {
      this.arrayId.push(todo.id);
    });
    //this.todos.splice(0, this.todos.length);
      
    //this.save();
    
    return this.arrayId;
  }

  totalizarTable() {
    //console.log('soy remove todo table');
    this.totalesTable = [];
    this.todos.forEach((todo) => {
      this.totalesTable.push([todo.total, todo.iva]);
    });
    //this.todos.splice(0, this.todos.length);
      
    //this.save();
    //console.log(this.totalesTable)
    return this.totalesTable;
  }

}
