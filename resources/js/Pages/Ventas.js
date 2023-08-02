import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Ventas = ({ ventas, url }) => {

    function handleClick(venta) { 
    
        console.log(venta) 
        
      } 

      const imprimida = false;

      const LinkDisabled = `

        <Link className="btn btn-info"
            href={url + "/ventaIndexReact"}>
            <i class="fa fa-print"></i>
        </Link>

      `;

      const LinkEnabled = `

        <Link className="btn btn-info"
            href={url + "/ticketTestReact/" + venta.id}>
            <i class="fa fa-print"></i>
        </Link>

      `;
    
   

    return(
        <div className="row">
        <div className="col-12">
            <h1>Ventas <i className="fa fa-list"></i></h1>
            <Link className="btn btn-info" href={url + "/ventaIndexReact"}>
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
                                    href={url + "/ticketTestReact/" + venta.id}>
                                    <i class="fa fa-print"></i>
                                </Link>  */}   
                                {/* <Link className="btn btn-info"
                                    href={url + "/ventaIndexReact"}>
                                    <i class="fa fa-print"></i>
                                </Link> */}
                                {venta.printed ? <Link className="btn btn-info"
                                    href={url + "/ventaIndexReact"}>
                                    <i class="fa fa-print"></i>
                                </Link> : <Link className="btn btn-info"
                                    href={url + "/ticketTestReact/" + venta.id}>
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
                                <Link className="btn btn-danger"
                                    href={url + "/ventaDestroyReact/" + venta.id}>
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

export default Ventas