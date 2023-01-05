import React, { Fragment } from 'react'
import { Link } from '@inertiajs/inertia-react'


const ShowProducts = ({ products }) => {

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
                <h1 className="col-md-3">Productos <i class="fa fa-box"></i></h1>
                <h2 className="col-md-3">#Productos</h2>
            </div>
            <div className="row">
                <Link href="/MDclonado/sistema_ventas_laravel/public/createInertia" className="btn btn-success mb-2 col-md-2">Agregar</Link>
                <button id="btnActualizar" className="btn btn-success mb-2 col-md-2" disabled>Actualizar</button>
                <input style={{ width: "20%" }}  id="tazaNow" autoComplete="off" name="" type="text"
                                        className="col-md-3 form-control"
                                        placeholder="" readOnly/>
            </div>
            <div className="row">
                <input style={{ width: "30%" }} id="inputActualizar" autoComplete="off" name="" type="text"
                                    className="col-md-3 form-control"
                                    placeholder="10.69"/>
                <input style={{ width: "30%" }} type="text" name="txtBusqueda" id="txtBusqueda" className="col-md-3 form-control" onKeyUp={BuscarReact} placeholder="Busqueda"autoFocus/>

            </div>            
        <table id="tblProducto" className="table table-bordered">
          <thead>
           <tr>
            <th>Codigo</th>
            <th>Description</th>
            <th>Precio</th>
            <th>Action</th>
           </tr>
          </thead>
          <tbody>
           {products.map((product) => (
            <tr key={product.id}>
              <td>{ product.codigo_barras }</td>
              <td>{ product.descripcion }</td>
              <td>{ product.precio_venta }</td>
              <td>
              <Link className="btn btn-primary"
               href="/">
                Edit
              </Link>
              </td>
            </tr>
           ))}
          </tbody>
      
      
      
       </table>
      </Fragment>
    )

}

export default ShowProducts