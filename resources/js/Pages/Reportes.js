import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Reportes = ({ url }) => {
    
   

    return(
        <div>
            <h1>Reportes <i class="fa fa-list"></i></h1>
            <p><Link href={url + "/reporteXReact"} className="btn btn-info">
                Reporte X
            </Link></p>
            <p><Link href={url + "/reporteZReact"} className="btn btn-info">
                Reporte Z
            </Link></p>

            
        </div>
    )

}

export default Reportes