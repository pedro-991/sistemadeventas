<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //return view('home');
        return redirect()->route("indexReactVender");
    }

    public function respaldar()
    {
        
        /*   $ubicacionArchivoTemporal = getcwd() . DIRECTORY_SEPARATOR . "Respaldo_" . uniqid(date("Y-m-d") . "_", true) . ".sql";
        $salida = "";
        $codigoSalida = 0;
        $comando = sprintf("%s --user=\"%s\" --password=\"%s\" %s > %s", env("UBICACION_MYSQLDUMP"), env("DB_USERNAME"), env("DB_PASSWORD"), env("DB_DATABASE"), $ubicacionArchivoTemporal);
        exec($comando, $salida, $codigoSalida);
        if ($codigoSalida !== 0) {
            return "Código de salida distinto de 0, se obtuvo código (" . $codigoSalida . "). Revise los ajustes e intente de nuevo";
        }
            //return response()->download($ubicacionArchivoTemporal)->deleteFileAfterSend(true);
            return redirect()->route("indexReactVender"); */


            set_time_limit(3000);
            $tablasARespaldar = [];
            //$mysqli = new mysqli(env("DB_HOST"), env("DB_USERNAME"), env("DB_PASSWORD"), env("DB_DATABASE"));
            //DB::statement('use ' . env("DB_DATABASE")); //$mysqli->select_db(env("DB_DATABASE"));
            //DB::statement("SET NAMES 'utf8'"); //$mysqli->query("SET NAMES 'utf8'");
            $tablas = DB::select('show tables'); //$tablas = $mysqli->query('SHOW TABLES');
            /* while ($fila = $tablas->fetch_row()) {
                $tablasARespaldar[] = $fila[0];
            } */
            foreach ($tablas as $tabla) {
                $tablasARespaldar[] = $tabla->Tables_in_sistemaventas;
            }
            $contenido = "SET SQL_MODE = \"NO_AUTO_VALUE_ON_ZERO\";\r\nSET time_zone = \"+00:00\";\r\n\r\n\r\n/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\r\n/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\r\n/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\r\n/*!40101 SET NAMES utf8 */;\r\n--\r\n-- Database: `" . env("DB_DATABASE") . "`\r\n--\r\n\r\n\r\n";
            foreach ($tablasARespaldar as $nombreDeLaTabla) {
                if (empty($nombreDeLaTabla)) {
                    continue;
                }
                $datosQueContieneLaTabla = DB::select("SELECT * FROM " . $nombreDeLaTabla . "");//$mysqli->query('SELECT * FROM `' . $nombreDeLaTabla . '`');
                //$cantidadDeCampos = $datosQueContieneLaTabla->field_count;
                $cantidadDeCamposArray = DB::select("SELECT count( COLUMN_NAME ) as campos FROM INFORMATION_SCHEMA.COLUMNS
                WHERE table_name = '" . $nombreDeLaTabla . "' AND table_schema = '" . env("DB_DATABASE") . "'");
                $cantidadDeCampos = $cantidadDeCamposArray[0]->campos;
                //$cantidadDeFilas = $mysqli->affected_rows;
                $cantidadDeFilasArray = DB::select("select count(*) as registros from " . $nombreDeLaTabla . "");
                $cantidadDeFilas = $cantidadDeFilasArray[0]->registros;
                //$esquemaDeTabla = $mysqli->query('SHOW CREATE TABLE ' . $nombreDeLaTabla);
                $esquemaDeTablaArray = DB::select('SHOW CREATE TABLE ' . $nombreDeLaTabla);
                //$filaDeTabla = $esquemaDeTabla->fetch_row();
                //$contenido .= "\n\n" . $filaDeTabla[1] . ";\n\n";
                $filaDeTablaString = json_encode($esquemaDeTablaArray[0]);
                $filaDeTablaArray = json_decode($filaDeTablaString, true);
                $contenido .= "\n\n" . $filaDeTablaArray['Create Table'] . ";\n\n";
                for ($i = 0, $contador = 0; $i < 1; $i++, $contador = 0) {
                    //$contenido .= "/*soy ciclo for i = 0 */;";
                    //while ($fila = $datosQueContieneLaTabla->fetch_row()) {
                    foreach ($datosQueContieneLaTabla as $filaCruda) {
                        //$contenido .= "/*soy foreach */;";
                        $verFilaString = json_encode($filaCruda);
                        $verFilaArray = json_decode($verFilaString, true);
                        $fila = array_values($verFilaArray);
                        //La primera y cada 100 veces
                        if ($contador % 100 == 0 || $contador == 0) {
                            $contenido .= "\nINSERT INTO " . $nombreDeLaTabla . " VALUES";
                        }
                        $contenido .= "\n(";
                        for ($j = 0; $j < $cantidadDeCampos; $j++) {
                            $fila[$j] = str_replace("\n", "\\n", addslashes($fila[$j]));
                            if (isset($fila[$j])) {
                                $contenido .= '"' . $fila[$j] . '"';
                            } else {
                                $contenido .= '""';
                            }
                            if ($j < ($cantidadDeCampos - 1)) {
                                $contenido .= ',';
                            }
                        }
                        $contenido .= ")";
                        # Cada 100...
                        if ((($contador + 1) % 100 == 0 && $contador != 0) || $contador + 1 == $cantidadDeFilas) {
                            $contenido .= ";";
                        } else {
                            $contenido .= ",";
                        }
                        $contador = $contador + 1;
                    }
                }
                $contenido .= "\n\n\n";
            }
            $contenido .= "\r\n\r\n/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;\r\n/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;\r\n/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;";

            # Se guardará dependiendo del directorio, en una carpeta llamada respaldos
            $carpeta = __DIR__ . "/respaldos";
            if (!file_exists($carpeta)) {
                mkdir($carpeta);
            }

            # Calcular un ID único
            $id = uniqid();

            # También la fecha
            $fecha = date("Y-m-d");

            # Crear un archivo que tendrá un nombre como respaldo_2018-10-22_asd123.sql
            $nombreDelArchivo = sprintf('%s/respaldo_%s_%s.sql', $carpeta, $fecha, $id);

            #Escribir todo el contenido. Si todo va bien, file_put_contents NO devuelve FALSE
            //return file_put_contents($nombreDelArchivo, $contenido) !== false;
            file_put_contents($nombreDelArchivo, $contenido) !== false;

            return redirect()->route("pantalla");

    }

    public function respaldarIndex()
    {
        
       /*  $datosQueContieneLaTabla = DB::select('SELECT * FROM `' . $nombreDeLaTabla . '`');//$mysqli->query('SELECT * FROM `' . $nombreDeLaTabla . '`');
                $cantidadDeCampos = $datosQueContieneLaTabla->field_count; */

       /*  $titles = DB::table('productos')->pluck('title');

        $campos = count($title); */
 
       /*  foreach ($titles as $title) {
            echo $title;
        } */

        /* $tablasARespaldar = [];
        $tablas = DB::select('show tables'); 
           
            foreach ($tablas as $tabla) {
                $tablasARespaldar[] = $tabla->Tables_in_sistemaventas;
            } */

        /* $nombreDeLaTabla = "users";
        $nombreDeLaBd = "sistemaventas";

        $campos = DB::select("SELECT count( COLUMN_NAME ) as campos FROM INFORMATION_SCHEMA.COLUMNS
        WHERE table_name = '" . $nombreDeLaTabla . "' AND table_schema = '" . $nombreDeLaBd . "'");
        */

        /* //prueba anterior 
        $nombreDeLaTabla = "users";
        //$registros = DB::select("SELECT * FROM '" . $nombreDeLaTabla . "'");
        $registros = DB::select('SHOW CREATE TABLE ' . $nombreDeLaTabla);

        //$extraido = json_decode($registros[0], true);
        $extraido = json_encode($registros[0]);

        $extraidoArray = json_decode($extraido, true); 

        $url = env("APP_URL");
        return Inertia::render('Respaldar', ["url" => $url, "campos" => $extraidoArray['Create Table']]);
          */   

          $nombreDeLaTabla = "clientes";

          $datosQueContieneLaTabla = DB::select("SELECT * FROM " . $nombreDeLaTabla . "");

          $cantidadDeCamposArray = DB::select("SELECT count( COLUMN_NAME ) as campos FROM INFORMATION_SCHEMA.COLUMNS
                WHERE table_name = '" . $nombreDeLaTabla . "' AND table_schema = '" . env("DB_DATABASE") . "'");
                $cantidadDeCampos = $cantidadDeCamposArray[0]->campos;

                $cont = 0;

        
                foreach ($datosQueContieneLaTabla as $filaCruda) {
                    $cont++;
                    //echo "<h2>datosQueContieneLaTabla</h2>";
                    //print_r($datosQueContieneLaTabla->fetch_row());
                    //$verFila = $fila;
                    $verFilaString = json_encode($filaCruda);
                    $verFilaArray = json_decode($verFilaString, true);
                    $fila = array_values($verFilaArray);

                };

        


        $url = env("APP_URL");
        return Inertia::render('Respaldar', ["url" => $url, "campos" => $fila]);
        

    }

    public function pantalla()
    {

        $url = env("APP_URL");

        $message = "Respaldo realizado satisfactoriamente";
       
    
       
        return Inertia::render('Pantalla', ["url" => $url, "message" => $message]);
    

    }
}
