import { Inertia } from '@inertiajs/inertia';
import React, { Fragment, useState } from 'react'
import { Link } from '@inertiajs/inertia-react'
import Model from './model.js';
import View from './view.js';


const Vender = ({ url, taza, empresa }) => {

  const [buscar_producto, setBuscar_producto] = useState('')
  const [buscar_cliente, setBuscar_cliente] = useState('')
  const [name_cliente, setName_cliente] = useState('')
  const [id_cliente, setId_cliente] = useState('')

  let variablea = 1;

  document.addEventListener('inertia:finish', (event) => {
    
    const model = new Model();
    const view = new View();
    model.setView(view);
    view.setModel(model);

    /* view.render(); */

    view.renderEnlace(variablea);

    
    setTimeout(() => {
        
      model.resetContador();
      
    }, 5000);
  })

  function demorar() {
    const model = new Model();
    const view = new View();
    model.setView(view);
    view.setModel(model);
    setTimeout(() => {
        
      model.resetContador();
      
    }, 10000);
    
  }

  function buscar(e) { 
    
                           

                          if (e.key === "Enter") {

                                    

                                    $.ajaxSetup({
                                      headers: {
                                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                        }
                                    });

                                

                                    $.ajax({
                                        url: url + '/productocodigo',
                                        type: 'POST',
                                        data:  {txtcodigo : buscar_producto},
                                        success: function (datos) {
                                          if (datos.estado) {
                                            $("#contentTable").html(datos.html);
                                            openmodal();
                                            console.log(datos.estado);
                                          } else {
                                            if (datos.html != null) {
                                              console.log(datos.html[0]);
                                              console.log(datos.estado);

                                              let btnAdd = document.getElementById('add');
                                              let myInputTitle = document.getElementById('title');
                                              let myInputCod = document.getElementById('codigoTdl');
                                              let myInputDescrip = document.getElementById('description');
                                              let myInputPrec = document.getElementById('precioTdl');
                                              let myInputCant = document.getElementById('cantidadTdl');
                                              let myInputIva = document.getElementById('ivaTdl');
                                              let myInputUnd = document.getElementById('typeUnd');
                                              let myInputReferVenta = document.getElementById('referVenta');
                                              let myInputReferCompra = document.getElementById('referCompra');
                                              let myInputPrecioIva = document.getElementById('precioConIva');
                                              let myInputCodigoTest = document.getElementById('codigotest');

                                              myInputTitle.value = datos.html[0].id;
                                              myInputCod.value = datos.html[0].codigo_barras;
                                              myInputDescrip.value = datos.html[0].descripcion;
                                              myInputPrec.value = datos.html[0].precio_venta;
                                              myInputCant.value = "1";
                                              myInputIva.value = datos.html[0].iva;
                                              myInputUnd.value = datos.html[0].und;
                                              myInputReferVenta.value = datos.html[0].referventa;
                                              myInputReferCompra.value = datos.html[0].refercompra;
                                              myInputPrecioIva.value = (datos.html[0].precio_venta * ( 1 + (datos.html[0].iva/100))).toFixed(2);

                                              myInputCodigoTest.value = "";

                                              btnAdd.click();
                                            } else {
                                              console.log("producto no encontrado");
                                            }
                                          }
                                        
                                        }
                                    });
                                


                          }
    
  } 

  function agregarCliente() {

    let inputNombreCliente = document.getElementById('nombre_cliente_script').value;
    let inputDocumentoCliente = document.getElementById('documento_cliente_script');
    let inputDireccionCliente = document.getElementById('direccion_cliente_script');
    let alertCliente = document.getElementById('alert');

    let myInputCliente = document.getElementById('id_cliente');
    let myInputClienteNombre = document.getElementById('nombre_cliente');
    

    if (inputNombreCliente != "" && inputDocumentoCliente.value != "") {

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

            $.ajax({
                url: url + '/storeJavascript',
                type: 'POST',
                data:  {
                    nombre : inputNombreCliente,
                    documento : inputDocumentoCliente.value,
                    telefono : "0000-0000000",
                    direccion : inputDireccionCliente.value
                },
                success: function (datos) {
                    inputDocumentoCliente.value = "";
                    inputDireccionCliente.value = "";
                    alertCliente.innerText = "Cliente agregado con exito";
                    alertCliente.classList.remove('d-none');
                    console.log(datos);
                    setId_cliente(datos.id)
                    setName_cliente(datos.nombre)
                    myInputCliente.value = datos.id;
                    myInputClienteNombre.value = datos.nombre;
                    
                }
            });
            return false;

            } else {
                alertCliente.innerText = "Nombre y documento del cliente son obligatorios";
                alertCliente.classList.remove('d-none');
            }


  }

  function buscarCliente(e) { 

              if (e.key === "Enter") {

                    

                $.ajaxSetup({
                    headers: {
                          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                      }
                  });

                $.ajax({
                    url: url + '/clienteFiltro',
                    type: 'POST',
                    data:  {
                      txtcodigo : buscar_cliente,
                      acceso : 0
                    },
                    success: function (datos) {
                        $("#contentTable").html(datos);
                        //openmodal();
                        $('#exampleModal').modal('toggle');
                    }
                });
                return false;




              }



  }

  function guardarVenta() {

    var myTableArray = [];
    let inputIdCliente = document.getElementById('id_cliente');
    let inputNameCliente = document.getElementById('nombre_cliente');
    //let inputTypeUnd = document.getElementById('typeUnd').value;
    //let botonCancelarVenta = document.getElementById('btnCancelarVenta');
    let alertVentaGuardada = document.getElementById('alert');


if (inputNameCliente.value === "") 
{
    alertVentaGuardada.innerText = "El nombre del cliente es obligatorio";
    alertVentaGuardada.classList.remove('d-none');
} else
        {

                    $("table#table tr").each(function() {
                        var arrayOfThisRow = [];
                        var tableData = $(this).find('td');
                        if (tableData.length > 0) {
                            tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                            myTableArray.push(arrayOfThisRow);
                        }
                    });

                    //console.log(myTableArray);
    
                    $.ajaxSetup({
                        headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                            }
                        });
    
                    $.ajax({
                        url: url + '/guardarVenta',
                        type: 'POST',
                        data:  {
                            id_cliente : inputIdCliente.value,
                            productos : myTableArray
                        },
                        success: function (datos) {
                            //botonCancelarVenta.click();
                            //aqui puedo remover la class hide de un alert
                            //para avisar que la venta esta guardada
                            alertVentaGuardada.innerText = "Presupuesto guardado con exito";
                            alertVentaGuardada.classList.remove('d-none');
                        }
                    });

                    
                    return false;

        }

    }

    function cargarVenta() {

            $.ajaxSetup({
              headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: url + '/indexOnModal',
                type: 'GET',
                success: function (datos) {
                    $("#contentTable").html(datos);
                    openmodal();
                    /* aqui presiona el radio */
                    /* aqui haz click en el boton agregar */
                }
            });


    }

    function terminarVenta() {

      var myTableArray = [];
        let inputIdCliente = document.getElementById('id_cliente').value;
        let inputNameCliente = document.getElementById('nombre_cliente').value;
        let inputTypeUnd = document.getElementById('typeUnd').value;
        let botonCancelarVenta = document.getElementById('btnCancelarVenta');
        let alertVentaGuardada = document.getElementById('alert');
        let btnGuardarPresupuesto = document.getElementById('btnGuardarVenta');
        let efectivo1 = document.getElementById('efectivo1').value;
        let totalBs = document.getElementById('totalBs').value; //total + iva



    if (inputNameCliente === "") 
    {
        alertVentaGuardada.innerText = "El nombre del cliente es obligatorio";
        alertVentaGuardada.classList.remove('d-none');
    } else
            {

                

                $("table#table tr").each(function() {
                    var arrayOfThisRow = [];
                    var tableData = $(this).find('td');
                    if (tableData.length > 0) {
                        tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                        myTableArray.push(arrayOfThisRow);
                    }
                });

                //console.log(myTableArray);
  
                $.ajaxSetup({
                    headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        }
                    });
  
                $.ajax({
                    url: url + '/terminarVenta',
                    type: 'POST',
                    data:  {
                        id_cliente : inputIdCliente,
                        efectivo : efectivo1,
                        total : totalBs,
                        productos : myTableArray
                    },
                    success: function (datos) {
                        //$("#tablaVenta").html(datos);
                        btnGuardarPresupuesto.click();
                        botonCancelarVenta.click();
                    }
                });

                return false;

            }

    }

    function calcularIgtf() {

      let divisa1 = document.getElementById('divisa1').value;
        let efectivo1 = document.getElementById('efectivo1');
        let igtf = document.getElementById('igtf');
        let tazaNow = document.getElementById('tazaNow').value;
        let totalBs = document.getElementById('totalBs').value; //total + iva
        let montoBs = (divisa1 * tazaNow).toFixed(2); //divisa 1 en bs
        let totalPagar = document.getElementById('totalPagar'); // input para mostrar total + iva + igtf

        //let montoIgtf = (montoBs * 0.03).toFixed(2);

        if (parseFloat(montoBs) < parseFloat(totalBs)) {
                console.log("soy caso 1")
                efectivo1.value = (totalBs - montoBs).toFixed(2);
                igtf.value = (montoBs * 0.03).toFixed(2);
                totalPagar.value = (parseFloat(totalBs) + parseFloat(montoBs * 0.03)).toFixed(2);
        } else if (parseFloat(montoBs) > parseFloat(totalBs)) {
                console.log("soy caso 2")
                efectivo1.value = (totalBs - montoBs).toFixed(2);
                igtf.value = (totalBs * 0.03).toFixed(2);
                totalPagar.value = (parseFloat(totalBs) + parseFloat(totalBs * 0.03)).toFixed(2);
        } else {
                console.log("soy caso 3")
                efectivo1.value = (totalBs - montoBs).toFixed(2);
                igtf.value = (montoBs * 0.03).toFixed(2);
                totalPagar.value = (parseFloat(totalBs) + parseFloat(montoBs * 0.03)).toFixed(2);
          }

        

    }

 

    return(
        <Fragment>




            <div className="">





                        <div className="row">
                                <div className="col-12">
                                              <h3>{empresa} <i className="fa fa-cart-plus"></i></h3>
                                              
                                              <div className="row">
                                                  <div className="col-12 col-md-6">

                                                                <div className="row">
                                                                    <div className="form-group col-md-5">
                                                                        <label htmlFor="">Nombre</label>
                                                                        <input className="form-control" name="nombre_cliente_script" id="nombre_cliente_script" autocomplete="off"/>
                                                                    </div>

                                                                    <div className="form-group col-md-5">
                                                                        <label htmlFor="">RIF/CI</label>
                                                                        <input className="form-control" name="documento_cliente_script" id="documento_cliente_script" autocomplete="off"/>
                                                                    </div>
                                                                    
                                                                </div>

                                                                <div className="row">
                                                                    <div className="form-group col-md-10">
                                                                        <label htmlFor="">Dirección</label>
                                                                        <input className="form-control" name="direccion_cliente_script" id="direccion_cliente_script" autocomplete="off"/>
                                                                    </div>
                                                                    <div className="form-group col-md-2">
                                                                    <label htmlFor=""></label>
                                                                    <input name="" id="btnAgregarCliente" value="Agregar" type="button" className="btn btn-success"
                                                                    onClick={agregarCliente}/>
                                                                    </div>
                                                                </div>
                                                      
                                                                <div className="row">
                                                                    <div className="form-group col-md-6">
                                                                        <label htmlFor="id_cliente">Cliente</label>
                                                                        
                                                                        <input className="form-control" 
                                                                        type="hidden" name="id_cliente" 
                                                                        id="id_cliente" 
                                                                        value={id_cliente} 
                                                                        onClick={e=>setId_cliente(e.target.value)}
                                                                        />

                                                                        <input className="form-control" 
                                                                        name="nombre_cliente" 
                                                                        id="nombre_cliente" 
                                                                        value={name_cliente} 
                                                                        onClick={e=>setName_cliente(e.target.value)}
                                                                        readonly/>
                                                                    </div>

                                                                    <div className="form-group col-md-6">
                                                                        <label htmlFor="buscarCliente">Buscar Cliente</label>
                                                                        <input className="form-control" 
                                                                        name="buscarCliente" 
                                                                        id="buscarCliente" 
                                                                        onChange={e=>setBuscar_cliente(e.target.value)}
                                                                        onKeyDown={buscarCliente}
                                                                        autocomplete="off"/>
                                                                    </div>
                                                                </div>
                                                  </div> {/* col-12 col-md-6 */}

                                                  <div className="col-12 col-md-6">
                                                          <input type="hidden" id="btnModal" className="" data-bs-toggle="modal" data-bs-target="#exampleModal"/>
                                                          <input type="hidden" id="btnCloseModal" data-bs-dismiss="modal" data-bs-target="#exampleModal" />
                                                          
                                              
                                                          <label htmlFor="codigotest">Buscar</label>
                                                          <input id="codigotest" autocomplete="off" name="codigotest" type="text"
                                                                className="form-control"
                                                                placeholder="Jabon"
                                                                onChange={e=>setBuscar_producto(e.target.value)}
                                                                onKeyDown={buscar}/>

                                                                <input id="typeUnd" autocomplete="off" name="typeUnd" type="hidden"
                                                                className="form-control"/>


                                                                  {/* <div class="row"> */}

                                                                 
                                                            <div className="row">
                                                              <h2>FORMA DE PAGO</h2>
                                                            </div>
                                                            <div className="row">
                                                              <div className="col-md-3">
                                                                <label htmlFor="">DIVISA 1</label>
                                                              </div>
                                                              <div className="col-md-6">
                                                                  <input id="divisa1" autocomplete="off" name="" type="number"
                                                                    
                                                                        className="form-control"
                                                                        placeholder=""
                                                                        onKeyUp={calcularIgtf}/>
                                                              </div>
                                                            </div>
                                                            <div className="row">
                                                              <div className="col-md-3">
                                                                <label htmlFor="">EFECTIVO 1</label>
                                                              </div>
                                                              <div className="col-md-6">
                                                                  <input id="efectivo1" autocomplete="off" name="efectivo1" type="text"
                                                                        
                                                                        className="form-control"
                                                                        placeholder=""
                                                                        readonly/>
                                                              </div>
                                                            </div>
                                                            <div className="row">
                                                              <div className="col-md-3">
                                                                <label htmlFor="">I.G.T.F. 3%</label>
                                                              </div>
                                                              <div className="col-md-6">
                                                                  <input id="igtf" autocomplete="off" name="" type="text"
                                                                        
                                                                        className="form-control"
                                                                        placeholder=""
                                                                        readonly/>
                                                              </div>
                                                            </div>
                                                            <div className="row">
                                                              <div className="col-md-3">
                                                                <label htmlFor="">Total a pagar: </label>
                                                              </div>
                                                              <div className="col-md-6">
                                                                  <input id="totalPagar" autocomplete="off" name="" type="text"
                                                                        
                                                                        className="form-control"
                                                                        placeholder=""
                                                                        readonly/>
                                                              </div>
                                                            </div>
                            


                                                                  {/* </div> */}

                                                  </div> {/* col-12 col-md-6 */}

                                            </div> {/* row */}          
                                </div> {/* col-12 */}



                                            
                          </div> {/* row */}

                            <div className="row">
                                      <div className="form-group">
                                                          <input name="accion" id="btnTerminarVenta" 
                                                          value="Terminar Venta" type="button" 
                                                          className="btn btn-warning"
                                                          onClick={terminarVenta}
                                                          />

                                                          <input name="accion" id="btnGuardarVenta" 
                                                          value="Guardar Presupuesto" type="button" 
                                                          className="btn btn-success"
                                                          onClick={guardarVenta}
                                                          />

                                                          <input name="accion" id="btnCargarVenta" 
                                                          value="Cargar Presupuesto" type="button" 
                                                          className="btn btn-success"
                                                          onClick={cargarVenta}/>
                                                          
                                                          <input name="accion2" id="btnCancelarVenta" value="Cancelar" type="button" className="btn btn-danger"/>
                                      </div>

                            </div>
                            <h5>
                                <div className="row">
                                        <div className="col-md-2" id="ivaTotal">I.V.A.: Bs 0</div>
                                        <input style={{ width: "20%" }} id="tazaNow" value={taza}
                                        autocomplete="off" name="" type="text"
                                        className="col-md-3 form-control"
                                        placeholder="" readonly/>
                                </div>
                            </h5>
                            <h2><div className="row"><div className="col-md-3" id="h2Total">Total: Bs 0</div><div className="col-md-3" id="h2TotalDollar">Total: $ 0</div></div></h2>
                            <input type="hidden" id="totalBs" name="totalBs" />
                        
                    

                      <div className="row">
                      
                              
                      
                                <div className="alert alert-danger d-none" role="alert" id="alert">
                                A simple danger alert—check it out!
                                </div>

                              <div>
                                    <form> 
                                      <div className="row">
                                      
                                                      <input
                                                        type="hidden"
                                                        id="referVenta"
                                                        className="form-control ml-sm-2 col-md-6"
                                                        placeholder=""
                                                        readonly
                                                      />

                                                      <input
                                                        type="hidden"
                                                        id="referCompra"
                                                        className="form-control ml-sm-2 col-md-6"
                                                        placeholder=""
                                                        readonly
                                                      />
                                                      
                                                      <input
                                                        type="hidden"
                                                        id="title"
                                                        className="form-control ml-sm-2 col-md-6"
                                                        placeholder="Learn JS"
                                                        readonly
                                                      />
                                                  
                                                  
                                                      
                                                        <input
                                                          type="hidden"
                                                          id="codigoTdl"
                                                          className="form-control ml-sm-2 col-md-6"
                                                          placeholder="Learn JS"
                                                          readonly
                                                        />
                                                  
                                                  <div className="">
                                                    <div className=""> 
                                                      
                                                      <input
                                                        type="hidden"
                                                        id="description"
                                                        className="form-control ml-sm-2 col-md-6"
                                                        placeholder=""
                                                        readonly
                                                      />
                                                    </div>
                                                  </div>
                                                  <div className="">
                                                    <div className=""> 
                                                      
                                                      <div className="">
                                                        <div className="">
                                                          <input
                                                            type="hidden"
                                                            id="precioTdl"
                                                            className="col-md-9"
                                                            placeholder=""
                                                            autocomplete="off"
                                                          />
                                                          <input type="hidden" id="roundIva" className="btn btn-success col-md-3" value="+" />
                                                            
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div className="">
                                                    <div className=""> 
                                                      
                                                      <input
                                                        type="hidden"
                                                        id="precioConIva"
                                                        className="form-control ml-sm-2 col-md-6"
                                                        placeholder=""
                                                        readonly
                                                      />
                                                    </div>
                                                  </div>
                                                  <div className="">
                                                    <div className=""> 
                                                      
                                                      <input
                                                        type="hidden"
                                                        id="cantidadTdl"
                                                        className=""
                                                        placeholder=""
                                                      />
                                                    </div>
                                                  </div>

                                                  <div className="">
                                                    <div className=""> 
                                                      
                                                      <input
                                                        type="hidden"
                                                        id="ivaTdl"
                                                        className=""
                                                        placeholder=""
                                                        readonly
                                                      />
                                                    </div>
                                                  </div>
                                        
                                        
                                                  <div className="">
                                                    <input type="hidden" 
                                                    className="btn btn-success" 
                                                    id="add" value="Agregar"
                                                    />
                                                    
                                                  </div>
                                      </div>
                                    </form>
                                </div>

                                  <div className="table-responsive" style={{ height: "300px"}}>
                                    <table className="table table-sm table-dark table-striped" id="table"
                                    style={{ overflowY: "auto", overflowX: "hidden"}}>
                                      <thead>
                                        <tr>
                                          {/* <th scope="col">ID</th> */}
                                          <th scope="col">Item</th>
                                          <th scope="col">Código</th>
                                          <th scope="col">Description</th>
                                          <th scope="col">Precio</th>
                                          <th scope="col">Cantidad</th>
                                          <th scope="col">I.V.A.</th>
                                          <th scope="col">UND</th>
                                          <th scope="col">TOTAL</th>
                                        
                                          <th scope="col">PRECIO+IVA</th>
                                          <th scope="col"></th>
                                        </tr>
                                      </thead>
                                      <tbody id="tablaVenta">
                                        {/* here codec generated with javascript */}
                                      </tbody>
                                    </table>
                                  </div>
                    </div>




      
      


        </div> {/* container */}












         
            

      </Fragment>
    )

}

export default Vender