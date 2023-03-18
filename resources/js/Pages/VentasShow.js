import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const VentasShow = ({ venta, url, htmlPresupuesto }) => {
    

 

    return(
        <div className="row">
        <div className="col-12">
            <h1>Venta #{ venta.id }</h1>
           
            <Link className="btn btn-info" href={url + "/ventaIndexReact"}>
                <i className="fa fa-arrow-left"></i>&nbsp;Volver
            </Link>
            <a className="btn btn-success" href="javascript:printInvoice()">
                <i className="fa fa-print"></i>&nbsp;Imprimir
            </a>
            
            
            <div id="divFactura" 
            dangerouslySetInnerHTML={{ __html: htmlPresupuesto }}
            />

        </div>
    </div>
    )

}

export default VentasShow