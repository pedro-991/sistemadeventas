<?php
/*

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
*/ ?>
<?php

namespace App\Http\Controllers;

use App\Cliente;
use App\Producto;
use App\ProductoVendido;
use App\Venta;
use App\Doc_espera;
use App\Product_espera;
use Illuminate\Http\Request;

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
        
        $venta->id_cliente = $request->post("id_cliente");
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
            $productoActualizado = Producto::find($producto[0]);
            $productoActualizado->existencia -= $productoVendido->cantidad;
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
        
        $doc_espera->id_cliente = $request->post("id_cliente");
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
        $total = 0;
        foreach ($this->obtenerProductos() as $producto) {
            $total += $producto->cantidad * $producto->precio_venta;
        }
        return view("vender.vender",
            [
                "total" => $total,
                "clientes" => Cliente::all(),
            ]);
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

}
/* 

$codigo = $request->post("txtcodigo") . "%";
$cliente = Cliente::where("descripcion", "LIKE", $codigo)->get();
$htmlproducto = "";
    if ($cliente) {

        $htmlproducto = "<table class='table table-bordered' id='tblProducto'>";

        $htmlproducto = $htmlproducto . "<tr><th>Nombre</th><th>RIF/CI</th><th>Telefono</th></tr>";

        foreach($cliente as $cli) {

          

            $htmlproducto = $htmlproducto . "
            
            <tr align='center'>

            <td>
            
            " . $cli->nombre . "
              
            </td>

            
            <td>
            " . $cli->documento . "
            </td>

            <td>
            " . $cli->telefono . "
            </td>



            
        
            <td>
            <input type='radio' name='selectPro' id='selectPro' onclick='selectCode(this)' value='" . $cli . "'>


            </td>

            
            </tr>
            
            
            ";

            
       

         $htmlproducto = $htmlproducto . "</table>";
         
    };

    if ($htmlproducto != "") {
        return $htmlproducto;
    } else {

    return "Producto no encontrado";
    } */