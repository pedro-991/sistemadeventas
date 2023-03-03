import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Presupuestos = ({ ventas, url }) => {

    function handleClick(venta) { 
    
        console.log(venta) 
        
      } 
    
   

    return(
        <div className="row">
        <div className="col-12">
            <h1>Presupuestos Guardados <i className="fa fa-list"></i></h1>
            <Link className="btn btn-info" href={url + "/docEsperaIndexReact"}>
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
                                <Link className="btn btn-success"
                                    href={url + "/docEsperaShowReact/" + venta.id}>
                                    <i className="fa fa-info"></i>
                                </Link>
                            </td>
                            <td>
                                <Link className="btn btn-danger"
                                    href={url + "/docEsperaDestroyReact/" + venta.id}>
                                    <i class="fa fa-trash"></i>
                                </Link>
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

export default Presupuestos