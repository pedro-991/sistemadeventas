<?php

namespace App\Http\Controllers;

use App\Cliente;
use Illuminate\Http\Request;
use Inertia\Inertia;

class ClientesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("clientes.clientes_index", ["clientes" => Cliente::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("clientes.clientes_create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        (new Cliente($request->input()))->saveOrFail();
        return redirect()->route("clientes.index")->with("mensaje", "Cliente agregado");
    }

    public function storeJavascript(Request $request)
    {
        //(new Cliente($request->input()))->saveOrFail();
        //return redirect()->route("clientes.index")->with("mensaje", "Cliente agregado");
    
        $cliente = new Cliente($request->input());
        $cliente->saveOrFail();
        $idCliente = $cliente->id;

        return $cliente;
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Cliente $cliente
     * @return \Illuminate\Http\Response
     */
    public function show(Cliente $cliente)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Cliente $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit(Cliente $cliente)
    {
        return view("clientes.clientes_edit", ["cliente" => $cliente]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Cliente $cliente
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cliente $cliente)
    {
        $cliente->fill($request->input());
        $cliente->saveOrFail();
        return redirect()->route("clientes.index")->with("mensaje", "Cliente actualizado");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Cliente $cliente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cliente $cliente)
    {
        $cliente->delete();
        return redirect()->route("clientes.index")->with("mensaje", "Cliente eliminado");
    }

    /* ************************************
    *************************************** 
    de aqui para abajo funciones para react
    ***************************************
    ************************************* */

    //mostrar clientes

    public function indexReact()
    {
        //return view("clientes.clientes_index", ["clientes" => Cliente::all()]);

        $url = env("APP_URL");


        $clientes = Cliente::all();
       
        return Inertia::render('ClientesShow', ["clientes" => $clientes, "url" => $url]);
        
        
    }

    //crear clientes

    //Inertia crear clientes
    public function createInertia()
    {
        $url = env("APP_URL");
        return Inertia::render('ClientesCreate', ["url" => $url]);
    }

    public function storeInertia(Request $request)
    {



        $cliente = new Cliente($request->input());
        $cliente->saveOrFail();

        $url = env("APP_URL");

       
        return redirect()->route("indexReactCliente");

    }

    //editar clientes

    //Inertia editar
    public function editInertia($id)
    {
        $cliente = Cliente::find($id);
        $url = env("APP_URL");
        return Inertia::render('ClientesEdit', ['cliente' => $cliente, "url" => $url]);
    }

    public function updateInertia(Request $request, $id)
    {
        $cliente = Cliente::findOrFail($id);
        $url = env("APP_URL");

        $cliente->fill($request->input());
        $cliente->saveOrFail();

        return redirect()->route("indexReactCliente");

    }


    //Inertia delete

    public function destroyInertia($id)
    {
        $cliente = Cliente::findOrFail($id);
        $cliente->delete();
        
        return redirect()->route("indexReactCliente");
    }


}
