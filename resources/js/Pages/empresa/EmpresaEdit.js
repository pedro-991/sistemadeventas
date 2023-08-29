import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useEffect, useState } from "react";
import { Link } from '@inertiajs/inertia-react';

/* abajo la variable cliente es la enviada por el controlador de laravel */
const ClientesEdit = ({ empresa, url }) => {
    

    const [nombre, setNombre] = useState('')
    const [identificacion, setIdentificacion] = useState('')
    const [telefono, setTelefono] = useState('')
    const [direccion, setDireccion] = useState('')

	useEffect(() => {
		setNombre(empresa.nombre)
		setIdentificacion(empresa.identificacion)
        setTelefono(empresa.telefono)
        setDireccion(empresa.direccion)
        

	}, []);

    

	const update = (e) => {
		e.preventDefault();
		Inertia.post(url + '/empresaUpdate/' + empresa.id, { nombre, identificacion, telefono, direccion });
	};

	return (
            <Fragment>
                <h1>Editar Empresa</h1>
                
                <div className="card">
                    <div className="card-body">
                        <form onSubmit={update}>
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
                                <label htmlFor="identificacion">Identificacion</label>
                                <input
                                type="text"
                                className="form-control"
                                id="identificacion"
                                value={identificacion}
                                onChange={(e) => setIdentificacion(e.target.value)}
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
                                placeholder="Ciudad Bolívar"
                                autocomplete="off"
                                required
                                />
                            </div>
                            
                            
                            <div className="form-group mt-3">
		                        <button className="btn btn-success">Guardar</button>
		                        <Link href={url + "/empresa"} className="btn btn-primary">Volver al listado</Link>
		                    </div>
                        </form>
                    </div>
                </div>
            </Fragment>
            )
}

export default ClientesEdit;