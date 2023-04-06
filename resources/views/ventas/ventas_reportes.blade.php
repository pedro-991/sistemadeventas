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
@section("titulo", "Ventas")
@section("contenido")
    <div class="row container">
        <div class="col-12">
            <h1>Reportes <i class="fa fa-list"></i></h1>
            @include("notificacion")
            <p><a class="btn btn-info" href="{{route('reporteX')}}">
                Reporte X
            </a></p>

            <p><a class="btn btn-info" href="{{route('reporteZ')}}">
                Reporte Z
            </a></p>
                      
        </div>
    </div>
@endsection
