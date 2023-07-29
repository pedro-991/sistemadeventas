<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Producto;
use App\ProductoVendido;
use App\Venta;
use App\Doc_espera;
use App\Product_espera;
use App\License;
use App\Taza;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Facades\DB;

class VenderController extends Controller
{

    public function terminarOCancelarVenta(Request $request)
    {
        
        if ($request->input("accion") == "terminar") {
            return $this->terminarVenta($request);
        } else {
            return $this->cancelarVenta();
        }
    }

    public function terminarVenta(Request $request)
    {
        // Crear una venta
        $venta = new Venta();

        $taza = Taza::find(1);
        
        
        $venta->id_cliente = $request->post("id_cliente");
        $venta->efectivo = $request->post("efectivo");
        $venta->total = $request->post("total");
        $venta->taza = $taza->taza;
        $venta->saveOrFail();
        $idVenta = $venta->id;
        
        $productos = $request->post("productos");
        // Recorrer carrito de compras
        foreach ($productos as $producto) {
            // El producto que se vende...
            $productoVendido = new ProductoVendido();
           
            $productoVendido->fill([
                "id_venta" => $idVenta,
                "descripcion" => $producto[2],
                "codigo_barras" => $producto[1],
                "precio" => $producto[3],
                "cantidad" => $producto[4],
                "iva" => $producto[5],
                "und" => $producto[6],
            ]);
            // Lo guardamos
            $productoVendido->saveOrFail();
            // Y restamos la existencia del original
            /* $productoActualizado = Producto::find($producto[0]);
            $productoActualizado->existencia -= $productoVendido->cantidad;
            $productoActualizado->saveOrFail(); */

            $productoCompuestoFraccion = Producto::find($producto[0]);
            $productoActualizado = Producto::where('codigo_barras', '=', $productoCompuestoFraccion->compuesto)->first();
            $productoActualizado->existencia -= $productoCompuestoFraccion->fraccion * $productoVendido->cantidad;

            //guardamos
            $productoActualizado->saveOrFail();
        }
        $this->vaciarProductos();
      
            $htmlTabla = "";
            return $htmlTabla;
    }

    public function guardarVenta(Request $request)
    {
        // Crear una venta
        $doc_espera = new Doc_espera();

        $taza = Taza::find(1);
        
        $doc_espera->id_cliente = $request->post("id_cliente");
        $doc_espera->taza = $taza->taza;
        $doc_espera->saveOrFail();
        $idDoc_espera = $doc_espera->id;

        
        
        $productos = $request->post("productos");
        // Recorrer carrito de compras
        foreach ($productos as $producto) {
            // El producto que se vende...
            $product_espera = new Product_espera();
           
            $product_espera->fill([
                "id_doc_esperas" => $idDoc_espera,
                "descripcion" => $producto[2],
                "codigo_barras" => $producto[1],
                "precio" => $producto[3],
                "cantidad" => $producto[4],
                "iva" => $producto[5],
                "und" => $producto[6],
            ]);
            // Lo guardamos
            $product_espera->saveOrFail();
            // Y restamos la existencia del original
            //$productoActualizado = Producto::find($producto[0]);
            //$productoActualizado->existencia -= $product_espera->cantidad;
            //$productoActualizado->saveOrFail();
            // ENCONTRAR PRODUCTO ACTUALIZADO debe ser el producto compuesto
            //$productoActualizado = Producto::find($producto[0]);
            //$productoActualizado = Producto::find(AQUI METER EL CODIGO DEL COMPUESTO);
            //$productoActualizado = Producto::find($product_espera->compuesto);
            //$productoActualizado = Producto::find($product_espera->compuesto);
            //$productoCompuestoFraccion = Producto::find($producto[0]);
            //$productoActualizado = Producto::find($productoCompuestoFraccion->compuesto);
            $productoCompuestoFraccion = Producto::find($producto[0]);
            $productoActualizado = Producto::where('codigo_barras', '=', $productoCompuestoFraccion->compuesto)->first();

            //se resta la fraccion a la existencia del compuesto
            //para ser exactos se resta la fraccion multiplicada por la cantidad a vender
            //$productoFraccion = Producto::find($producto[0]);
            $productoActualizado->existencia -= $productoCompuestoFraccion->fraccion * $product_espera->cantidad;

            //guardamos
            $productoActualizado->saveOrFail();

        }
            return true;
    }

    private function obtenerProductos()
    {
        $productos = session("productos");
        if (!$productos) {
            $productos = [];
        }
        return $productos;
    }

    private function vaciarProductos()
    {
        $this->guardarProductos(null);
    }

    private function guardarProductos($productos)
    {
        session(["productos" => $productos,
        ]);
    }

    public function cancelarVenta()
    {
        $this->vaciarProductos();
        return redirect()
            ->route("vender.index")
            ->with("mensaje", "Venta cancelada");
    }

    public function quitarProductoDeVenta(Request $request)
    {
        $indice = $request->post("indice");
        $productos = $this->obtenerProductos();
        array_splice($productos, $indice, 1);
        $this->guardarProductos($productos);
        return redirect()
            ->route("vender.index");
    }

    public function agregarProductoVenta(Request $request)
    {
        //este es el coigo recibido del input codigo_barras
         $codigo = $request->post("codigo");
        $producto = Producto::where("codigo_barras", "=", $codigo)->first();
        if (!$producto) {
            return redirect()
                ->route("vender.index")
                ->with("mensaje", "Producto no encontrado");
        }
        $this->agregarProductoACarrito($producto);
        return redirect()
            ->route("vender.index"); 

           


    }

    public function productoFiltro(Request $request)
    {
        $codigo = $request->post("txtcodigo") . "%";
        //$respuesta = $codigo . " desde laravel";
        //$codigo = "<h1>Hola desde laravel</h1>";
        //return $respuesta;
        $producto = Producto::where("descripcion", "LIKE", $codigo)->get();
        $htmlproducto = "";
            if ($producto) {

                $htmlproducto = "<table class='table table-bordered' id='tblProducto'>";

                $htmlproducto = $htmlproducto . "<tr><th>Descripcion</th><th>Precio+IVA</th><th>Refer Venta</th><th>Existencia</th><th>Seleccionar</th></tr>";

                foreach($producto as $pro) {

                    //$htmlproducto = $htmlproducto . "<p>" . $pro->descripcion . "</p>";
                    /****
                     * inicion html
                     */

                     //$proJson = $pro->json();

                    $htmlproducto = $htmlproducto . "
                    
                    <tr align='center'>

                    <td>
                    
                    " . $pro->descripcion . "
                      
                    </td>

                    
<td>
" . number_format($pro->precio_venta * ($pro->iva/100+1), 2) . "
</td>

<td>
" . $pro->referventa . "
</td>


<td>
" . $pro->existencia . "
</td>
                    
                
                    <td>

<input type='radio' name='selectPro' id='selectPro' onclick='selectCode(this)' value='" . $pro . "'>
  
 
</td>

                    
                    </tr>
                    
                    
                    ";

                    
               /******
                * fin html
                */
                 }
                 //return $htmlproducto;

                 $htmlproducto = $htmlproducto . "</table>";
                 
            };

            if ($htmlproducto != "") {
                return $htmlproducto;
            } else {

            return "Producto no encontrado";
            }
    }

    public function productoFiltroCarga(Request $request)
    {
        $codigo = $request->post("txtcodigo") . "%";
        //$respuesta = $codigo . " desde laravel";
        //$codigo = "<h1>Hola desde laravel</h1>";
        //return $respuesta;
        $producto = Producto::where("descripcion", "LIKE", $codigo)->get();
        $htmlproducto = "";
            if ($producto) {

                $htmlproducto = "<table class='table table-bordered' id='tblProducto'>";

                $htmlproducto = $htmlproducto . "<tr><th>Seleccionar</th></tr>";

                foreach($producto as $pro) {

                    //$htmlproducto = $htmlproducto . "<p>" . $pro->descripcion . "</p>";
                    /****
                     * inicion html
                     */

                     //$proJson = $pro->json();

                    $htmlproducto = $htmlproducto . "
                    
                    <tr align='center'>

                  


                    
                
                    <td>

<input type='radio' name='selectPro' id='selectPro' onclick='selectCode(this)' value='" . $pro . "'>
  
 
</td>

                    
                    </tr>
                    
                    
                    ";

                    
               /******
                * fin html
                */
                 }
                 //return $htmlproducto;

                 $htmlproducto = $htmlproducto . "</table>";
                 
            };

            if ($htmlproducto != "") {
                return $htmlproducto;
            } else {

            return "Producto no encontrado";
            }
    }

    private function agregarProductoACarrito($producto)
    {
        if ($producto->existencia <= 0) {
            return redirect()->route("vender.index")
                ->with([
                    "mensaje" => "No hay existencias del producto",
                    "tipo" => "danger"
                ]);
        }
        $productos = $this->obtenerProductos();
        $posibleIndice = $this->buscarIndiceDeProducto($producto->codigo_barras, $productos);
        // Es decir, producto no fue encontrado
        if ($posibleIndice === -1) {
            $producto->cantidad = 1;
            array_push($productos, $producto);
        } else {
            if ($productos[$posibleIndice]->cantidad + 1 > $producto->existencia) {
                return redirect()->route("vender.index")
                    ->with([
                        "mensaje" => "No se pueden agregar más productos de este tipo, se quedarían sin existencia",
                        "tipo" => "danger"
                    ]);
            }
            $productos[$posibleIndice]->cantidad++;
        }
        $this->guardarProductos($productos);
    }

    private function buscarIndiceDeProducto(string $codigo, array &$productos)
    {
        foreach ($productos as $indice => $producto) {
            if ($producto->codigo_barras === $codigo) {
                return $indice;
            }
        }
        return -1;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $license = License::find(1);
        //fecha expiracion = fecha update + dias expiracion
        $d = strtotime("$license->updated_at + $license->days days");
        $fExpiration =  date_create(date("d-m-Y", $d));
        $fActual =  date_create(date("d-m-Y"));
        //$interval = date_diff($fExpiration, $fExpiration2);
        //if fechaexpiration es menor que now vista1 else vista2

        if ($fExpiration > $fActual) 
        {
            return view("vender.vender", [
                "clientes" => Cliente::all()
            ]);
        } else {


            return view("vender.license",)
            ->with([
                "mensaje" => "Licencia Vencida, proceda a realizar la activación
                para ingresar a la pestaña Vender",
                "tipo" => "danger"
            ]);
        }
    }


    /* ****************************
    #******************************
    #renovacion licencia
    #******************************
    #***************************
    *************************/




    public function renovacionLicencia(Request $request) {

        //request recibidos licencia y vencimiento
        $license = md5($request->post("licencia"));
        $days = $request->post("vencimiento");

        License::where('license', $license)->update(['days' => $days]);

        return redirect()->route("vender.index");

    }


    

    /* ****************************
    #buscar cliente
    #
    #
    #
    *************************/

    public function clienteFiltro(Request $request)
    {
        $codigo = $request->post("txtcodigo") . "%";
        //$respuesta = $codigo . " desde laravel";
        //$codigo = "<h1>Hola desde laravel</h1>";
        //return $respuesta;
        $producto = Cliente::where("nombre", "LIKE", $codigo)->get();
        $htmlproducto = "";
            if ($producto) {

                $htmlproducto = "<table class='table table-bordered' id='tblProducto'>";

                $htmlproducto = $htmlproducto . "<tr><th>Razon Social</th><th>RIF/CI</th><th>Telefono</th><th>Seleccionar</th></tr>";

                foreach($producto as $pro) {

                    //$htmlproducto = $htmlproducto . "<p>" . $pro->descripcion . "</p>";
                    /****
                     * inicion html
                     */

                     //$proJson = $pro->json();

                    $htmlproducto = $htmlproducto . "
                    
                    <tr align='center'>

                    <td>
                    
                    " . $pro->nombre . "
                      
                    </td>

                    
<td>
" . $pro->documento . "
</td>

<td>
" . $pro->telefono . "
</td>



                    
                
                    <td>

<input type='radio' name='selectPro' id='selectPro' onclick='selectCliente(this)' value='" . $pro . "'>
  
 
</td>

                    
                    </tr>
                    
                    
                    ";

                    
               /******
                * fin html
                */
                 }
                 //return $htmlproducto;

                 $htmlproducto = $htmlproducto . "</table>";
                 
            };

            if ($htmlproducto != "") {
                return $htmlproducto;
            } else {

            return "Producto no encontrado";
            }
    }

    /* 
    **********************
    funciones con react
    **********************
     */

     public function indexReact()
    {
        $url = env("APP_URL");
        $taza = Taza::find(1);
        $license = License::find(1);
        //fecha expiracion = fecha update + dias expiracion
        $d = strtotime("$license->updated_at + $license->days days");
        $fExpiration =  date_create(date("d-m-Y", $d));
        $fActual =  date_create(date("d-m-Y"));
        //$interval = date_diff($fExpiration, $fExpiration2);
        //if fechaexpiration es menor que now vista1 else vista2

        if ($fExpiration > $fActual) 
        {
            return Inertia::render('Vender', [
                "url" => $url,
                "taza" => $taza->taza
            ]);
        } else {


            return view("vender.license",)
            ->with([
                "mensaje" => "Licencia Vencida, proceda a realizar la activación
                para ingresar a la pestaña Vender",
                "tipo" => "danger"
            ]);
        }
    }

    /* esta funcion productosTablaUpdate
    nunca la utilice, supuestamente era para
    editar la tabla con jquery */

    public function productosTablaUpdate(Request $request)
    {
        if ($request->ajax()) {
            /* User::find($request->pk)
                ->update([
                    $request->name => $request->value
                ]); */
  
            return response()->json(['success' => true]);
        }
    }

    public function notaCredito()
    {

        $ventasConTotales = Venta::join("productos_vendidos", "productos_vendidos.id_venta", "=", "ventas.id" )
            ->join("clientes", "clientes.id", "=", "ventas.id_cliente" )
            ->select("clientes.*", "ventas.*", DB::raw("sum(productos_vendidos.cantidad * (productos_vendidos.precio*((productos_vendidos.iva/100)+1))) as total"))
            ->groupBy("ventas.id", "ventas.created_at", "ventas.updated_at", "ventas.id_cliente")
            ->get();

            
       
        //return Inertia::render('Ventas', ["ventas" => $ventasConTotales, "url" => $url]);

        $url = env("APP_URL");
        $message = "hola desde laravel nota de credito";

        return Inertia::render('nota/NotaCredito', [
            "url" => $url,
            "message" => $message,
            "ventas" => $ventasConTotales
        ]);
    }

}
