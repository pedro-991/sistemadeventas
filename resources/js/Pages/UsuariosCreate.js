import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useState } from 'react';
import { Link } from '@inertiajs/inertia-react'


const UsuariosCreate = ({ url }) => {

const [email, setEmail] = useState('')
const [name, setName] = useState('')
const [password, setPassword] = useState('')




const saveData = (e) => {
   e.preventDefault();
   Inertia.post(url + "/saveUsuarioInertia", { email, name, password });
}

    return(
	<Fragment>
          <h1>Agregar usuario</h1>
		  
	  <form onSubmit={saveData}>

		<div className="form-group">
		  <label htmlFor="email">Email</label>
		  <input
		    type="text"
		    className="form-control"
		    id="email"
			name="email"
		    value={email}
		    onChange={e=>setEmail(e.target.value)}
		    placeholder="Ejemp.: Petronilo@hot.com"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="name">Nombre</label>
		  <input
		    type="text"
		    className="form-control"
		    id="name"
			name="name"
		    value={name}
		    onChange={e=>setName(e.target.value)}
		    placeholder="Ejemp.: PETRONILO PEREZ"
			autocomplete="off"
			required/>
		</div>

		<div className="form-group">
		  <label htmlFor="password">Password</label>
		  <input
		    type="password"
		    className="form-control"
		    id="password"
			name="password"
		    value={password}
		    onChange={e=>setPassword(e.target.value)}
		    placeholder=""
			autocomplete="off"
			required/>
		</div>

		
		
			

		

		<div className="form-group mt-3">
		   <button className="btn btn-success">Guardar</button>
		   <Link href={url + "/indexReactUser"} className="btn btn-primary">Volver al listado</Link>
		</div>
	  </form>
	</Fragment>
    )

}

export default UsuariosCreate;