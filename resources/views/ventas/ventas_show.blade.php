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
@section("titulo", "Detalle de venta ")
@section("contenido")
    <div class="row">
        <div class="col-12">
            <h1>Detalle de venta #{{$venta->id}}</h1>
            
            @include("notificacion")
            <a class="btn btn-info" href="{{route('ventas.index')}}">
                <i class="fa fa-arrow-left"></i>&nbsp;Volver
            </a>
            <a class="btn btn-success" href="{{route('ventas.ticket', ['id' => $venta->id])}}">
                <i class="fa fa-print"></i>&nbsp;Ticket
            </a>
            <a class="btn btn-success" href="javascript:printInvoice()">
                <i class="fa fa-print"></i>&nbsp;Imprimir
            </a>
            <div id="divFactura">
            <h2>Productos</h2>
            <div class="titleHeader">
            <p style="padding: 0; margin: 0;">CLIENTE: <small>{{$venta->cliente->nombre}}</small></p>
            <p style="padding: 0; margin: 0;">RIF: <small></small></p>
            <p style="padding: 0; margin: 0;">DIRECCIÓN: <small></small></p>
</div>
            <table width="100%" class="table table-bordered table-hover table-sm">
                <thead class="thead-light">
                <tr>
                    <th>Código</th>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>%I.V.A.</th>
                    <th>Total</th>
                </tr>
                </thead>
                <tbody style="height: 200px;">
                @php
                    $totalIva = 0;

        @endphp
                @foreach($venta->productos as $producto)
                    <tr style="height: 30px;">
                        <td>{{$producto->codigo_barras}}</td>
                        <td>{{$producto->descripcion}}</td>
                        <td>{{$producto->cantidad}} UND</td>
                        <td>{{number_format($producto->precio, 2)}}</td>
                        <td>{{$producto->iva}}%</td>
                        <td>{{number_format($producto->cantidad * $producto->precio, 2)}}</td>
                    </tr>
                  
                    @php
                    $totalIva = $totalIva + (($producto->cantidad * $producto->precio) * ($producto->iva / 100));

        @endphp
                @endforeach
              
                <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              
</tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="3"></td>
                    <td><strong>SUB TOTAL</strong></td>
                    <td><strong>{{number_format($total, 2)}}</strong></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td><strong>I.V.A. 16.00%</strong></td>
                    <td><strong>{{$totalIva}}</strong></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td><strong>Total</strong></td>
                    <td>{{number_format($total + $totalIva, 2)}}</td>
                </tr>
                </tfoot>
            </table>
</div>

        </div>
    </div>
@endsection
