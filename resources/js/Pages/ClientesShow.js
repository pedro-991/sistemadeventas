import React, { Fragment, useState } from 'react'
import { Link } from '@inertiajs/inertia-react'


const ClientesShow = ({ clientes, url }) => {

    

  const BuscarReact = () => {

    var tabla = document.getElementById('tblProducto');
    var busqueda = document.getElementById('txtBusqueda').value.toLowerCase();
    var cellsOfRow="";
    var found=false;
    var compareWith="";
    for (var i = 1; i < tabla.rows.length; i++) {
        cellsOfRow = tabla.rows[i].getElementsByTagName('td');
        found = false;
        for (var j = 0; j < cellsOfRow.length && !found; j++) { compareWith = cellsOfRow[j].innerHTML.toLowerCase(); if (busqueda.length == 0 || (compareWith.indexOf(busqueda) > -1))
            {
                found = true;
            }
        }
        if(found)
        {
            tabla.rows[i].style.display = '';
        } else {
            tabla.rows[i].style.display = 'none';
        }
    }

  }


    
   

    return(
        <Fragment>
            <div className="row">
                <h1 className="col-md-3">Clientes <i class="fa fa-box"></i></h1>
                <h2 className="col-md-3">{clientes.length}</h2>
            </div>
            <div className="row">
                <Link href={url + "/createClienteInertia"} className="btn btn-success mb-2 col-md-2">Agregar</Link>
                
            </div>
            <div className="row">
                <input style={{ width: "30%" }} type="text" name="txtBusqueda" id="txtBusqueda" className="col-md-3 form-control" onKeyUp={BuscarReact} placeholder="Busqueda"autoFocus/>

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
           {clientes.map((cliente) => (
            <tr key={cliente.id}>
              <td>{ cliente.nombre }</td>
              <td>{ cliente.documento }</td>
              <td>{ cliente.telefono }</td>
              <td>{ cliente.direccion }</td>
              <td>
              <Link className="btn btn-warning"
               href={url + "/editClienteReact/" + cliente.id}>
                <i class="fa fa-edit"></i>
              </Link>
              </td>
              <td>
              <Link className="btn btn-danger"
               href={url + "/deleteClienteReact/" + cliente.id}>
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

export default ClientesShow