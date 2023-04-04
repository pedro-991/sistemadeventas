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
@section("titulo", "Agregar cliente")
@section("contenido")
    <div class="row">
        <div class="col-12">
            <h1>Agregar cliente</h1>
            <form method="POST" action="{{route('clientes.store')}}">
                @csrf
                <div class="form-group">
                    <label class="label">Nombre</label>
                    <input required autocomplete="off" name="nombre" class="form-control"
                           type="text" placeholder="PEDRO PEREZ">
                </div>
                <div class="form-group">
                    <label class="label">RIF/CI</label>
                    <input required autocomplete="off" name="documento" class="form-control"
                           type="text" placeholder="J123456780">
                </div>
                <div class="form-group">
                    <label class="label">Teléfono</label>
                    <input required autocomplete="off" name="telefono" class="form-control"
                           type="text" placeholder="0000-0000000">
                </div>
                <div class="form-group">
                    <label class="label">Dirección</label>
                    <input required autocomplete="off" name="direccion" class="form-control"
                           type="text" placeholder="Ciudad Bolívar">
                </div>

                @include("notificacion")
                <button class="btn btn-success">Guardar</button>
                <a class="btn btn-primary" href="{{route('clientes.index')}}">Volver al listado</a>
            </form>
        </div>
    </div>
@endsection
