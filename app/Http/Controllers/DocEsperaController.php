<?php

namespace App\Http\Controllers;

use App\Doc_espera;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
        foreach ($venta->productos as $producto) {
            //aqui podria añadir la variable iva a la ecuacion y enviar el total con iva
            //podria ser $total += $producto->cantidad * ($producto->precio * (($producto->iva/100)+1));
            $total += $producto->cantidad * $producto->precio;
        }
        return view("ventas.ventas_espera_show", [
            "venta" => $venta,
            "total" => $total,
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

}
