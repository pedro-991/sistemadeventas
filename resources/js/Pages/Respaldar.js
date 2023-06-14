import React, { useState } from 'react'
import { Link } from '@inertiajs/inertia-react'


const Respaldar = ({ url, campos }) => {
    
    document.addEventListener('inertia:success', (event) => {
    
        //console.log(campos);

      })

    const [valuenow, setValuenow] = useState('0')
    const [labelnow, setLabelnow] = useState('0%')

    const actualizarBarra = () => {

      var progress = document.getElementById('progress');

        setTimeout(() => {
            
            setValuenow('12');
            progress.style.width = '12%';
            setLabelnow('12%');
            
        }, 2000);

        setTimeout(() => {
            
            setValuenow('25');
            progress.style.width = '25%';
            setLabelnow('25%');
            
        }, 5000);

        setTimeout(() => {
            
          setValuenow('37');
          progress.style.width = '37%';
          setLabelnow('37%');
          
        }, 10000);

        setTimeout(() => {
            
          setValuenow('50');
          progress.style.width = '50%';
          setLabelnow('50%');
          
        }, 15000);

        setTimeout(() => {
            
          setValuenow('62');
          progress.style.width = '62%';
          setLabelnow('62%');
          
        }, 20000);

        setTimeout(() => {
            
          setValuenow('75');
          progress.style.width = '75%';
          setLabelnow('75%');
          
        }, 25000);

        setTimeout(() => {
            
          setValuenow('87');
          progress.style.width = '87%';
          setLabelnow('87%');
          
        }, 30000);

        setTimeout(() => {
            
          setValuenow('100');
          progress.style.width = '100%';
          setLabelnow('100%');
          
        }, 35000);

        setTimeout(() => {
            
          location.href= url + "/respaldar";
          
        }, 30000);

        
    
      }

    return(
        <div>
            <h1>Respaldo <i className="fa fa-list"></i></h1>
            {/* <p><Link href={url + "/respaldar"} className="btn btn-info">
                Respaldar BD completa
            </Link></p> */}
            {/* <p><Link href={url + "/"} className="btn btn-info">
                Respaldar tabla 1
            </Link></p> */}
            {/* <p><Link href={url + "/respaldar"} className="btn btn-info">
                Test
            </Link></p> */}
            <p>
            <button className="btn btn-success" onClick={actualizarBarra}>Respaldar BD completa</button>
            </p>
            <div className="progress" role="progressbar" aria-label="Basic example" aria-valuenow={{valuenow}} aria-valuemin="0" aria-valuemax="100">
            <div className="progress-bar progress-bar-striped progress-bar-animated" id='progress' style={{width: "0%"}}>{labelnow}</div>
          </div>



            
        </div>
    )

}

export default Respaldar