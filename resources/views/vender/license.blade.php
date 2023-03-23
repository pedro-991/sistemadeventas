@extends("maestra")
@section("titulo", "Realizar venta")
@section("contenido")
    <div class="row">
        <div class="col-12">
            
          <h1>Licencia de Usuario Final <i class="fa fa-cart-plus"></i></h1>
          @include("notificacion")

          <p>Debe activar su licencia, por favor comuniquese con su Administrador
            de desarrollo Web para realizar este proceso
          </p>
          
          
              
        </div>

        <form method="POST" action="{{route('productos.store')}}">
                @csrf
                
                <div class="form-group">
                    <label class="label">Licencia</label>
                    <input required autocomplete="off" name="licencia" class="form-control"
                           type="text" placeholder="012452245">
                </div>
                <div class="form-group">
                    <label class="label">Vencimiento</label>
                    <input required autocomplete="off" name="vencimiento" class="form-control"
                           type="text" placeholder="012452245">
                </div>
                

                @include("notificacion")
                <button class="btn btn-success" disabled>Registrar Licencia</button>
            </form>
   


    </div>
  
@endsection
