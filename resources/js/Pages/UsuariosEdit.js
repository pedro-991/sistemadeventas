import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useEffect, useState } from "react";
import { Link } from '@inertiajs/inertia-react';

const UsuariosEdit = ({ usuario, url }) => {
    

    const [email, setEmail] = useState('')
    const [name, setName] = useState('')
    const [password, setPassword] = useState('')

	useEffect(() => {
		setEmail(usuario.email)
		setName(usuario.name)
        setPassword(usuario.password)
        

	}, []);

    

	const updateUser = (e) => {
		e.preventDefault();
		Inertia.post(url + '/updateUsuarioReact/' + usuario.id, { email, name, password });
	};

	return (
            <Fragment>
                <h1>Editar Usuario</h1>
                
                <div className="card">
                    <div className="card-body">
                        <form onSubmit={updateUser}>
                            <div className="form-group">
                                <label htmlFor="email">Email</label>
                                <input
                                type="text"
                                className="form-control"
                                id="email"
                                value={email}
                                onChange={(e) => setEmail(e.target.value)}
                                placeholder="Petronilo@hot.com"
                                autocomplete="off"
                                required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="name">Nombre</label>
                                <input
                                type="text"
                                className="form-control"
                                id="name"
                                value={name}
                                onChange={(e) => setName(e.target.value)}
                                placeholder="Petronilo"
                                autocomplete="off"
                                required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="password">Password</label>
                                <input
                                type="text"
                                className="form-control"
                                id="password"
                                value={password}
                                onChange={(e) => setPassword(e.target.value)}
                                placeholder=""
                                autocomplete="off"
                                required
                                />
                            </div>
                            
                            
                            
                            <div className="form-group mt-3">
		                        <button className="btn btn-success">Guardar</button>
		                        <Link href={url + "/indexReactUser"} className="btn btn-primary">Volver al listado</Link>
		                    </div>
                        </form>
                    </div>
                </div>
            </Fragment>
            )
}

export default UsuariosEdit;