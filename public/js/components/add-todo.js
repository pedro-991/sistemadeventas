import Alert from './alert.js';

export default class AddTodo {
  constructor() {
    this.btn = document.getElementById('add');
    this.title = document.getElementById('title');
    this.codigo_barras = document.getElementById('codigoTdl');
    this.description = document.getElementById('description');
    this.precio_venta = document.getElementById('precioTdl');
    this.precio_venta_iva = document.getElementById('precioConIva');
    this.cantidad = document.getElementById('cantidadTdl');
    this.iva = document.getElementById('ivaTdl');
    this.und = document.getElementById('typeUnd');
    this.total = this.precio_venta.value * this.cantidad.value;
    this.referventa = document.getElementById('referVenta');
    this.refercompra = document.getElementById('referCompra');
    //console.log(this.total);

    this.alert = new Alert('alert');
  }

  onClick(callback) {
    this.btn.onclick = () => {
      //const btnClick = () => {
      if (title.value === '' || description.value === '') {
        this.alert.show('Title and description are required');
      } else {
        this.alert.hide();
        callback(this.title.value, this.codigo_barras.value, this.description.value, this.precio_venta.value, this.cantidad.value, this.iva.value, this.und.value, this.total, this.referventa.value, this.refercompra.value);
        this.description.value = "";
        this.precio_venta.value = "";
        this.precio_venta_iva.value = "";
        this.cantidad.value = "";
        this.iva.value = "";
      }
    }
  }
}
