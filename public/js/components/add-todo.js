import Alert from './alert.js';

export default class AddTodo {
  constructor() {
    this.btn = document.getElementById('add');
    this.title = document.getElementById('title');
    this.codigo_barras = document.getElementById('codigoTdl');
    this.description = document.getElementById('description');
    this.precio_venta = document.getElementById('precioTdl');
    this.cantidad = document.getElementById('cantidadTdl');
    this.iva = document.getElementById('ivaTdl');
    this.und = document.getElementById('typeUnd');
    this.total = this.precio_venta.value * this.cantidad.value;
    //console.log(this.total);

    this.alert = new Alert('alert');
  }

  onClick(callback) {
    this.btn.onclick = () => {
      if (title.value === '' || description.value === '') {
        this.alert.show('Title and description are required');
      } else {
        this.alert.hide();
        callback(this.title.value, this.codigo_barras.value, this.description.value, this.precio_venta.value, this.cantidad.value, this.iva.value, this.und.value, this.total);
      }
    }
  }
}
