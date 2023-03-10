import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useState } from 'react';
import { Link } from '@inertiajs/inertia-react'


const Create = ({ url }) => {

const [codigo_barras, setCodigo_barras] = useState('')
const [descripcion, setDescripcion] = useState('')
const [precio_compra, setPrecio_compra] = useState('')
const [precio_venta, setPrecio_venta] = useState('')
const [preciodollar, setPreciodollar] = useState('')
const [referventa, setReferventa] = useState('')
const [refercompra, setRefercompra] = useState('')
const [iva, setIva] = useState('0')
const [und, setUnd] = useState('')
const [existencia, setExistencia] = useState('')
const [compuesto, setCompuesto] = useState('')
const [fraccion, setFraccion] = useState('')
const [buscar_compuesto, setBuscar_compuesto] = useState('')

//iva = 0;

//setIva("0");

const buscar = () => {
	//let buscar = document.getElementById('buscar_compuesto');
	//console.log(this.value);
	//console.log(e.value);
	console.log(buscar_compuesto);
	$.ajaxSetup({
		headers: {
			  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		  }
	  });

$.ajax({
	url: url + '/productoCompuesto',
	type: 'POST',
	data:  {txtcodigo : buscar_compuesto},
	success: function (datos) {
		$("#contentTable").html(datos);
		openmodal();
	}
});
}

const copiarCodigo = () => {

	var btnCloseModal = document.getElementById('btnCloseModal');
    

	var myJson = JSON.parse (content.value);
	var myInputCompuesto = document.getElementById('compuesto');
	

	myInputCompuesto.value = myJson.codigo_barras;
	

	console.log(myJson.codigo_barras);

	
	btnCloseModal.click();

}

const saveData = (e) => {
   e.preventDefault();
   Inertia.post(url + "/saveInertia", { codigo_barras, descripcion, precio_compra, precio_venta, preciodollar, referventa, refercompra, iva, und, existencia, compuesto, fraccion });
}

    return(
	<Fragment>
          <h1>Agregar producto</h1>
		  <input type="hidden" id="btnModal" class="" data-bs-toggle="modal" data-bs-target="#exampleModal"></input>
		  <input type="hidden" id="btnCloseModal" data-bs-dismiss="modal" data-bs-target="#exampleModal" />
	 
	  <form onSubmit={saveData}>

		<div className="form-group">
		  <label htmlFor="codigo_barras">Código de barras</label>
		  <input
		    type="text"
		    className="form-control"
		    id="codigo_barras"
			name="codigo_barras"
		    value={codigo_barras}
		    onChange={e=>setCodigo_barras(e.target.value)}
		    placeholder="Ejemp.: 0002211"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="descripcion">Descripción</label>
		  <input
		    type="text"
		    className="form-control"
		    id="descripcion"
			name="descripcion"
		    value={descripcion}
		    onChange={e=>setDescripcion(e.target.value)}
		    placeholder="Ejemp.: Atun"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="precio_compra">Precio de compra</label>
		  <input
		    type="text"
		    className="form-control"
		    id="precio_compra"
			name="precio_compra"
		    value={precio_compra}
		    onChange={e=>setPrecio_compra(e.target.value)}
		    placeholder="Ejemp.: 52.05"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="precio_venta">Precio de venta</label>
		  <input
		    type="text"
		    className="form-control"
		    id="precio_venta"
			name="precio_venta"
		    value={precio_venta}
		    onChange={e=>setPrecio_venta(e.target.value)}
		    placeholder="Ejemp.: 52.05"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="preciodollar">Precio de venta $</label>
		  <input
		    type="text"
		    className="form-control"
		    id="preciodollar"
			name="preciodollar"
		    value={preciodollar}
		    onChange={e=>setPreciodollar(e.target.value)}
		    placeholder="Ejemp.: 5.05"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="referventa">Referencia venta $</label>
		  <input
		    type="text"
		    className="form-control"
		    id="referventa"
			name="referventa"
		    value={referventa}
		    onChange={e=>setReferventa(e.target.value)}
		    placeholder="Ejemp.: VENTA *$5.05"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="refercompra">Referencia compra $</label>
		  <input
		    type="text"
		    className="form-control"
		    id="refercompra"
			name="refercompra"
		    value={refercompra}
		    onChange={e=>setRefercompra(e.target.value)}
		    placeholder="Ejemp.: COMPRA *$3.84"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="iva">I.V.A.</label>
		  <select
		    type="text"
		    className="form-control"
		    id="iva"
			name="iva"
		    
		    onChange={e=>setIva(e.target.value)}
		    placeholder="Ejemp.: 16"
			autocomplete="off"
			required>
				<option value="0">0%</option>
				<option value="16">16%</option>
			</select>
		</div>

		<div className="form-group">
		  <label htmlFor="und">UND</label>
		  <input
		    type="text"
		    className="form-control"
		    id="und"
			name="und"
		    value={und}
		    onChange={e=>setUnd(e.target.value)}
		    placeholder="Ejemp.: UND"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="existencia">Existencia</label>
		  <input
		    type="text"
		    className="form-control"
		    id="existencia"
			name="existencia"
		    value={existencia}
		    onChange={e=>setExistencia(e.target.value)}
		    placeholder="Ejemp.: 100"
			autocomplete="off"
			required/>
		</div>

		<div className="row">
			<div className="form-group col-md-6">
			<label htmlFor="compuesto">COMPUESTO</label>
			<input
				type="text"
				className="form-control"
				id="compuesto"
				name="compuesto"
				onFocus={e=>setCompuesto(e.target.value)}
				onChange={e=>setCompuesto(e.target.value)}
				placeholder="Ejemp.: 000001"
				autocomplete="off"
				list="listacompuesto"
				required/>

				<datalist id="listacompuesto">
					<option value={codigo_barras}>NO COMPUESTO</option>
				</datalist>
			</div>
			<div className="form-group col-md-6">
				<label htmlFor="buscar_compuesto">BUSCAR COMPUESTO</label>
				<input
					type="text"
					className="form-control"
					id="buscar_compuesto"
					name="buscar_compuesto"
					onChange={e=>setBuscar_compuesto(e.target.value)}
					onDoubleClick={buscar}
					placeholder="Ejemp.: Jabon"
					autocomplete="off"
					/>
			</div>
		</div>

		<div className="form-group">
		  <label htmlFor="fraccion">Fraccion Compuesto</label>
		  <input
		    type="text"
		    className="form-control"
		    id="fraccion"
			name="fraccion"
		    
		    onChange={e=>setFraccion(e.target.value)}
		    placeholder="Ejemp.: 0.0015"
			autocomplete="off"
			list="listafraccion"
			required/>

			<datalist id="listafraccion">
				<option value="1">NO COMPUESTO</option>
			</datalist>
		</div>

		<div className="form-group mt-3">
		   <button className="btn btn-success">Guardar</button>
		   <Link href={url + "/indexReact"} className="btn btn-primary">Volver al listado</Link>
		</div>
	  </form>
	</Fragment>
    )

}

export default Create;