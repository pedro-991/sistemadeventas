import Alert from './alert.js';

export default class Modalcant {
  constructor() {
    this.title = document.getElementById('modal-title2');
    this.codigo_barras = document.getElementById('modal-codigo_barras2');
    this.description = document.getElementById('modal-description2');
    this.precio_venta = document.getElementById('modal-precio_venta2');
    this.precio_venta_iva = document.getElementById('modal-precio_venta_iva2');
    this.cantidad = document.getElementById('modal-cantidad2');
    this.iva = document.getElementById('modal-iva2');
    this.btn = document.getElementById('modal-btn2');
    this.alert = new Alert('modal-alert');
    this.und = "";
    this.total = "";
    this.referventa = document.getElementById('modal-venta-dollar2');
    this.refercompra = document.getElementById('modal-compra-dollar2');
    this.tazaNow = document.getElementById('tazaNow');
    this.precio_venta_dollar = document.getElementById('precioDollarModal2');

    this.todo = null;
  }

  setValues(todo) {
    this.todo = todo;
    this.title.value = todo.title;
    this.codigo_barras.value = todo.codigo_barras;
    this.description.value = todo.description;
    this.precio_venta.value = todo.precio_venta;
    this.cantidad.value = todo.cantidad;
    this.iva.value = todo.iva;
    this.und = todo.und;
    this.total = todo.total;
    this.referventa.value = todo.referventa;
    this.refercompra.value = todo.refercompra;
    this.precio_venta_iva.value = ((todo.iva/100+1) * todo.precio_venta).toFixed(2);
    this.precio_venta_dollar.value = (((todo.iva/100+1) * todo.precio_venta) / this.tazaNow.value).toFixed(2);
  }

  onClick(callback) {
    this.btn.onclick = () => {
      if (!this.title.value || !this.description.value) {
        this.alert.show('Title and description are required');
        return;
      }

      $('#modalEditCant').modal('toggle');

      callback(this.todo.id, {
        title: this.title.value,
        codigo_barras: this.codigo_barras.value,
        description: this.description.value,
        precio_venta: this.precio_venta.value,
        cantidad: this.cantidad.value,
        iva: this.iva.value,
        und: this.und,
        total: this.total,
        referventa: this.referventa.value,
        refercompra: this.refercompra.value,
      });
    }
  }
}
