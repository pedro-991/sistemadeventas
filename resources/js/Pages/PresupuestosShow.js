import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const PresupuestosShow = ({ venta, total, totalIva, url, htmlPresupuesto }) => {
    
   

   let productosPagina = 10;

   let repetirFor = Math.ceil(venta.productos.length / productosPagina);

   console.log(productosPagina);

   console.log(repetirFor);

 

    return(
        <div className="row">
        <div className="col-12">
            <h1>Presupuesto #{ venta.id }</h1>
           
            <Link className="btn btn-info" href={url + "/docEsperaIndexReact"}>
                <i className="fa fa-arrow-left"></i>&nbsp;Volver
            </Link>
            <a className="btn btn-success" href="javascript:printInvoice()">
                <i className="fa fa-print"></i>&nbsp;Imprimir
            </a>
            
            <h2>Productos</h2>
            
            <div id="divFactura" 
            dangerouslySetInnerHTML={{ __html: htmlPresupuesto }}
            />

        </div>
    </div>
    )

}

export default PresupuestosShow