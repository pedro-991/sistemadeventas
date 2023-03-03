<?php

namespace App\Http\Controllers;

use App\Doc_espera;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;

class DocEsperaController extends Controller
{
    //
    public function index()
    {
        $ventasConTotales = Doc_espera::join("product_esperas", "product_esperas.id_doc_esperas", "=", "doc_esperas.id")
            ->select("doc_esperas.*", DB::raw("sum(product_esperas.cantidad * (product_esperas.precio*((product_esperas.iva/100)+1))) as total"))
            ->groupBy("doc_esperas.id", "doc_esperas.created_at", "doc_esperas.updated_at", "doc_esperas.id_cliente")
            ->get();
        return view("ventas.ventas_espera_index", ["ventas" => $ventasConTotales,]);
    }

    public function show(Request $request)
    {
        $venta = Doc_espera::with(["productos", "cliente"])->findOrFail($request->id);
        $total = 0;
        $totalIva = 0;
        foreach ($venta->productos as $producto) {
            //aqui podria añadir la variable iva a la ecuacion y enviar el total con iva
            //podria ser $total += $producto->cantidad * ($producto->precio * (($producto->iva/100)+1));
            $total += $producto->cantidad * $producto->precio;
            $totalIva = $totalIva + (($producto->cantidad * $producto->precio) * ($producto->iva / 100));
        }
        return view("ventas.ventas_espera_show", [
            "venta" => $venta,
            "total" => $total,
            "totalIva" => $totalIva,
        ]);
    }

    public function destroy(Request $request)
    {
        $venta = Doc_espera::findOrFail($request->id);
        $venta->delete();
        return redirect()->route("docEspera.index")
            ->with("mensaje", "Venta en espera eliminada");
    }

    /* funcion para mostrar ventas guardadas en el modal */

    public function indexOnModal()
    {
        $ventasConTotales = Doc_espera::join("product_esperas", "product_esperas.id_doc_esperas", "=", "doc_esperas.id")
            ->select("doc_esperas.*", DB::raw("sum(product_esperas.cantidad * (product_esperas.precio*((product_esperas.iva/100)+1))) as total"))
            ->groupBy("doc_esperas.id", "doc_esperas.created_at", "doc_esperas.updated_at", "doc_esperas.id_cliente")
            ->get();
        //return view("ventas.ventas_espera_index", ["ventas" => $ventasConTotales,]);

        //$ventas = ["ventas" => $ventasConTotales,];

        $htmlproducto = "";
        

            $htmlproducto = "<table class='table table-bordered' id='tblProducto'>";

            $htmlproducto = $htmlproducto . "<tr><th>Fecha</th><th>Cliente</th><th>Total</th><th>Seleccionar</th></tr>";

            foreach($ventasConTotales as $ventaConTotal) {

                /****
                 * inicion html
                 */


                $htmlproducto = $htmlproducto . "
                
                <tr align='center'>

              
                <td>
                    
                    " . $ventaConTotal->created_at . "
                      
                    </td>

                    <td>
                    
                    " . $ventaConTotal->cliente->nombre . "
                      
                    </td>

                    <td>
                    
                    " . number_format($ventaConTotal->total, 2) . "
                      
                    </td>


                
            
                <td>

                <input type='radio' name='selectVenta' id='selectVenta' onclick='selectCodeVenta(this)' value='" . $ventaConTotal . "'>


                </td>

                
                </tr>
                
                
                ";

                
           /******
            * fin html
            */
             }
             //return $htmlproducto;

             $htmlproducto = $htmlproducto . "</table>";
             
        

        
            return $htmlproducto;
        

    }

    public function showCargarVenta(Request $request)
    {
        $venta = Doc_espera::with(["productos", "cliente"])->findOrFail($request->id);
        

        return $venta;
    }



    /* 
    ******************************
    * funciones para inertia react
    ******************************
     */


     public function indexReact()
    {
        $ventasConTotales = Doc_espera::join("product_esperas", "product_esperas.id_doc_esperas", "=", "doc_esperas.id" )
            ->join("clientes", "clientes.id", "=", "doc_esperas.id_cliente" )
            ->select("clientes.*", "doc_esperas.*", DB::raw("sum(product_esperas.cantidad * (product_esperas.precio*((product_esperas.iva/100)+1))) as total"))
            ->groupBy("doc_esperas.id", "doc_esperas.created_at", "doc_esperas.updated_at", "doc_esperas.id_cliente")
            ->get();

            $url = env("APP_URL");
       
        return Inertia::render('Presupuestos', ["ventas" => $ventasConTotales, "url" => $url]);
    }

    public function showReact(Request $request)
    {
        $venta = Doc_espera::with(["productos", "cliente"])->findOrFail($request->id);
        $total = 0;
        $totalIva = 0;
        $url = env("APP_URL");
        foreach ($venta->productos as $producto) {
            //aqui podria añadir la variable iva a la ecuacion y enviar el total con iva
            //podria ser $total += $producto->cantidad * ($producto->precio * (($producto->iva/100)+1));
            $total += $producto->cantidad * $producto->precio;
            $totalIva = $totalIva + (($producto->cantidad * $producto->precio) * ($producto->iva / 100));
        }

        

        /* 
        ******************
        html con laravel
        ******************
        */

        $productosPagina = 10;

                        
        $repetirFor = ceil (count($venta->productos) / $productosPagina);

        $htmlPresupuesto = "";

        for ($i=0; $i<$repetirFor; $i++) {

                         

            $conteoFor = 0;
            $paginaActual = $i + 1;
            $inicioLimite = $i * $productosPagina;


            $htmlPresupuesto = $htmlPresupuesto . "
            
                    <table width='100%' border='0'>
                        <tr>
                        <td><font face='Courier'><strong>CLIENTE: " . $venta->cliente->nombre . "</strong></font></td>
                        <td><font face='Courier'><strong>FECHA: <small>" . date_format($venta->created_at, 'd/m/Y') . "</strong></small></font></td>
                        </tr>

                        <tr>
                        <td><font face='Courier'><strong>RIF/CI: " . $venta->cliente->documento . "</strong></font></td>
                        <td><font face='Courier'><strong>Pag: " .  $paginaActual . "/" .  $repetirFor . "</strong></font></td>    
                        </tr>

                        <tr>
                        <td><font face='Courier'><strong>DIRECCIÓN: <small></small></strong></font></td>
                        </tr>
                    </table>

                    <table width='100%' border='1'>
                                    
                                <thead >
                                
                                    <tr>
                                        <th style='width: 17%;'><font face='Courier'>Código</font></th>
                                        <th style='width: 35%;'><font face='Courier'>Descripción</font></th>
                                        <th style='width: 17%;'><font face='Courier'>Cantidad</font></th>
                                        <th style='width: 10%;'><font face='Courier'>Precio</font></th>
                                        <th style='width: 10%;'><font face='Courier'>%I.V.A.</font></th>
                                        <th style='width: 10%;'><font face='Courier'>Total</font></th>
                                    </tr>
                                
                                </thead>
                
                    </table>
                    <table width='100%' border='0'>
    
                        <tbody style='min-height: 100px'> 
  

            ";

            foreach ($venta->productos as $clave => $producto) {

                                            

                                       

                                       

                    if ($clave >= $inicioLimite)

                    {

                                
                            $conteoFor++;

                            $htmlPresupuesto = $htmlPresupuesto . "


                                <tr style='height: 25px;'>
                                    <td><font face='Courier'><strong>" . $producto->codigo_barras . "</strong></font></td>
                                    <td><font face='Courier'><strong><small>" . $producto->descripcion . "</small></strong></font></td>
                                    <td><font face='Courier'><strong>" . $producto->cantidad . " " . $producto->und . "</strong></font></td>
                                    <td><font face='Courier'><strong>" . number_format($producto->precio, 2) . "</strong></font></td>";
                                    if($producto->iva == 0) {

                                        $htmlPresupuesto = $htmlPresupuesto . "
                                        <td><font face='Courier'><strong>XENTO</strong></font></td>
                                        ";
                                    
                                    } else {

                                        $htmlPresupuesto = $htmlPresupuesto . "
                                        <td><font face='Courier'><strong>" . $producto->iva . "%</strong></font></td>
                                        ";
                                    
                                    
                                    };

                                    $htmlPresupuesto = $htmlPresupuesto . "

                                        <td><font face='Courier'><strong>" . number_format($producto->cantidad * $producto->precio, 2) . "</strong></font></td>
                                    </tr>



                            ";
                                

                                
                            
                            


                        

                    };

            
                    if ($conteoFor == $productosPagina) {
                        break;    
                    };
           
            

        


            };

        

            $htmlPresupuesto = $htmlPresupuesto . " 
                    
                    
                        </tbody>
                </table>

                <table width='100%' border='1'>
                    
                                <tr>
                                    
                                    <td align='right' style='padding-right: 5%;'>
                                
                                    <font face='Courier'><strong>Sub Total:...................</strong></font>
                                    <font face='Courier'><strong>" . number_format($total, 2) . "</strong></font></br>
                                    <font face='Courier'><strong>I.V.A. 16.00%:.............</strong></font>
                                    <font face='Courier'><strong>" . number_format($totalIva, 2) . "</strong></font></br>
                                    <font face='Courier'><strong>Total:............................</strong></font>
                                    <font face='Courier'><strong>" . number_format($total + $totalIva, 2) . "</strong></font></br>
                                    
                                    
                                    </td>
                                </tr>
                               
                    
                </table>
           
        
            ";


        };
    

        return Inertia::render('PresupuestosShow', [
            "venta" => $venta,
            "total" => $total,
            "totalIva" => $totalIva,
            "url" => $url,
            "htmlPresupuesto" => $htmlPresupuesto,
        ]);
        
   
    }

    public function destroyReact($id)
    {
        $venta = Doc_espera::findOrFail($id);
        $venta->delete();
        
        return redirect()->route("docEsperaIndexReact");
    }

}
