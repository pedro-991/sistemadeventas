import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useEffect, useState } from "react";
import { Link } from '@inertiajs/inertia-react';

/* abajo la variable producto es la enviada por el controlador de laravel */
const Edit = ({ producto, url }) => {
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

	useEffect(() => {
		setCodigo_barras(producto.codigo_barras)
		setDescripcion(producto.descripcion)
        setPrecio_compra(producto.precio_compra)
        setPrecio_venta(producto.precio_venta)
        setPreciodollar(producto.preciodollar)
        setReferventa(producto.referventa)
        setRefercompra(producto.refercompra)
        setIva(producto.iva)
        setUnd(producto.und)
        setExistencia(producto.existencia)

	}, []);

	const updateUser = (e) => {
		e.preventDefault();
		Inertia.post(url + '/update/' + producto.id, { codigo_barras, descripcion, precio_compra, precio_venta, preciodollar, referventa, refercompra, iva, und, existencia });
	};

	return (
            <Fragment>
                <h1>Editar producto</h1>
                <div className="card">
                    <div className="card-body">
                        <form onSubmit={updateUser}>
                            <div className="form-group">
                                <label htmlFor="codigo_barras">Codigo barras</label>
                                <input
                                type="text"
                                className="form-control"
                                id="codigo_barras"
                                value={codigo_barras}
                                onChange={(e) => setCodigo_barras(e.target.value)}
                                placeholder="0123456789"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="descripcion">Descripcion</label>
                                <input
                                type="text"
                                className="form-control"
                                id="descripcion"
                                value={descripcion}
                                onChange={(e) => setDescripcion(e.target.value)}
                                placeholder="Atun Ebeba 500gs"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="precio_compra">Precio compra</label>
                                <input
                                type="text"
                                className="form-control"
                                id="precio_compra"
                                value={precio_compra}
                                onChange={(e) => setPrecio_compra(e.target.value)}
                                placeholder="20.20"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="precio_venta">Precio venta</label>
                                <input
                                type="text"
                                className="form-control"
                                id="precio_venta"
                                value={precio_venta}
                                onChange={(e) => setPrecio_venta(e.target.value)}
                                placeholder="24.20"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="precio_venta">Precio venta</label>
                                <input
                                type="text"
                                className="form-control"
                                id="precio_venta"
                                value={precio_venta}
                                onChange={(e) => setPrecio_venta(e.target.value)}
                                placeholder="24.20"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="preciodollar">Precio Dollar</label>
                                <input
                                type="text"
                                className="form-control"
                                id="preciodollar"
                                value={preciodollar}
                                onChange={(e) => setPreciodollar(e.target.value)}
                                placeholder="5.00"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="referventa">Referencia Venta</label>
                                <input
                                type="text"
                                className="form-control"
                                id="referventa"
                                value={referventa}
                                onChange={(e) => setReferventa(e.target.value)}
                                placeholder="7.00"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="refercompra">Referencia Compra</label>
                                <input
                                type="text"
                                className="form-control"
                                id="refercompra"
                                value={refercompra}
                                onChange={(e) => setRefercompra(e.target.value)}
                                placeholder="6.50"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="iva">I.V.A.</label>
                                <input
                                type="text"
                                className="form-control"
                                id="iva"
                                value={iva}
                                onChange={(e) => setIva(e.target.value)}
                                placeholder="16"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="iva">UND</label>
                                <input
                                type="text"
                                className="form-control"
                                id="und"
                                value={und}
                                onChange={(e) => setUnd(e.target.value)}
                                placeholder="UND"
                                />
                            </div>
                            <div className="form-group">
                                <label htmlFor="existencia">Existencia</label>
                                <input
                                type="text"
                                className="form-control"
                                id="existencia"
                                value={existencia}
                                onChange={(e) => setExistencia(e.target.value)}
                                placeholder="100"
                                />
                            </div>
                            <div className="form-group mt-3">
		                        <button className="btn btn-success">Guardar</button>
		                        <Link href={url + "/indexReact"} className="btn btn-primary">Volver al listado</Link>
		                    </div>
                        </form>
                    </div>
                </div>
            </Fragment>
            )
}

export default Edit;