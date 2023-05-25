{{--

  ____          _____               _ _           _
 |  _ \        |  __ \             (_) |         | |
 | |_) |_   _  | |__) |_ _ _ __ _____| |__  _   _| |_ ___
 |  _ <| | | | |  ___/ _` | '__|_  / | '_ \| | | | __/ _ \
 | |_) | |_| | | |  | (_| | |   / /| | |_) | |_| | ||  __/
 |____/ \__, | |_|   \__,_|_|  /___|_|_.__/ \__, |\__\___|
         __/ |                               __/ |
        |___/                               |___/

    Blog:       https://parzibyte.me/blog
    Ayuda:      https://parzibyte.me/blog/contrataciones-ayuda/
    Contacto:   https://parzibyte.me/blog/contacto/

    Copyright (c) 2020 Luis Cabrera Benito
    Licenciado bajo la licencia MIT

    El texto de arriba debe ser incluido en cualquier redistribucion
--}}
@extends("maestra")
@section("titulo", "Realizar venta")
@section("contenido")
    <div class="row">
        <div class="col-12">
            <h1>Nueva venta <i class="fa fa-cart-plus"></i></h1>
            @include("notificacion")
            <div class="row">
                <div class="col-12 col-md-6">

                        <div class="row">
                            <div class="form-group col-md-5">
                                <label for="">Nombre</label>
                                <input class="form-control" name="nombre_cliente_script" id="nombre_cliente_script" value="" autocomplete="off"/>
                            </div>

                            <div class="form-group col-md-5">
                                <label for="">RIF/CI</label>
                                <input class="form-control" name="documento_cliente_script" id="documento_cliente_script" autocomplete="off"/>
                            </div>
                            <div class="form-group col-md-2">
                            <label for=""></label>
                            <input name="" id="btnAgregarCliente" value="Agregar" type="button" class="btn btn-success"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-10">
                                <label for="">Dirección</label>
                                <input class="form-control" name="direccion_cliente_script" id="direccion_cliente_script" value="" autocomplete="off"/>
                            </div>
                        </div>
                    
                        <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="id_cliente">Cliente</label>
                                  <!-- <select required class="form-control" name="id_cliente" id="id_cliente">
                                      @foreach($clientes as $cliente)
                                          <option value="{{$cliente->id}}">{{$cliente->nombre}}</option>
                                      @endforeach
                                  </select> -->
                                  <input class="form-control" type="hidden" name="id_cliente" id="id_cliente" value=""/>
                                  <input class="form-control" name="nombre_cliente" id="nombre_cliente" value="" readonly/>
                              </div>

                              <div class="form-group col-md-6">
                                  <label for="buscarCliente">Buscar Cliente</label>
                                  <input class="form-control" name="buscarCliente" id="buscarCliente" autocomplete="off"/>
                              </div>
                          </div>
                            
                </div>
                      <div class="col-12 col-md-6">
                        <input type="hidden" id="btnModal" class="" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <input type="hidden" id="btnCloseModal" data-bs-dismiss="modal" data-bs-target="#exampleModal" />
                        <div id="contentDiv"></div>
                  
                        <label for="codigotest">Buscar</label>
                                  <input id="codigotest" autocomplete="off" name="codigotest" type="text"
                                        class="form-control"
                                        placeholder="Jabon">

                                        <input id="typeUnd" autocomplete="off" name="typeUnd" type="hidden"
                                        class="form-control">

                            <!-- <div class="row"> -->
                                <div class="row">
                                  <h2>FORMA DE PAGO</h2>
                                </div>
                                <div class="row">
                                  <div class="col-md-3">
                                    <label for="">DIVISA 1</label>
                                  </div>
                                  <div class="col-md-6">
                                      <input id="divisa1" autocomplete="off" name="" type="number"
                                            value="0"
                                            class="form-control"
                                            placeholder="">
                                  </div>
                                  <!-- <div class="col-md-3">
                                    <input name="" id="" value="Calcular" type="button" class="btn btn-success"/>
                                  </div> -->
                                </div>
                                <div class="row">
                                  <div class="col-md-3">
                                    <label for="">EFECTIVO 1</label>
                                  </div>
                                  <div class="col-md-6">
                                      <input id="efectivo1" autocomplete="off" name="efectivo1" type="text"
                                            value="0"
                                            class="form-control"
                                            placeholder=""
                                            readonly/>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-md-3">
                                    <label for="">I.G.T.F. 3%</label>
                                  </div>
                                  <div class="col-md-6">
                                      <input id="igtf" autocomplete="off" name="" type="text"
                                            value="0"
                                            class="form-control"
                                            placeholder=""
                                            readonly/>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-md-3">
                                    <label for="">Total a pagar: </label>
                                  </div>
                                  <div class="col-md-6">
                                      <input id="totalPagar" autocomplete="off" name="" type="text"
                                            value="0"
                                            class="form-control"
                                            placeholder=""
                                            readonly/>
                                  </div>
                                </div>
                            <!-- </div> -->
                      </div>
                      
            </div>
            <div class="row">
            <div class="form-group">
                                <input name="accion" id="btnTerminarVenta" value="Terminar Venta" type="button" class="btn btn-warning"/>
                                <input name="accion" id="btnGuardarVenta" value="Guardar Presupuesto" type="button" class="btn btn-success"/>
                                <input name="accion" id="btnCargarVenta" value="Cargar Presupuesto" type="button" class="btn btn-success"/>
                               <!--  <input name="accion" id="" value="Imprimir Presupuesto" type="button" class="btn btn-success" disabled/> -->
                                <input name="accion2" id="btnCancelarVenta" value="Cancelar" type="button" class="btn btn-danger">
            </div>

            </div>
            <h5>
                <div class="row">
                        <div class="col-md-2" id="ivaTotal">I.V.A.: Bs 0</div>
                        <input style="width: 20%" id="tazaNow" autocomplete="off" name="" type="text"
                        class="col-md-3 form-control"
                        placeholder="" readonly>
                </div>
            </h5>
            <h2><div class="row"><div class="col-md-3" id="h2Total">Total: Bs 0</div><div class="col-md-3" id="h2TotalDollar">Total: $ 0</div></div></h2>
            <input type="hidden" id="totalBs" name="totalBs" value="0"/>
            
        </div>
    </div>
    <div class="row">
    
            
    <main>
    <div class="container">
      <div class="alert alert-danger d-none" role="alert" id="alert">
      A simple danger alert—check it out!
      </div>

      <div>
        <form> 
          <div class="row">
          
          <input
                  type="hidden"
                  id="referVenta"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >

                <input
                  type="hidden"
                  id="referCompra"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >
                
                <input
                  type="hidden"
                  id="title"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder="Learn JS"
                  readonly
                >
             
            
                
                  <input
                    type="hidden"
                    id="codigoTdl"
                    class="form-control ml-sm-2 col-md-6"
                    placeholder="Learn JS"
                    readonly
                  >
             
            <div class="">
              <div class=""> 
                
                <input
                  type="hidden"
                  id="description"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >
              </div>
            </div>
            <div class="">
              <div class=""> 
                
                <div class="">
                  <div class="">
                    <input
                      type="hidden"
                      id="precioTdl"
                      class="col-md-9"
                      placeholder=""
                      autocomplete="off"
                    >
                    <input type="hidden" id="roundIva" class="btn btn-success col-md-3" value="+" />
                      <!-- <i class="fa fa-info col-md-1"></i> -->
                  </div>
                </div>
              </div>
            </div>
            <div class="">
              <div class=""> 
                
                <input
                  type="hidden"
                  id="precioConIva"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >
              </div>
            </div>
            <div class="">
              <div class=""> 
                
                <input
                  type="hidden"
                  id="cantidadTdl"
                  class=""
                  placeholder=""
                >
              </div>
            </div>

            <div class="">
              <div class=""> 
                
                <input
                  type="hidden"
                  id="ivaTdl"
                  class=""
                  placeholder=""
                  readonly
                >
              </div>
            </div>
            
             
            <div class="">
              <input type="hidden" class="btn btn-success" id="addxxx" value="Agregar"/>
               
            </div>
          </div>
        </form>
      </div>

      <div class="">
        <table class="table table-striped" id="table">
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
            <!-- Content generated with JS -->
            </div>
          </tbody>
        </table>
      </div>
    </div>
  </main>


    </div>
    <div class="row">
        
    </div>
@endsection
