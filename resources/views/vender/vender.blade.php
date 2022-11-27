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
                </div>
                <div class="col-12 col-md-6">
                <input type="hidden" id="btnModal" class="" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <div id="contentDiv"></div>
                <form action="{{route('mostrarSesion')}}" method="post">
                        @csrf
                        <button name="accion" value="cancelar" type="submit" class="btn btn-danger">Mostrar
                                    Sesion
                                </button>
                </form>
                <label for="codigotest">Buscar</label>
                            <input id="codigotest" autocomplete="off" name="codigotest" type="text"
                                   class="form-control"
                                   placeholder="Jabon">
 
                    <form action="{{route('agregarProductoVenta')}}" method="post">
                        @csrf
                        <div class="form-group">
                           
                                   <label for="codigo">Código de barras</label>
                            <input id="codigo" autocomplete="off" required autofocus name="codigo" type="text"
                                   class="form-control"
                                   placeholder="0001">
                        </div>
                    </form>
                </div>
            </div>
            <div id="tablaVenta">
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
                    <h2>Aquí aparecerán los productos de la venta
                        <br>
                        Escanea el código de barras o escribe y presiona Enter</h2>
                @endif
            </div>
        </div>
    </div>
@endsection
