import React, { Fragment, useState } from 'react'
import { Link } from '@inertiajs/inertia-react'


const ShowProducts = ({ products, url, taza }) => {

    const [taza_nueva, setTaza_nueva] = useState('')


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

  const wsort = () => {

    w3.sortHTML('#tblProducto', '.item', 'td:nth-child(2)')

  }


    
   

    return(
        <Fragment>
          <div className=''>
            <div className="row">
                <h1 className="col-md-3">Productos <i class="fa fa-box"></i></h1>
                <h2 className="col-md-3">{products.length}</h2>
            </div>
            <div className="row">
                <Link href={url + "/createInertia"} className="btn btn-success mb-2 col-md-2">Agregar</Link>
                <Link id="btnActualizarInertia" href={url + "/updateTazaInertia/" + taza_nueva} className="btn btn-success mb-2 col-md-2">Actualizar</Link>
                <input style={{ width: "20%" }}  id="tazaNow" autoComplete="off" name="" type="text"
                                        value={taza}
                                        className="col-md-3 form-control"
                                        placeholder="" readOnly/>
            </div>
            <div className="row">
                <input style={{ width: "30%" }} id="" autoComplete="off" name="" type="text"
                                    className="col-md-3 form-control"
                                    placeholder="10.69"
                                    value={taza_nueva}
                                    onChange={(e) => setTaza_nueva(e.target.value)}
                                    />
                <input style={{ width: "30%" }} type="text" name="txtBusqueda" id="txtBusqueda" className="col-md-3 form-control" onKeyUp={BuscarReact} placeholder="Busqueda"autoFocus/>

            </div>            
        <table id="tblProducto" className="table table-bordered">
          <thead>
           <tr>
            <th>Codigo</th>
            <th onClick={wsort} style={{ cursor: "pointer" }}>Description</th>
            <th>Precio</th>
            <th>Existencia</th>
            <th>Editar</th>
            <th>Eliminar</th>
           </tr>
          </thead>
          <tbody>
           {products.map((product) => (
            <tr key={product.id}>
              <td>{ product.codigo_barras }</td>
              <td>{ product.descripcion }</td>
              <td>{ product.precio_venta }</td>
              <td>{ product.existencia }</td>
              <td>
              <Link className="btn btn-warning"
               href={url + "/edit/" + product.id}>
                <i class="fa fa-edit"></i>
              </Link>
              </td>
              <td>
              <Link className="btn btn-danger"
               href={url + "/delete/" + product.id}>
                <i class="fa fa-trash"></i>
              </Link>
              </td>
            </tr>
           ))}
          </tbody>
      
      
      
       </table>

       </div>
      </Fragment>
    )

}

export default ShowProducts