import React from 'react'
import { Link } from '@inertiajs/inertia-react'


const Respaldar = ({ url, campos }) => {
    
    document.addEventListener('inertia:success', (event) => {
    
        //console.log(campos);

      })

    return(
        <div>
            <h1>Respaldo <i class="fa fa-list"></i></h1>
            <p><Link href={url + "/respaldar"} className="btn btn-info">
                Respaldar BD completa
            </Link></p>
            {/* <p><Link href={url + "/"} className="btn btn-info">
                Respaldar tabla 1
            </Link></p> */}

            
        </div>
    )

}

export default Respaldar