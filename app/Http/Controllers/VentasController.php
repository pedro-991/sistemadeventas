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

//require __DIR__ . '/../vendor/autoload.php';
use App\Venta;
use Inertia\Inertia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Mike42\Escpos\PrintConnectors\FilePrintConnector;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
use Mike42\Escpos\Printer;
//require 'TfhkaPHP.php';
//use IntTFHKA;
//include_once (__DIR__ . '/../../../vendor/IntTFHKA/TfhkaPHP.php');

//use Vendor\IntTFHKA\TfhkaPHP;

class Tfhka
{
var  $NamePort = "", $IndPort = false, $StatusError = "";

function Tfhka()
{
}
// Funcion que establece el nombre del puerto a utilizar
function SetPort($namePort = "")
{
$archivo = 'Puerto.dat';
$fp = fopen($archivo, "w");
$string = "";
$write = fputs($fp, $string);
$string = $namePort;
$write = fputs($fp, $string);
fclose($fp); 

$this->NamePort = $namePort;

}
// Funcion que verifica si el puerto est� abierto y la conexi�n con la impresora
//Retorno: true si esta presente y false en lo contrario
function CheckFprinter()
{
$sentencia = "IntTFHKA.exe CheckFprinter()";

shell_exec($sentencia);

$rep = ""; 
$repuesta = file('Retorno.txt');
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $rep = $repuesta[$i];
 } 
 $this->StatusError = $rep;
 if (substr($rep,0,1) == "T")
{
$this->IndPort = true;
return $this->IndPort;
}else
{
$this->IndPort = false;
return $this->IndPort;
}
}
//Funci�n que envia un comando a la impresora
//Par�metro: Comando en cadena de caracteres ASCII
//Retorno: true si el comando es valido y false en lo contrario
function SendCmd($cmd = "")
{

$sentencia = "IntTFHKA.exe SendCmd(".$cmd;

shell_exec($sentencia);

$rep = ""; 
$repuesta = file('Retorno.txt');
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $rep = $repuesta[$i];
 } 
 $this->StatusError = $rep;
 if (substr($rep,0,1) == "T")
return true;
else
return false;

}
// Funcion que verifiva el estado y error de la impresora y lo establece en la variable global  $StatusError
//Retorno: Cadena con la informaci�n del estado y error y validiti bolleana
function ReadFpStatus()
{

$sentencia = "IntTFHKA.exe ReadFpStatus()";


shell_exec($sentencia);

$rep = ""; 
$repuesta = file('status_error.txt');
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $rep = $repuesta[$i];
 } 
 
 $this->StatusError = $rep;
 
 return $this->StatusError;
}
// Funci�n que ejecuta comandos desde un archivo de texto plano
//Par�metro: Ruta del archivo con extenci�n .txt � .bat
//Retorno: Cadena con n�mero de lineas procesadas en el archivo y estado y error
function SendFileCmd($ruta = "")
{

$sentencia = "IntTFHKA.exe SendFileCmd(".$ruta;

shell_exec($sentencia);

$rep = ""; 
$repuesta = file('Retorno.txt');
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $rep = $repuesta[$i];
 } 
 
 
 return $rep;
}
//Funci�n que sube al PC un tipo de estado de  la impresora
//Par�metro: Tipo de estado en cadena Ejem: S1
//Retorno: Cadena de datos del estado respectivo
function UploadStatusCmd($cmd = "" , $file = "")
{

$sentencia = "IntTFHKA.exe UploadStatusCmd(".$cmd." ".$file;

shell_exec($sentencia);

$repStErr = ""; 
$repuesta = file('StatusData.txt');
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $repStErr = $repuesta[$i];
 } 
$this->StatusError = $repStErr;

$rep = ""; 
$repuesta = file($file);
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $rep = $repuesta[$i];
 } 
 
return $rep;

}
//Funci�n que sube al PC reportes X � Z de la impresora 
//Par�metro: Tipo de reportes en cadena Ejem: U0X. Otro Ejem:   U3A000002000003 
//Retorno: Cadena de datos del o los reporte(s)
function UploadReportCmd($cmd = "", $file = "")
{

$sentencia = "IntTFHKA.exe UploadReportCmd(".$cmd." ".$file;

exec($sentencia);

$repStErr = ""; 
$repuesta = file('Retorno.txt');
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $repStErr = $repuesta[$i];
 } 
$this->StatusError = $repStErr;

$rep = ""; 
$repuesta = file($file);
$lineas = count($repuesta);
for($i=0; $i < $lineas; $i++)
{
 $rep .= $repuesta[$i];
 } 
 
 return $rep;
}
}

class VentasController extends Controller
{

    public function ticket(Request $request)
    {
        $venta = Venta::findOrFail($request->get("id"));
        $nombreImpresora = env("NOMBRE_IMPRESORA");
        $connector = new WindowsPrintConnector($nombreImpresora);
//$connector = new FilePrintConnector("php://stdout");
        $impresora = new Printer($connector);
$impresora -> initialize();
        $impresora->setJustification(Printer::JUSTIFY_CENTER);
        $impresora->setEmphasis(true);
        $impresora->text("Ticket de venta\n");
        $impresora->text($venta->created_at . "\n");
        $impresora->setEmphasis(false);
        $impresora->text("Cliente: ");
        $impresora->text($venta->cliente->nombre . "\n");
        $impresora->text("\nhttps://parzibyte.me/blog\n");
        $impresora->text("\n===============================\n");
        $total = 0;
        foreach ($venta->productos as $producto) {
            $subtotal = $producto->cantidad * $producto->precio;
            $total += $subtotal;
            $impresora->setJustification(Printer::JUSTIFY_LEFT);
            $impresora->text(sprintf("%.2fx%s\n", $producto->cantidad, $producto->descripcion));
            $impresora->setJustification(Printer::JUSTIFY_RIGHT);
            $impresora->text('$' . number_format($subtotal, 2) . "\n");
        }
        $impresora->setJustification(Printer::JUSTIFY_CENTER);
        $impresora->text("\n===============================\n");
        $impresora->setJustification(Printer::JUSTIFY_RIGHT);
        $impresora->setEmphasis(true);
        $impresora->text("Total: $" . number_format($total, 2) . "\n");
        $impresora->setJustification(Printer::JUSTIFY_CENTER);
        $impresora->setTextSize(1, 1);
        $impresora->text("Gracias por su compra\n");
        $impresora->text("https://parzibyte.me/blog");
        $impresora->feed(5);
        $impresora->close();
        return redirect()->back()->with("mensaje", "Ticket impreso");
    }

    public function ticketTest(Request $request) {

        $venta = Venta::findOrFail($request->get("id"));

        $idVenta = $request->get("id");

        /* 
        conseguir el id venta para enviarlo a la factura
        */

        $array = str_split($idVenta);
	
            
            
            
            if (count($array) < 11) {
                while (count($array) < 11){
                    array_unshift($array, "0");
                }
                
            }
            
            
            $idVentaFinal = implode($array);



        /* 
        arriba conseguir el id venta para enviarlo a la factura
        */

        $itObj = new Tfhka();

        $out = "";

        $total = 0;

        $factura = array();

        $conteo = 0;
        //identificacion
        $factura[$conteo] = "iR*" . $venta->cliente->documento . "\n";
        $conteo++;
        //razon social
        $factura[$conteo] = "iS*" . $venta->cliente->nombre . "\n";
        $conteo++;
        //linea adicional 01 se puede usar para la direccion
        $factura[$conteo] = "i01" . $venta->cliente->direccion . "\n";
        $conteo++;
        //numero de factura en caso de la bixolon te la da automatico
        $factura[$conteo] = "iF*" . $idVentaFinal . "\n";
        $conteo++;

        foreach ($venta->productos as $producto) {
            $subtotal = $producto->cantidad * $producto->precio;
            $total += $subtotal;
            //como yo se donde esta el valor iva
            //$producto->iva

            // convertir iva

            if ($producto->iva == 0) {
                $taza = " ";
            }

            if ($producto->iva == 16) {
                $taza = "!";
            }

            //convertir precio
            //precio = ?.00 ejemplo: 15.14, 245.45, 1247.44

            $array = str_split($producto->precio);
	
            
            $resta = count($array) - 3;
            
            unset($array[$resta]);
            
            
            if (count($array) < 10) {
                while (count($array) < 10){
                    array_unshift($array, "0");
                }
                
            }
            
            
            $precioFinal = implode($array);

            /* 
            ---------------------------
            */
            /* aqui abajo
            convertir cantidad */
            

            $array = str_split($producto->cantidad);
	
            
            $resta = count($array) - 3;
            
            unset($array[$resta]);
            
            array_push($array, "0");
            
           
            
            if (count($array) < 8) {
                while (count($array) < 8){
                    array_unshift($array, "0");
                }
                
            }
            
            
            $cantidadFinal = implode($array);

            /* 
            ############################
             */

             /* -----------------
             largo de descripcion
             limitar el largo de descripcion
             */

             $descripcionFinal = substr($producto->descripcion, 0, 50);


            
                 $factura[$conteo] = $taza . $precioFinal . $cantidadFinal . $descripcionFinal . "\n";
            
        
                 $conteo++;
                }

                $factura[$conteo] = "101\n";
                $conteo++;
                $factura[$conteo] = "199";

       /*  $factura = array(0 => "! 0000001000 00001000 HarinaLaravel\n",
        1 => " 000000150000001500Jamon\n",
        2 => "\"000000205000003000Patilla\n",
        3 => "#000005000000001000Caja de Whisky\n",
        4 => "101"); */
        //agregar aqui el comando 199 con pruebas con la impresora 
        //fisica
$file = "Factura.txt";	
$fp = fopen($file, "w+");
$write = fputs($fp, "");
    
foreach($factura as $campo => $cmd)
{
$write = fputs($fp, $cmd);
}
   
    fclose($fp); 
    
    $out =  $itObj->SendFileCmd($file);


    return redirect()->back()->with("mensaje", "Ticket impreso");



    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ventasConTotales = Venta::join("productos_vendidos", "productos_vendidos.id_venta", "=", "ventas.id")
            ->select("ventas.*", DB::raw("sum(productos_vendidos.cantidad * productos_vendidos.precio) as total"))
            ->groupBy("ventas.id", "ventas.created_at", "ventas.updated_at", "ventas.id_cliente")
            ->get();
        return view("ventas.ventas_index", ["ventas" => $ventasConTotales,]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Venta $venta
     * @return \Illuminate\Http\Response
     */
    public function show(Venta $venta)
    {
        $total = 0;
        $totalIva = 0;
        foreach ($venta->productos as $producto) {
            $total += $producto->cantidad * $producto->precio;
            $totalIva = $totalIva + (($producto->cantidad * $producto->precio) * ($producto->iva / 100));// $totalIva + (($producto->cantidad * $producto->precio) * ($producto->iva / 100));
        }
        return view("ventas.ventas_show", [
            "venta" => $venta,
            "total" => $total,
            "totalIva" => $totalIva,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Venta $venta
     * @return \Illuminate\Http\Response
     */
    public function edit(Venta $venta)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Venta $venta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Venta $venta)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Venta $venta
     * @return \Illuminate\Http\Response
     */
    public function destroy(Venta $venta)
    {
        $venta->delete();
        return redirect()->route("ventas.index")
            ->with("mensaje", "Venta eliminada");
    }

    public function reporteX()
    {

        $itObj = new Tfhka();

        $out = "";

        $out =  $itObj->SendCmd("I0X");


    return redirect()->back()->with("mensaje", "Reporte X impreso");
        
    }

    public function reporteZ()
    {

        $itObj = new Tfhka();

        $out = "";

        $out =  $itObj->SendCmd("I0Z");


    return redirect()->back()->with("mensaje", "Reporte Z impreso");
        
    }

    public function reportes()
    {

        return view("ventas.ventas_reportes");
        
    }

    /* 
    ********************************************
    ********************************************
    * funciones para inertia y react
    ********************************************
    ********************************************
     */

     public function indexReact()
    {

        $ventasConTotales = Venta::join("productos_vendidos", "productos_vendidos.id_venta", "=", "ventas.id" )
            ->join("clientes", "clientes.id", "=", "ventas.id_cliente" )
            ->select("clientes.*", "ventas.*", DB::raw("sum(productos_vendidos.cantidad * (productos_vendidos.precio*((productos_vendidos.iva/100)+1))) as total"))
            ->groupBy("ventas.id", "ventas.created_at", "ventas.updated_at", "ventas.id_cliente")
            ->get();

            $url = env("APP_URL");
       
        return Inertia::render('Ventas', ["ventas" => $ventasConTotales, "url" => $url]);
    

    }

    public function ticketTestReact($id) {

        //$venta = Venta::findOrFail($request->get("id"));
        $venta = Venta::findOrFail($id);

        $idVenta = $id;

        /* 
        conseguir el id venta para enviarlo a la factura
        */

        $array = str_split($idVenta);
	
            
            
            
            if (count($array) < 11) {
                while (count($array) < 11){
                    array_unshift($array, "0");
                }
                
            }
            
            
            $idVentaFinal = implode($array);



        /* 
        arriba conseguir el id venta para enviarlo a la factura
        */

        $itObj = new Tfhka();

        $out = "";

        $total = 0;

        $factura = array();

        $conteo = 0;

        //identificacion
        $factura[$conteo] = "iR*" . $venta->cliente->documento . "\n";
        $conteo++;
        //razon social
        $factura[$conteo] = "iS*" . $venta->cliente->nombre . "\n";
        $conteo++;
        //linea adicional 01 se puede usar para la direccion
        $factura[$conteo] = "i01" . $venta->cliente->direccion . "\n";
        $conteo++;
        //numero de factura en caso de la bixolon te la da automatico
        $factura[$conteo] = "iF*" . $idVentaFinal . "\n";
        $conteo++;

        foreach ($venta->productos as $producto) {
            $subtotal = $producto->cantidad * $producto->precio;
            $total += $subtotal;
            //como yo se donde esta el valor iva
            //$producto->iva

            // convertir iva

            if ($producto->iva == 0) {
                $taza = " ";
            }

            if ($producto->iva == 16) {
                $taza = "!";
            }

            //convertir precio
            //precio = ?.00 ejemplo: 15.14, 245.45, 1247.44

            $array = str_split($producto->precio);
	
            
            $resta = count($array) - 3;
            
            unset($array[$resta]);
            
            
            if (count($array) < 10) {
                while (count($array) < 10){
                    array_unshift($array, "0");
                }
                
            }
            
            
            $precioFinal = implode($array);

            /* 
            ---------------------------
            */
            /* aqui abajo
            convertir cantidad */
            

            $array = str_split($producto->cantidad);
	
            
            $resta = count($array) - 3;
            
            unset($array[$resta]);
            
            array_push($array, "0");
            
           
            
            if (count($array) < 8) {
                while (count($array) < 8){
                    array_unshift($array, "0");
                }
                
            }
            
            
            $cantidadFinal = implode($array);

            /* 
            ############################
             */

             /* -----------------
             largo de descripcion
             limitar el largo de descripcion
             */

             $descripcionFinal = substr($producto->descripcion, 0, 50);


            
                 $factura[$conteo] = $taza . $precioFinal . $cantidadFinal . $descripcionFinal . "\n";
            
        
                 $conteo++;
                }

                $factura[$conteo] = "101\n";
                $conteo++;
                $factura[$conteo] = "199";

       /*  $factura = array(0 => "! 0000001000 00001000 HarinaLaravel\n",
        1 => " 000000150000001500Jamon\n",
        2 => "\"000000205000003000Patilla\n",
        3 => "#000005000000001000Caja de Whisky\n",
        4 => "101"); */
        //agregar aqui el comando 199 con pruebas con la impresora 
        //fisica
$file = "Factura.txt";	
$fp = fopen($file, "w+");
$write = fputs($fp, "");
    
foreach($factura as $campo => $cmd)
{
$write = fputs($fp, $cmd);
}
   
    fclose($fp); 
    
    $out =  $itObj->SendFileCmd($file);


    //return redirect()->back()->with("mensaje", "Ticket impreso");
    //enviar aqui a una pagina que diga ticket impreso
    return redirect()->route("impreso");



    }

    public function impreso()
    {

        $url = env("APP_URL");
       
    
       
        return Inertia::render('Impreso', ["url" => $url]);
    

    }

    /* mostrar el detalle de una venta
    con react
     */

     public function showReact(Request $request)
    {
        $venta = Venta::with(["productos", "cliente"])->findOrFail($request->id);
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
                                        <th style='width: 12%;'><font face='Courier'>Código</font></th>
                                        <th style='width: 38%;'><font face='Courier'>Descripción</font></th>
                                        <th style='width: 17%;'><font face='Courier'>Cantidad</font></th>
                                        <th style='width: 12%;'><font face='Courier'>Precio</font></th>
                                        <th style='width: 10%;'><font face='Courier'>I.V.A.</font></th>
                                        <th style='width: 10%;'><font face='Courier'>Total</font></th>
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
                                        <td WIDTH='' CELLSPACING='' style='padding-left: 10px;'><font face='Courier'><strong>" . $producto->iva . "%</strong></font></td>
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

                <table width='100%' border='1'>
                    
                                <tr>
                                    
                                    <td align='right' style='padding-right: 5%;'>
                                
                                    <font face='Courier'><strong>Sub Total:.............</strong></font>
                                    <font face='Courier'><strong>" . number_format($total, 2) . "</strong></font></br>
                                    <font face='Courier'><strong>I.V.A. 16.00%:.............</strong></font>
                                    <font face='Courier'><strong>" . number_format($totalIva, 2) . "</strong></font></br>
                                    <font face='Courier'><strong>Total:.................</strong></font>
                                    <font face='Courier'><strong>" . number_format($total + $totalIva, 2) . "</strong></font></br>
                                    
                                    
                                    </td>
                                </tr>
                               
                    
                </table>
           
        
            ";


        };
    

        return Inertia::render('VentasShow', [
            "venta" => $venta,
            "total" => $total,
            "totalIva" => $totalIva,
            "url" => $url,
            "htmlPresupuesto" => $htmlPresupuesto,
        ]);
        
   
    }

    /* eliminar una venta con react */

    public function destroyReact($id)
    {
        $venta = Venta::findOrFail($id);
        $venta->delete();
        
        return redirect()->route("ventaIndexReact");
    }

    
}
