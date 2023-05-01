import React, { Fragment, useState } from 'react'
import { Link } from '@inertiajs/inertia-react'


const Vender = ({ url }) => {

   

    return(
        <Fragment>




            <div className="container">





                        <div className="row">
                                <div className="col-12">
                                              <h1>Nueva venta <i className="fa fa-cart-plus"></i></h1>
                                              
                                              <div className="row">
                                                  <div className="col-12 col-md-6">

                                                                <div className="row">
                                                                    <div className="form-group col-md-5">
                                                                        <label htmlFor="">Nombre</label>
                                                                        <input className="form-control" name="nombre_cliente_script" id="nombre_cliente_script" value="" autocomplete="off"/>
                                                                    </div>

                                                                    <div className="form-group col-md-5">
                                                                        <label htmlFor="">RIF/CI</label>
                                                                        <input className="form-control" name="documento_cliente_script" id="documento_cliente_script" autocomplete="off"/>
                                                                    </div>
                                                                    <div className="form-group col-md-2">
                                                                    <label htmlFor=""></label>
                                                                    <input name="" id="btnAgregarCliente" value="Agregar" type="button" className="btn btn-success"/>
                                                                    </div>
                                                                </div>

                                                                <div className="row">
                                                                    <div className="form-group col-md-10">
                                                                        <label htmlFor="">Dirección</label>
                                                                        <input className="form-control" name="direccion_cliente_script" id="direccion_cliente_script" value="" autocomplete="off"/>
                                                                    </div>
                                                                </div>
                                                      
                                                                <div className="row">
                                                                    <div className="form-group col-md-6">
                                                                        <label htmlFor="id_cliente">Cliente</label>
                                                                        
                                                                        <input className="form-control" type="hidden" name="id_cliente" id="id_cliente" value=""/>
                                                                        <input className="form-control" name="nombre_cliente" id="nombre_cliente" value="" readonly/>
                                                                    </div>

                                                                    <div className="form-group col-md-6">
                                                                        <label htmlFor="buscarCliente">Buscar Cliente</label>
                                                                        <input className="form-control" name="buscarCliente" id="buscarCliente" autocomplete="off"/>
                                                                    </div>
                                                                </div>
                                                  </div> {/* col-12 col-md-6 */}
                                            </div> {/* row */}          
                                </div> {/* col-12 */}
                                              <div className="col-12 col-md-6">
                                                <input type="hidden" id="btnModal" className="" data-bs-toggle="modal" data-bs-target="#exampleModal"/>
                                                <input type="hidden" id="btnCloseModal" data-bs-dismiss="modal" data-bs-target="#exampleModal" />
                                                
                                          
                                                <label htmlFor="codigotest">Buscar</label>
                                                          <input id="codigotest" autocomplete="off" name="codigotest" type="text"
                                                                className="form-control"
                                                                placeholder="Jabon"/>

                                                                <input id="typeUnd" autocomplete="off" name="typeUnd" type="hidden"
                                                                className="form-control"/>
                                                </div> {/* col-12 col-md-6 */}
                          </div> {/* row */}

                            <div className="row">
                                      <div className="form-group">
                                                          <input name="accion" id="btnTerminarVenta" value="Terminar Venta" type="button" className="btn btn-warning"/>
                                                          <input name="accion" id="btnGuardarVenta" value="Guardar Presupuesto" type="button" className="btn btn-success"/>
                                                          <input name="accion" id="btnCargarVenta" value="Cargar Presupuesto" type="button" className="btn btn-success"/>
                                                          <input name="accion2" id="btnCancelarVenta" value="Cancelar" type="button" className="btn btn-danger"/>
                                      </div>

                            </div>
                            <h5>
                                <div className="row">
                                        <div className="col-md-2" id="ivaTotal">I.V.A.: Bs 0</div>
                                        <input style={{ width: "20%" }} id="tazaNow" autocomplete="off" name="" type="text"
                                        className="col-md-3 form-control"
                                        placeholder="" readonly/>
                                </div>
                            </h5>
                            <h2><div className="row"><div className="col-md-3" id="h2Total">Total: Bs 0</div><div className="col-md-3" id="h2TotalDollar">Total: $ 0</div></div></h2>
                              
                        
                    

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
                                                    <input type="hidden" className="btn btn-success" id="add" value="Agregar"/>
                                                    
                                                  </div>
                                      </div>
                                    </form>
                                </div>

                                  <div className="">
                                    <table className="table table-striped" id="table">
                                      <thead>
                                        <tr>
                                          <th scope="col">ID</th>
                                          <th scope="col">Código</th>
                                          <th scope="col">Description</th>
                                          <th scope="col">Precio</th>
                                          <th scope="col">Cantidad</th>
                                          <th scope="col">I.V.A.</th>
                                          <th scope="col">UND</th>
                                          <th scope="col">TOTAL</th>
                                        
                                          <th scope="col">PRECIO+IVA</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <div id="tablaVenta">
                                        </div>
                                      </tbody>
                                    </table>
                                  </div>
                    </div>




      
      


        </div> {/* container */}












         
            

      </Fragment>
    )

}

export default Vender