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
            <a class="btn btn-info" href="{{route('docEspera.index')}}">
                <i class="fa fa-arrow-left"></i>&nbsp;Volver
            </a>
            <a class="btn btn-success" href="javascript:printInvoice()">
                <i class="fa fa-print"></i>&nbsp;Imprimir
            </a>
            
            <h2>Productos</h2>
            
            <div id="divFactura">

                    <!-- aqui empieza la factura a imprimir
                    ***
                    *** -->

            @php

            
            $productosPagina = 10;

                        
            $repetirFor = ceil (count($venta->productos) / $productosPagina);

            for ($i=0; $i<$repetirFor; $i++) {

                         

                            $conteoFor = 0;
	                        $paginaActual = $i + 1;
	                        $inicioLimite = $i * $productosPagina;
                           

            @endphp

                    
            


                    <table width="100%" border="0">
                        <tr>
                        <td><font face="Courier"><strong>CLIENTE: {{$venta->cliente->nombre}}</strong></font></td>
                        <td><font face="Courier"><strong>FECHA: <small>{{date_format($venta->created_at, "d/m/Y")}}</strong></small></font></td>
                        </tr>

                        <tr>
                        <td><font face="Courier"><strong>RIF/CI: {{$venta->cliente->documento}}</strong></font></td>
                        <td><font face="Courier"><strong>Pag: {{ $paginaActual }}/{{ $repetirFor }}</strong></font></td>    
                        </tr>

                        <tr>
                        <td><font face="Courier"><strong>DIRECCIÓN: <small></small></strong></font></td>
                        </tr>
                    </table>

            
                    <table width="100%" border="1">
                        
                            <thead ><!-- style="border-width: 1; border-style: solid; border-color: black;"> --> <!-- class="thead-light" > -->
                            
                                <tr>
                                    <th style="width: 17%;"><font face="Courier">Código</font></th>
                                    <th style="width: 35%;"><font face="Courier">Descripción</font></th>
                                    <th style="width: 17%;"><font face="Courier">Cantidad</font></th>
                                    <th style="width: 10%;"><font face="Courier">Precio</font></th>
                                    <th style="width: 10%;"><font face="Courier">%I.V.A.</font></th>
                                    <th style="width: 10%;"><font face="Courier">Total</font></th>
                                </tr>
                            
                            </thead>
                        
                </table>
                <table width="100%" border="0"> <!-- class="table table-bordered table-hover table-sm"> -->
                        
                        <tbody style="min-height: 100px"> <!-- height: 200px; -->
                      

                        


                                            @foreach($venta->productos as $producto)

                                            

                                            <!-- aqui abajo el conteo
                                            * para saber cuantos item lleva
                                            -->
                                            


                                            <!-- 
                                                *PRODUCTOS
                                                *PRODUCTOS
                                                *PRODUCTOS
                                                *
                                            -->


                                                @if ($loop->index >= $inicioLimite)

                                                            @php
                                                                $conteoFor++;

                                                            @endphp

                                                            <tr style="height: 25px;">
                                                                <td><font face="Courier"><strong>{{$producto->codigo_barras}}</strong></font></td>
                                                                <td><font face="Courier"><strong><small>{{$producto->descripcion}}</small></strong></font></td>
                                                                <td><font face="Courier"><strong>{{$producto->cantidad}} {{$producto->und}}</strong></font></td>
                                                                <td><font face="Courier"><strong>{{number_format($producto->precio, 2)}}</strong></font></td>
                                                                @if($producto->iva == 0)
                                                                
                                                                <td><font face="Courier"><strong>XENTO</strong></font></td>
                                                                @else
                                                                <td><font face="Courier"><strong>{{$producto->iva}}%</strong></font></td>
                                                                @endif
                                                                <td><font face="Courier"><strong>{{number_format($producto->cantidad * $producto->precio, 2)}}</strong></font></td>
                                                            </tr>
                                                        
                                                         


                                                            <!-- 
                                                            *PRODUCTOS
                                                            *PRODUCTOS
                                                            *PRODUCTOS
                                                            *
                                                        -->


                                                @endif

                                                @php
                                                if ($conteoFor == $productosPagina) {
						                            break;    
					                            };
                                                @endphp
                                                

                                                
                                            @endforeach

                    
                    
                    
                        </tbody>
                </table>

                <table width="100%" border="1">
                    
                                <tr>
                                    
                                    <td align="right" style="padding-right: 5%;">
                                
                                    <font face="Courier"><strong>Sub Total:...................</strong></font>
                                    <font face="Courier"><strong>{{number_format($total, 2)}}</strong></font></br>
                                    <font face="Courier"><strong>I.V.A. 16.00%:.............</strong></font>
                                    <font face="Courier"><strong>{{number_format($totalIva, 2)}}</strong></font></br>
                                    <font face="Courier"><strong>Total:............................</strong></font>
                                    <font face="Courier"><strong>{{number_format($total + $totalIva, 2)}}</strong></font></br>
                                    
                                    
                                    </td>
                                </tr>
                               
                    
                </table>


                @php
                    }

                @endphp

                <!-- aqui termina la factura a imprimir
                ***
                *** -->

                
                
            </div> <!-- <div id="divFactura"> -->

        </div>
    </div>
@endsection
