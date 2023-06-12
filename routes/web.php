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

/* *****
********************************
*controlador HomeController
********************************
* ******/

Route::get('/respaldarIndex', 'HomeController@respaldarIndex')->name('respaldarIndex');
Route::get('/respaldar', 'HomeController@respaldar')->name('respaldar');
//ruta para mostrar mensaje Respaldo realizado
Route::get("/pantalla", "HomeController@pantalla")->name("pantalla");

/* ***
*****************************
*controlador VenderController
*****************************
* ******/


Route::post("/productocodigo", "VenderController@productoFiltro")->name("buscarProducto");
//ruta para buscar cliente rapido
Route::post("/clienteFiltro", "VenderController@clienteFiltro")->name("clienteFiltro");
Route::post("/terminarVenta", "VenderController@terminarVenta")->name("terminarVenta");
Route::post("/guardarVenta", "VenderController@guardarVenta")->name("guardarVenta");
//ruta para activar licencia
Route::post("/renovacionLicencia", "VenderController@renovacionLicencia")->name("renovacionLicencia");
//ruta para mostrar vender con react
Route::get("/indexReactVender", "VenderController@indexReact")->name("indexReactVender");



/* ***
*****************************
*controlador ClientesController
*****************************
* ******/

Route::post("/storeJavascript", "ClientesController@storeJavascript")->name("storeJavascript");
//ruta para mostrar todos los clientes con react
Route::get("/indexReactCliente", "ClientesController@indexReact")->name("indexReactCliente");
//ruta para mostrar la vista de crear clientes con react
Route::get("/createClienteInertia", "ClientesController@createInertia")->name("createClienteInertia");
//ruta para guardar cliente creado
Route::post("/saveClienteInertia", "ClientesController@storeInertia")->name("saveClienteInertia");
//ruta para mostrar la vista editar con react
Route::get('/editClienteReact/{id}', "ClientesController@editInertia");
//ruta para editar el cliente con react
Route::post('/updateClienteReact/{id}', "ClientesController@updateInertia");
//ruta para to delete with react
Route::get('/deleteClienteReact/{id}', "ClientesController@destroyInertia");

/* ***
***************************
*controlador TazaController
***************************
* ******/


Route::post("/dollar", "ProductosController@actualizarDollar")->name("dollar");
Route::post("/update", "TazaController@updateTaza")->name("update");
//actualizar taza dollar con inertia
Route::get("/updateTazaInertia/{dollar}", "TazaController@updateTazaInertia")->name("updateTazaInertia");
Route::get("/showTaza", "TazaController@showTaza")->name("showTaza");


/* *****
********************************
*controlador ProductosController
********************************
* ******/



Route::get("/reactTest", "ProductosController@reactTest")->name("reactTest");
Route::get("/indexReact", "ProductosController@indexReact")->name("indexReact");
Route::get("/createInertia", "ProductosController@createInertia")->name("createInertia");
Route::post("/saveInertia", "ProductosController@storeInertia")->name("saveInertia");
//ruta para to delete
Route::get('/delete/{id}', "ProductosController@destroyInertia");
//ruta para mostrar la vista editar con react
Route::get('/edit/{id}', "ProductosController@editInertia");
//ruta para editar el producto con react
Route::post('/update/{id}', "ProductosController@updateInertia");
//ruta para buscar compuesto
Route::post("/productoCompuesto", "ProductosController@productoFiltro")->name("productoCompuesto");


/* *****
********************************
*controlador DocEsperaController
********************************
* ******/


//ruta para mostrar documentos en espera
Route::get("/docEsperaIndex", "DocEsperaController@index")->name("docEspera.index");
//ruta para mostrar documentos en espera en react
Route::get("/docEsperaIndexReact", "DocEsperaController@indexReact")->name("docEsperaIndexReact");
//ruta para mostrar un solo documento en espera
Route::get("/docEsperaShow/{id}", "DocEsperaController@show")->name("docEspera.show");
//ruta para mostrar un solo documento en espera con react
Route::get("/docEsperaShowReact/{id}", "DocEsperaController@showReact")->name("docEsperaShowReact");
//ruta para eliminar un documento en espera
Route::delete("/docEsperaDestroy/{id}", "DocEsperaController@destroy")->name("docEspera.destroy");
//ruta para eliminar un documento en espera con react
Route::get("/docEsperaDestroyReact/{id}", "DocEsperaController@destroyReact")->name("docEsperaDestroyReact");
//ruta para mostrar las ventas en el modal
Route::get("/indexOnModal", "DocEsperaController@indexOnModal")->name("indexOnModal");
//
Route::post("/showCargarVenta", "DocEsperaController@showCargarVenta")->name("showCargarVenta");


/* *****
********************************
*controlador VentasController
********************************
* ******/

//ruta para mostrar mensaje ticket impreso
Route::get("/impreso", "VentasController@impreso")->name("impreso");
//ruta para mostrar venta en react
Route::get("/ventaIndexReact", "VentasController@indexReact")->name("ventaIndexReact");
//ruta para imprimir en la termica con react
Route::get("/ticketTestReact/{id}", "VentasController@ticketTestReact")->name("ticketTestReact");
//ruta para mostrar una sola venta con react
Route::get("/ventasShowReact/{id}", "VentasController@showReact")->name("ventasShowReact");
//ruta para eliminar una venta con react
Route::get("/ventaDestroyReact/{id}", "VentasController@destroyReact")->name("ventaDestroyReact");
//ruta para imprimir reporte x con react
Route::get("/reporteXReact", "VentasController@reporteXReact")->name("reporteXReact");
//ruta para imprimir reporte z con react
Route::get("/reporteZReact", "VentasController@reporteZReact")->name("reporteZReact");
//ruta para mostrar vista reportes con react
Route::get("/reportesReact", "VentasController@reportesReact")->name("reportesReact");
//ruta para mostrar mensaje reporte impreso
Route::get("/reporteImpreso", "VentasController@reporteImpreso")->name("reporteImpreso");
//ruta para imprimir en la termica
Route::get("/ticketTest", "VentasController@ticketTest")->name("ticketTest");
//ruta para imprimir reporte x
Route::get("/reporteX", "VentasController@reporteX")->name("reporteX");
//ruta para imprimir reporte z
Route::get("/reporteZ", "VentasController@reporteZ")->name("reporteZ");
//ruta para mostrar vista reportes
Route::get("/reportes", "VentasController@reportes")->name("reportes");
//ruta para probar IGTF
Route::get("/testIf/{id}", "VentasController@testIf")->name("testIf");


/* *****
********************************
*controlador UserController
********************************
* ******/

//ruta para mostrar todos los usuarios con react
Route::get("/indexReactUser", "UserController@indexReact")->name("indexReactUser");
//ruta para mostrar la vista de crear usuarios con react
Route::get("/createUsuarioInertia", "UserController@createReact")->name("createUsuarioInertia");
//ruta para guardar usuario creado
Route::post("/saveUsuarioInertia", "UserController@storeReact")->name("saveUsuarioInertia");
//ruta para mostrar la vista editar usuario con react
Route::get('/editUsuarioReact/{id}', "UserController@editInertia");
//ruta para editar usuario con react
Route::post('/updateUsuarioReact/{id}', "UserController@updateInertia");
//ruta para to delete with react
Route::get('/deleteUsuarioReact/{id}', "UserController@destroyInertia");


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
