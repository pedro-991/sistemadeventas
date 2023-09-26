<?php

namespace App\Http\Controllers;

use App\Doc_espera;
use App\Empresa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use App\Producto;


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

        $url = env("APP_URL");

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

                <input type='radio' name='selectVenta' id='selectVenta' onclick='selectCodeVenta(this, \"" . $url . "\")' value='" . $ventaConTotal . "'/>


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
        
        //aqui podria consultar de una vez los datos completos de cada producto
        //y pasar los productos con los datos completos para anexarlo
        //a la tabla facturacion
        //array
        //consulto un producto
        //array push

        $productosCompletos = array();

        foreach ($venta->productos as $producto) {

            $productoCompleto = [Producto::where("codigo_barras", "LIKE", $producto->codigo_barras)->get(), "precio_v"=>$producto->precio, "cantidad_v"=>$producto->cantidad];

            //array_push($productoCompleto, $producto->precio, $producto->cantidad);

            array_push($productosCompletos, $productoCompleto);

        }



        //return $venta;
        //return ["venta" => $venta, "productosCompletos" => $productosCompletos];
        return $productosCompletos;
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
        $empresa = Empresa::find(1)->nombre;
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
                        <td style=''><font size='5' face='Courier'><strong>" . $empresa . "</strong></font></td>
                        </tr>

                        <tr>
                        <td><font face='Courier'><strong>CLIENTE: " . $venta->cliente->nombre . "</strong></font></td>
                        <td><font face='Courier'><strong>FECHA: " . date_format($venta->created_at, 'd/m/Y') . "</strong></font></td>
                        </tr>

                        <tr>
                        <td><font face='Courier'><strong>RIF/CI: " . $venta->cliente->documento . "</strong></font></td>
                        <td><font face='Courier'><strong>Pag: " .  $paginaActual . "/" .  $repetirFor . "</strong></font></td>    
                        </tr>

                        <tr>
                        <td><font face='Courier'><strong>DIRECCIÓN: <small>" . $venta->cliente->direccion . "</small></strong></font></td>
                        </tr>
                    </table>

                    <table width='100%' border='1' style='border-left: hidden;border-right: hidden;'>
                                    
                                <thead >
                                
                                    <tr>
                                        <th style='width: 12%; border: hidden;'><font face='Courier'>Código</font></th>
                                        <th ALIGN='left' style='padding-left: 20px; width: 38%; border: hidden;'><font face='Courier'>Descripción</font></th>
                                        <th style='width: 17%; border: hidden;'><font face='Courier'>Cantidad</font></th>
                                        <th style='width: 12%; border: hidden;'><font face='Courier'>Precio</font></th>
                                        <th style='width: 10%; border: hidden;'><font face='Courier'>I.V.A.</font></th>
                                        <th style='width: 10%; border: hidden;'><font face='Courier'>Total</font></th>
                                    </tr>
                                
                                </thead>
                
                    </table>
                    <table width='100%' border='0'>
    
                        <tbody style='min-height: 100px'> 
  

            ";

            foreach ($venta->productos as $clave => $producto) {

                                            

                $cantidad = rtrim($producto->cantidad, "0");
                
                $cantidad = rtrim($cantidad, ".");

                                       

                    if ($clave >= $inicioLimite)

                    {

                                
                            $conteoFor++;

                            $htmlPresupuesto = $htmlPresupuesto . "


                                <tr style='height: 25px;'>
                                    <td WIDTH='100'><font face='Courier New'><strong>" . substr($producto->codigo_barras, 0, 7) . "</strong></font></td>
                                    <td style='letter-spacing: -0.05em;'><font face='Courier New'><strong><small>" . $producto->descripcion . "</small></strong></font></td>
                                    <td ALIGN='right'><font face='Courier'><strong>" . $cantidad . "</strong></font></td>
                                    <td><font face='Courier'><strong>" . $producto->und . "</strong></font></td>
                                    <td ALIGN='right' WIDTH=''><font face='Courier'><strong>" . number_format($producto->precio, 2) . "</strong></font></td>";
                                    if($producto->iva == 0) {

                                        $htmlPresupuesto = $htmlPresupuesto . "
                                        <td WIDTH='' style='padding-left: 10px;'><font face='Courier'><strong>XENTO</strong></font></td>
                                        ";
                                    
                                    } else {

                                        $htmlPresupuesto = $htmlPresupuesto . "
                                        <td WIDTH='' CELLSPACING='' style='padding-left: 10px;'><font face='Courier'><strong>" . $producto->iva . ".00</strong></font></td>
                                        ";
                                    
                                    
                                    };

                                    $htmlPresupuesto = $htmlPresupuesto . "

                                        <td ALIGN='right'><font face='Courier'><strong>" . number_format($producto->cantidad * $producto->precio, 2) . "</strong></font></td>
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

                <table width='100%' border='2' style='border-left: hidden;border-right: hidden;'>
                    
                                <tr>
                                    
                                    <td align='right' style='padding-right: 5%; width: 70%; border: hidden;'>
                                
                                        <font face='Courier'><strong>Sub Total:</strong></font>
                                        
                                        
                                    
                                    </td>
                                    <td align='left' style='padding-right: 0%; border: hidden;'>
                                        <font face='Courier'><strong>" . number_format($total, 2) . "</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right' style='padding-right: 5%; width: 70%; border: hidden;'>
                                        <font face='Courier'><strong>I.V.A. 16.00%:</strong></font>
                                        
                                    </td>   
                                    <td align='left' style='padding-right: 0%; border: hidden;'>
                                        <font face='Courier'><strong>" . number_format($totalIva, 2) . "</strong></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td align='right' style='padding-right: 5%; width: 70%; border: hidden;'>
                                        <font face='Courier'><strong>Total:</strong></font>
                                        
                                    </td>
                                    <td align='left' style='padding-right: 0%; width: 15%; border: hidden;'>
                                        <font face='Courier'><strong>" . number_format($total + $totalIva, 2) . "</strong></font>
                                    </td>
                                    <td align='left' style='padding-right: 0%; border: hidden;'>
                                        <font face='Courier'><strong>REF: " . number_format(($total + $totalIva)/$venta->taza, 2) . "</strong></font>
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
