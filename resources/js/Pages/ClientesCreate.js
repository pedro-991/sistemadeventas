import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useState } from 'react';
import { Link } from '@inertiajs/inertia-react'


const ClientesCreate = ({ url }) => {

const [nombre, setNombre] = useState('')
const [documento, setDocumento] = useState('')
const [telefono, setTelefono] = useState('')
const [direccion, setDireccion] = useState('')




const saveData = (e) => {
   e.preventDefault();
   Inertia.post(url + "/saveClienteInertia", { nombre, documento, telefono, direccion });
}

    return(
	<Fragment>
          <h1>Agregar producto</h1>
		  
	  <form onSubmit={saveData}>

		<div className="form-group">
		  <label htmlFor="nombre">Nombre</label>
		  <input
		    type="text"
		    className="form-control"
		    id="nombre"
			name="nombre"
		    value={nombre}
		    onChange={e=>setNombre(e.target.value)}
		    placeholder="Ejemp.: Petronilo"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="documento">Documento</label>
		  <input
		    type="text"
		    className="form-control"
		    id="documento"
			name="documento"
		    value={documento}
		    onChange={e=>setDocumento(e.target.value)}
		    placeholder="Ejemp.: V-12345678"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="telefono">Teléfono</label>
		  <input
		    type="text"
		    className="form-control"
		    id="telefono"
			name="telefono"
		    value={telefono}
		    onChange={e=>setTelefono(e.target.value)}
		    placeholder="Ejemp.: 0000-0000000"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="direccion">Dirección</label>
		  <input
		    type="text"
		    className="form-control"
		    id="direccion"
			name="direccion"
		    value={direccion}
		    onChange={e=>setDireccion(e.target.value)}
		    placeholder="Ejemp.: La Sabanita"
			autocomplete="off"
			required/>
		</div>
		
			

		

		<div className="form-group mt-3">
		   <button className="btn btn-success">Guardar</button>
		   <Link href={url + "/indexReactCliente"} className="btn btn-primary">Volver al listado</Link>
		</div>
	  </form>
	</Fragment>
    )

}

export default ClientesCreate;