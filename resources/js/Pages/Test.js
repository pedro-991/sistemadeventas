import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Impreso = ({ url, mensaje, efectivo, total, venta }) => {
    
   console.log(venta);

    return(
        <div>
            <Link href={url + "/ventaIndexReact"} className="btn btn-primary">Volver a reportes</Link>
            <h1>Test IGTF</h1>
            <h1>{mensaje}</h1>
            <p>{efectivo + " y " + total}</p>
        </div>
    )

}

export default Impreso