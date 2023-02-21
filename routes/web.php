<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;


Route::get('/', function () {
    return redirect()->route("home");
});
Route::get("/acerca-de", function () {
    return view("misc.acerca_de");
})->name("acerca_de.index");
Route::get("/soporte", function(){
    return redirect("https://parzibyte.me/blog/contrataciones-ayuda/");
})->name("soporte.index");

Auth::routes([
    "reset" => false,// no pueden olvidar contraseña
]);

Route::get('/home', 'HomeController@index')->name('home');
Route::post("/productocodigo", "VenderController@productoFiltro")->name("buscarProducto");
//ruta para buscar cliente rapido
Route::post("/clienteFiltro", "VenderController@clienteFiltro")->name("clienteFiltro");
Route::post("/terminarVenta", "VenderController@terminarVenta")->name("terminarVenta");
Route::post("/guardarVenta", "VenderController@guardarVenta")->name("guardarVenta");
Route::post("/dollar", "ProductosController@actualizarDollar")->name("dollar");
Route::post("/update", "TazaController@updateTaza")->name("update");
Route::get("/showTaza", "TazaController@showTaza")->name("showTaza");
Route::get("/reactTest", "ProductosController@reactTest")->name("reactTest");
Route::get("/indexReact", "ProductosController@indexReact")->name("indexReact");
Route::get("/createInertia", "ProductosController@createInertia")->name("createInertia");
Route::post("/saveInertia", "ProductosController@storeInertia")->name("saveInertia");
//ruta para mostrar documentos en espera
Route::get("/docEsperaIndex", "DocEsperaController@index")->name("docEspera.index");
//ruta para mostrar un solo documento en espera
Route::get("/docEsperaShow/{id}", "DocEsperaController@show")->name("docEspera.show");
//ruta para eliminar un documento en espera
Route::delete("/docEsperaDestroy/{id}", "DocEsperaController@destroy")->name("docEspera.destroy");
//ruta para mostrar las ventas en el modal
Route::get("/indexOnModal", "DocEsperaController@indexOnModal")->name("indexOnModal");
//
Route::post("/showCargarVenta", "DocEsperaController@showCargarVenta")->name("showCargarVenta");
//ruta para imprimir en la termica
Route::get("/ticketTest", "VentasController@ticketTest")->name("ticketTest");
//ruta para imprimir reporte x
Route::get("/reporteX", "VentasController@reporteX")->name("reporteX");
//ruta para imprimir reporte z
Route::get("/reporteZ", "VentasController@reporteZ")->name("reporteZ");
//ruta para mostrar vista reportes
Route::get("/reportes", "VentasController@reportes")->name("reportes");
//Route::post("/mostrarSesion", "VenderController@mostrarSesion")->name("mostrarSesion");
Route::get("/inertia", function () {
    return Inertia::render('Home');
 })->name("inertia");
// Permitir logout con petición get
Route::get("/logout", function () {
    Auth::logout();
    return redirect()->route("home");
})->name("logout");


Route::middleware("auth")
    ->group(function () {
        Route::resource("clientes", "ClientesController");
        Route::resource("usuarios", "UserController")->parameters(["usuarios" => "user"]);
        Route::resource("productos", "ProductosController");
        Route::get("/ventas/ticket", "VentasController@ticket")->name("ventas.ticket");
        Route::resource("ventas", "VentasController");
        Route::get("/vender", "VenderController@index")->name("vender.index");
        Route::post("/productoDeVenta", "VenderController@agregarProductoVenta")->name("agregarProductoVenta");
        
        Route::delete("/productoDeVenta", "VenderController@quitarProductoDeVenta")->name("quitarProductoDeVenta");
        Route::post("/terminarOCancelarVenta", "VenderController@terminarOCancelarVenta")->name("terminarOCancelarVenta");
    });
