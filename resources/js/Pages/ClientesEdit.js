import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useEffect, useState } from "react";
import { Link } from '@inertiajs/inertia-react';

/* abajo la variable producto es la enviada por el controlador de laravel */
const ClientesEdit = ({ cliente, url }) => {
    

    const [nombre, setNombre] = useState('')
    const [documento, setDocumento] = useState('')
    const [telefono, setTelefono] = useState('')
    const [direccion, setDireccion] = useState('')

	useEffect(() => {
		setNombre(cliente.nombre)
		setDocumento(cliente.documento)
        setTelefono(cliente.telefono)
        setDireccion(cliente.direccion)
        

	}, []);

    

	const updateUser = (e) => {
		e.preventDefault();
		Inertia.post(url + '/updateClienteReact/' + cliente.id, { nombre, documento, telefono, direccion });
	};

	return (
            <Fragment>
                <h1>Editar Cliente</h1>
                
                <div className="card">
                    <div className="card-body">
                        <form onSubmit={updateUser}>
                            <div className="form-group">
                                <label htmlFor="nombre">Nombre</label>
                                <input
                                type="text"
                                className="form-control"
                                id="nombre"
                                value={nombre}
                                onChange={(e) => setNombre(e.target.value)}
                                placeholder="Petronilo"
                                autocomplete="off"
                                required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="documento">Documento</label>
                                <input
                                type="text"
                                className="form-control"
                                id="documento"
                                value={documento}
                                onChange={(e) => setDocumento(e.target.value)}
                                placeholder="V-00000000"
                                autocomplete="off"
                                required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="telefono">Teléfono</label>
                                <input
                                type="text"
                                className="form-control"
                                id="telefono"
                                value={telefono}
                                onChange={(e) => setTelefono(e.target.value)}
                                placeholder="0000-0000000"
                                autocomplete="off"
                                required
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="direccion">Dirección</label>
                                <input
                                type="text"
                                className="form-control"
                                id="direccion"
                                value={direccion}
                                onChange={(e) => setDireccion(e.target.value)}
                                placeholder="La Sabanita"
                                autocomplete="off"
                                required
                                />
                            </div>
                            
                            
                            <div className="form-group mt-3">
		                        <button className="btn btn-success">Guardar</button>
		                        <Link href={url + "/indexReactCliente"} className="btn btn-primary">Volver al listado</Link>
		                    </div>
                        </form>
                    </div>
                </div>
            </Fragment>
            )
}

export default ClientesEdit;