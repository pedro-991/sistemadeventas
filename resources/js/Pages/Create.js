import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useState } from 'react';
import { Link } from '@inertiajs/inertia-react'


const Create = () => {

const [codigo_barras, setCodigo_barras] = useState('')
const [descripcion, setDescripcion] = useState('')
const [precio_compra, setPrecio_compra] = useState('')
const [precio_venta, setPrecio_venta] = useState('')
const [preciodollar, setPreciodollar] = useState('')
const [referventa, setReferventa] = useState('')
const [refercompra, setRefercompra] = useState('')
const [iva, setIva] = useState('')
const [und, setUnd] = useState('')
const [existencia, setExistencia] = useState('')

const saveData = (e) => {
   e.preventDefault();
   Inertia.post('http://sistemadeventas.com/saveInertia', { codigo_barras, descripcion, precio_compra, precio_venta, preciodollar, referventa, refercompra, iva, und, existencia });
}

    return(
	<Fragment>
          <h1>Agregar producto</h1>
	 
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
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="iva">I.V.A.</label>
		  <input
		    type="text"
		    className="form-control"
		    id="iva"
			name="iva"
		    value={iva}
		    onChange={e=>setIva(e.target.value)}
		    placeholder="Ejemp.: 16"
			required/>
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
			required/>
		</div>

		<div className="form-group mt-3">
		   <button className="btn btn-success">Guardar</button>
		   <Link href="http://sistemadeventas.com/indexReact" className="btn btn-primary">Volver al listado</Link>
		</div>
	  </form>
	</Fragment>
    )

}

export default Create;