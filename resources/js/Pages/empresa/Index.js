import React, { Fragment, useState } from 'react'
import { Link } from '@inertiajs/inertia-react'


const Index = ({ empresas, url }) => {

    


    return(
        <Fragment>
            <div className="row">
                <h1 className="col-md-3">Empresa <i class="fa fa-box"></i></h1>
                <h2 className="col-md-3"></h2>
            </div>
            <div className="row">
                <Link href={url + "/empresaCreate"} className="btn btn-success mb-2 col-md-2">Agregar Empresa</Link>
                
            </div>
            <div className="row">
               
            </div>            
        <table id="tblProducto" className="table table-bordered">
          <thead>
           <tr>
            <th>Nombre</th>
            <th>RIF/CI</th>
            <th>Teléfono</th>
            <th>Dirección</th>
            <th>Editar</th>
            <th>Eliminar</th>
           </tr>
          </thead>
          <tbody>
            {empresas.map((empresa) => (
              <tr key={empresa.id}>
                <td>{ empresa.nombre }</td>
                <td>{ empresa.identificacion }</td>
                <td>{ empresa.telefono }</td>
                <td>{ empresa.direccion }</td>
                <td>
                <Link className="btn btn-warning"
                href={url + "/empresaEdit/" + empresa.id}>
                  <i class="fa fa-edit"></i>
                </Link>
                </td>
                <td>
                <Link className="btn btn-danger"
                href={url + "/empresa/"}>
                  <i class="fa fa-trash"></i>
                </Link>
                </td>
              </tr>
            ))} 
          </tbody>
      
      
      
       </table>
      </Fragment>
    )

}

export default Index