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
                    <form action="{{route('terminarOCancelarVenta')}}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="id_cliente">Cliente</label>
                            <select required class="form-control" name="id_cliente" id="id_cliente">
                                @foreach($clientes as $cliente)
                                    <option value="{{$cliente->id}}">{{$cliente->nombre}}</option>
                                @endforeach
                            </select>
                        </div>
                        @if(session("productos") !== null)
                            <div class="form-group">
                                <input name="accion" id="btnTerminarVenta" value="Terminar Venta" type="button" class="btn btn-success"/>
                                <button name="accion" value="cancelar" type="submit" class="btn btn-danger">Cancelar
                                    venta
                                </button>
                            </div>
                        @endif
                    </form>
                    <div class="form-group">
                                <input name="accion" id="btnTerminarVenta" value="Terminar Venta" type="button" class="btn btn-success"/>
                                <input name="accion2" id="btnCancelarVenta" value="Cancelar Venta" type="button" class="btn btn-danger">
                            </div>
                            
                </div>
                <div class="col-12 col-md-6">
                <input type="hidden" id="btnModal" class="" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <div id="contentDiv"></div>
            
                <label for="codigotest">Buscar</label>
                            <input id="codigotest" autocomplete="off" name="codigotest" type="text"
                                   class="form-control"
                                   placeholder="Jabon">

                                   <input id="typeUnd" autocomplete="off" name="typeUnd" type="hidden"
                                   class="form-control">
 
                  <!--  <form action="{{route('agregarProductoVenta')}}" method="post">
                        @csrf
                        <div class="form-group">
                           
                                   <label for="codigo">Código de barras</label>
                            <input id="codigo" autocomplete="off" required autofocus name="codigo" type="text"
                                   class="form-control"
                                   placeholder="0001">
                        </div> 
                    </form> -->
                   
                </div>
            </div>
            <h5 id="ivaTotal">I.V.A.: Bs 0</h5>
            <h2 id="h2Total">Total: Bs 0</h2>
                @if(session("productos") !== null)
                    <h2>Total: ${{number_format($total, 2)}}</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered" id="tableVenta">
                            <thead>
                            <tr>
                            <th>Id</th>    
                            <th>Código de barras</th>
                                <th>Descripción</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>I.V.A.</th>
                                <th>Quitar</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach(session("productos") as $producto)
                                <tr>
                                <td>{{$producto->id}}</td>
                                    <td>{{$producto->codigo_barras}}</td>
                                    <td>{{$producto->descripcion}}</td>
                                    <td>{{number_format($producto->precio_venta, 2)}}</td>
                                    <td>{{$producto->cantidad}}</td>
                                    <td>{{$producto->iva}}</td>
                                    <th>
                                        <form action="{{route('quitarProductoDeVenta')}}" method="post">
                                            @method("delete")
                                            @csrf
                                            <input type="hidden" name="indice" value="{{$loop->index}}">
                                            <button type="submit" class="btn btn-danger">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </th>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                @else
                    
                @endif
            
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
             
            <div class="col-sm-3 d-sm-flex align-items-center">
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
            <div class="col-sm-3 d-sm-flex align-items-center">
              <div class="row"> 
                <label class="col-md-6 m-sm-0">Precio</label>
                <input
                  type="text"
                  id="precioTdl"
                  class="form-control ml-sm-2 col-md-6"
                  placeholder=""
                >
              </div>
            </div>
            <div class="col-sm-3 d-sm-flex align-items-center">
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
            
                
                <input
                  type="hidden"
                  id="ivaTdl"
                  class="form-control ml-sm-2"
                  placeholder="Learn JS"
                  readonly
                >
             
            <div class="col-sm-2 d-sm-flex justify-content-end mt-4 mt-sm-0">
              <button type="button" class="btn btn-info btn-block" id="add">
                Add
              </button>
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
