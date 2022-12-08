import Alert from './alert.js';

export default class Modal {
  constructor() {
    this.title = document.getElementById('modal-title');
    this.codigo_barras = document.getElementById('modal-codigo_barras');
    this.description = document.getElementById('modal-description');
    this.precio_venta = document.getElementById('modal-precio_venta');
    this.cantidad = document.getElementById('modal-cantidad');
    this.iva = document.getElementById('modal-iva');
    this.btn = document.getElementById('modal-btn');
    this.alert = new Alert('modal-alert');
    this.und = "";
    this.total = "";
    this.referventa = document.getElementById('modal-venta-dollar');
    this.refercompra = document.getElementById('modal-compra-dollar');

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
  }

  onClick(callback) {
    this.btn.onclick = () => {
      if (!this.title.value || !this.description.value) {
        this.alert.show('Title and description are required');
        return;
      }

      $('#modal').modal('toggle');

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
