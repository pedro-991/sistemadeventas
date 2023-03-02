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
               
            
        </div>
    </div>
    <div class="row">
    
            
    <main>
    <div class="container pt-3">
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
             
            <div class="col-md-3 col-sm-3 d-sm-flex align-items-center">
              <div class="row"> 
                <label class="col-md-6 m-sm-0">Description</label>
                <input
                  type="text"
                  id="description"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >
              </div>
            </div>
            <div class="col-md-2 col-sm-2 d-sm-flex align-items-center">
              <div class="row"> 
                <label class="col-md-6 m-sm-0">Precio</label>
                <div class="form-control ml-sm-2 col-md-6">
                  <div class="row">
                    <input
                      type="text"
                      id="precioTdl"
                      class="col-md-9"
                      placeholder=""
                      autocomplete="off"
                    >
                    <input type="button" id="roundIva" class="btn btn-success col-md-3" value="+" />
                      <!-- <i class="fa fa-info col-md-1"></i> -->
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-2 col-sm-2 d-sm-flex align-items-center">
              <div class="row"> 
                <label class="col-md-6 m-sm-0">Precio+IVA</label>
                <input
                  type="text"
                  id="precioConIva"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >
              </div>
            </div>
            <div class="col-md-1 col-sm-1 d-sm-flex align-items-center">
              <div class="row"> 
                <label class="col-md-6 m-sm-0">Cantidad</label>
                <input
                  type="text"
                  id="cantidadTdl"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                >
              </div>
            </div>

            <div class="col-md-1 col-sm-1 d-sm-flex align-items-center">
              <div class="row"> 
                <label class="col-md-6 m-sm-0">I.V.A.</label>
                <input
                  type="text"
                  id="ivaTdl"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                  readonly
                >
              </div>
            </div>
            
             
            <div class="col-md-2 col-sm-2 mt-4">
              <input type="button" class="btn btn-success" id="add" value="Agregar"/>
               
            </div>
          </div>
        </form>
      </div>

      <div class="mt-5">
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
             
              <th scope="col"></th>
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
