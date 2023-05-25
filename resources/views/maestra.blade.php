
<!doctype html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="{{env('APP_NAME')}}">
    <meta name="author" content="Parzibyte">
    <!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield("titulo") - {{env("APP_NAME")}}</title>
    <link href="{{url('/css/all.min.css')}}" rel="stylesheet">
     <!-- Styles -->
     <link href="{{ asset('css/app.css') }}" rel="stylesheet">
     <link href="{{ asset('css/myCssInvoice.css') }}" rel="stylesheet">
    <style>
        body {
            padding-top: 70px;
            /*Para la barra inferior fija*/
            padding-bottom: 70px;
        }
    </style>
     <!-- Scripts -->
     <script src="{{ asset('js/app.js') }}" defer></script>
     <script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script> 
     <script src="{{ asset('js/index.js') }}" type="module"></script>
      <script src="{{ asset('js/myscript.js') }}" defer></script> 
     <!--<script src="{{ asset('js/jquery-3.3.1.min.js') }}" defer></script> -->
       <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
     


<script>
  
  $(document).ready(function(){

    
        var inputTaza = document.getElementById('tazaNow');
        var myModalEl = document.getElementById('exampleModal');
        var myUrl = '{{env("APP_URL")}}';
               
          /*   myModalEl.addEventListener('hidden.bs.modal', function (event) {
              console.log('modal cerrado');
             

            }) */
            
            /* $.ajax({
                    url: myUrl + '/showTaza',
                    type: 'GET',
                    success: function (datos) {
                      inputTaza.value = datos;
                    }
                }); */

            });

</script>
@yield("headInertia")
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" target="_blank" href="//parzibyte.me/blog">{{env("APP_NAME")}}</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            id="botonMenu" aria-label="Mostrar u ocultar menú">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav mr-auto">
            @guest
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">Login</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">
                        Registro
                    </a>
                </li>
            @else
                <li class="nav-item">
                    <a class="nav-link" href="{{route('home')}}">Inicio&nbsp;<i class="fa fa-home"></i></a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('productos.index')}}">Productos&nbsp;<i class="fa fa-box"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('vender.index')}}">Vender&nbsp;<i class="fa fa-cart-plus"></i></a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="{{route('indexReactVender')}}">Vender&nbsp;<i class="fa fa-cart-plus"></i></a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('ventas.index')}}">Ventas&nbsp;<i class="fa fa-list"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('ventaIndexReact')}}">Ventas&nbsp;<i class="fa fa-list"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('docEspera.index')}}">Presupuestos&nbsp;<i class="fa fa-list"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('docEsperaIndexReact')}}">Presupuestos&nbsp;<i class="fa fa-list"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('usuarios.index')}}">Usuarios&nbsp;<i class="fa fa-users"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('indexReactUser')}}">Usuarios&nbsp;<i class="fa fa-users"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('clientes.index')}}">Clientes&nbsp;<i class="fa fa-users"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('indexReactCliente')}}">Clientes&nbsp;<i class="fa fa-users"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('indexReact')}}">Productos&nbsp;<i class="fa fa-box"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('reportes')}}">Reportes&nbsp;<i class="fa fa-box"></i></a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" href="{{route('reportesReact')}}">Reportes&nbsp;<i class="fa fa-box"></i></a>
                </li> -->
               
            @endguest
        </ul>
        <ul class="navbar-nav ml-auto">
            @auth
                <li class="nav-item">
                    <a href="{{route('logout')}}" class="nav-link">
                        Salir ({{ Auth::user()->name }})
                    </a>
                </li>
            @endauth
            
           
        </ul>
    </div>
</nav>
<script type="text/javascript">
    // Tomado de https://parzibyte.me/blog/2019/06/26/menu-responsivo-bootstrap-4-sin-dependencias/
    document.addEventListener("DOMContentLoaded", () => {
        const menu = document.querySelector("#menu"),
            botonMenu = document.querySelector("#botonMenu");
        if (menu) {
            botonMenu.addEventListener("click", () => menu.classList.toggle("show"));
        }
    });
</script>
<main class="container-fluid mt-0">
    @yield("contenido")
    
</main>
<footer class="px-2 py-2 fixed-bottom bg-dark">
    <span class="text-muted">Punto de venta en Laravel
        <i class="fa fa-code text-white"></i>
        con
        <i class="fa fa-heart" style="color: #ff2b56;"></i>
        
        <a class="text-white" href=""></a>
        &nbsp;|&nbsp;
        <a target="_blank" class="text-white" href="//github.com/parzibyte/sistema_ventas_laravel">
            <i class="fab fa-github"></i>
        </a>
    </span>
</footer>
</body>
<!-- Modal -->
<div class="modal fade modal-fullscreen" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <input type="text" name="txtBusqueda" id="txtBusqueda" class="form-control" onkeyup="Buscar()" placeholder="Busqueda" autocomplete="off" autofocus>
        <div id="contentTable"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  <!-- Modal 2 edit -->
  <div
    class="modal fade"
    id="modal"
    tabindex="-1"
    role="dialog"
    aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">
            Edit Todo
          </h5>
          <button
            type="button"
            class="close"
            data-bs-dismiss="modal"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="alert alert-danger d-none" role="alert" id="modal-alert">
            A simple danger alert—check it out!
          </div>
          <form>
            <div class="form-group">
              <label>Id</label>
              <input
                id="modal-title"
                type="text"
                class="form-control"
                placeholder=""
                readonly
              />
            </div>

            <div class="form-group">
              <label>Codigo</label>
              <input
                id="modal-codigo_barras"
                type="text"
                class="form-control"
                placeholder="Do Something"
                readonly
              />
            </div>

            <div class="form-group">
              <label>Description</label>
              <input
                id="modal-description"
                type="text"
                class="form-control"
                placeholder="Do Something"
                readonly
              />
            </div>

            <div class="form-group">
              <label>Precio</label>
              <div class="row">
                <input
                  id="modal-precio_venta"
                  type="text"
                  class="form-control col-md"
                  placeholder="Do Something"
                />
                <input type="button" id="roundIvaModal" class="btn btn-success col-md-3" value="+" />
              </div>
            </div>

            <div class="form-group">
              <label>Precio + Iva</label>
              <div class="row">
                <input
                  id="modal-precio_venta_iva"
                  type="text"
                  class="form-control col-md"
                  placeholder="Do Something"
                  readonly
                />
                <input type="text" id="precioDollarModal" class="form-control-sm col-md-3" value=""/>
                <input type="button" id="roundDollarModal" class="btn btn-success col-md-3" value="+" />
            </div>
            </div>

            <div class="form-group">
              <label>Compra $</label>
              <input
                id="modal-compra-dollar"
                type="text"
                class="form-control"
                placeholder=""
                readonly
              />
            </div>

            <div class="form-group">
              <label>Venta $</label>
              <input
                id="modal-venta-dollar"
                type="text"
                class="form-control"
                placeholder=""
                readonly
              />
            </div>

            <div class="form-group">
              <label>Cantidad</label>
              <input
                id="modal-cantidad"
                type="number"
                class="form-control"
                placeholder="Do Something"
                autocomplete="off"
              />
            </div>

            <div class="form-group">
              <label>I.V.A</label>
              <input
                id="modal-iva"
                type="text"
                class="form-control"
                placeholder="Do Something"
                readonly
              />
            </div>

          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
            Close
          </button>
          <button type="button" class="btn btn-info" id="modal-btn">
            Save
          </button>
        </div>
      </div>
    </div>
  </div>
</html>
