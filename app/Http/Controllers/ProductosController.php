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

use App\Producto;
use App\Taza;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Illuminate\Support\Arr;

class ProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("productos.productos_index", ["productos" => Producto::all()->sortBy('descripcion')]);
    }

    public function indexReact()
    {
        $url = env("APP_URL");


        $productos = DB::table('productos')
                ->orderBy('descripcion', 'asc')
                ->get();

        $taza = Taza::find(1);

        //$numProducts = 100;
       
        return Inertia::render('ShowProducts', ["products" => $productos, "url" => $url, "taza" => $taza->taza]);
        
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("productos.productos_create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $producto = new Producto($request->input());
        $producto->saveOrFail();
        return redirect()->route("productos.index")->with("mensaje", "Producto guardado");
    
        //return var_dump($request->input());
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function show(Producto $producto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function edit(Producto $producto)
    {
        return view("productos.productos_edit", ["producto" => $producto,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Producto $producto)
    {
        $producto->fill($request->input());
        $producto->saveOrFail();
        return redirect()->route("productos.index")->with("mensaje", "Producto actualizado");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Producto $producto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Producto $producto)
    {
        $producto->delete();
        return redirect()->route("productos.index")->with("mensaje", "Producto eliminado");
    }

    public function actualizarDollar(Request $request)
    {
        $updated = DB::update('update productos set precio_venta = preciodollar * ?', [$request->dollar]);
        
    }

    public function reactTest()
    {
        return view("test");
    }

        //Inertia
        public function createInertia()
        {
            $url = env("APP_URL");
            return Inertia::render('Create', ["url" => $url]);
        }

        public function storeInertia(Request $request)
        {
            $producto = new Producto($request->input());
            $producto->saveOrFail();

            $url = env("APP_URL");

           
            return redirect()->route("indexReact");

        }

        //Inertia editar
        public function editInertia($id)
        {
            $producto = Producto::find($id);
            $url = env("APP_URL");
            return Inertia::render('Edit', ['producto' => $producto, "url" => $url]);
        }

        public function updateInertia(Request $request, $id)
        {
            $producto = Producto::findOrFail($id);
            $url = env("APP_URL");

            $producto->fill($request->input());
            $producto->saveOrFail();

            return redirect()->route("indexReact");

        }

        //Inertia delete

        public function destroyInertia($id)
    {
        $producto = Producto::findOrFail($id);
        $producto->delete();
        //return redirect()->route("productos.index")->with("mensaje", "Producto eliminado");
        return redirect()->route("indexReact");
    }

}
