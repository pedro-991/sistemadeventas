import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Impreso = ({ url }) => {
    
   

    return(
        <div>
            <Link href={url + "/reportesReact"} className="btn btn-primary">Volver a reportes</Link>
            <h1>Reporte impreso</h1>
        </div>
    )

}

export default Impreso