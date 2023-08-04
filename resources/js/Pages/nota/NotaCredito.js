import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const NotaCredito = ({ url, message, ventas }) => {
    
   /* console.log('hola desde nota de credito'); */

   const printed = true;
   const nota = true;

    return(
        <div className="row">
        <div className="col-12">
            <h1>Nota de Credito <i className="fa fa-list"></i></h1>
            {/* <h5>{message}</h5> */}
            <Link className="btn btn-info" href={url + "/notaCredito"}>
                &nbsp;Actualizar
            </Link>
            {/* aqui debe ir una notificacion */}
            <div className="table-responsive">
                <table className="table table-bordered">
                    <thead>
                    <tr>
                        <th>Fecha</th>
                        <th>Cliente</th>
                        <th>Total</th>
                        <th>Ticket</th>
                        <th>Detalles</th>
                        <th>Eliminar</th>
                    </tr>
                    </thead>
                    <tbody>


                    {ventas.map((venta) => (
                        <tr key={venta.id}>
                            <td>{ new Date(venta.created_at).toLocaleString() }</td>
                            <td>{ venta.nombre }</td>
                            <td>{ parseFloat(venta.total).toFixed(2) }</td>
                            <td>
                                {/* <Link className="btn btn-info"
                                    href={url + "/notaCreditoPrint/" + venta.id}>
                                    <i class="fa fa-print"></i>
                                </Link> */}  
                                {venta.printed && !venta.nota ? <Link className="btn btn-info"
                                    href={url + "/notaCreditoPrint/" + venta.id}>
                                    <i class="fa fa-print"></i>
                                </Link> : <Link className="btn btn-info"
                                    href={url + "/notaCredito"}>
                                    <i class="fa fa-print"></i>
                                </Link>}  
                            </td>
                            <td>
                                <Link className="btn btn-success"
                                    href={url + "/ventasShowReact/" + venta.id}>
                                    <i className="fa fa-info"></i>
                                </Link>
                            </td>
                            <td>
                                Destroy
                            </td>
                        </tr>
                    ))}



                    </tbody>
                </table>
            </div>
        </div>
    </div>
    )

}

export default NotaCredito