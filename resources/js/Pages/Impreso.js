import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Impreso = ({ url }) => {
    
   

    return(
        <div>
            <Link href={url + "/ventaIndexReact"} className="btn btn-primary">Volver al listado</Link>
            <h1>Ticket impreso</h1>
        </div>
    )

}

export default Impreso