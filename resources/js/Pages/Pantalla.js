import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Pantalla = ({ url, message }) => {
    
   

    return(
        <div>
            <Link href={url + "/"} className="btn btn-primary">Volver</Link>
            <h1>{message}</h1>
        </div>
    )

}

export default Pantalla