<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Empresa;

class EmpresaController extends Controller
{
    //
    public function index() {
        $url = env("APP_URL");


        $empresas = Empresa::all();
       
        return Inertia::render('empresa/Index', ["empresas" => $empresas, "url" => $url]);
    }

    //mostrar vista create
    public function create() {
        $url = env("APP_URL");


        //$empresa = Empresa::all();
       
        return Inertia::render('empresa/EmpresaCreate', ["empresa" => "hola", "url" => $url]);
    }

    //guardar empresa
    public function store(Request $request)
    {



        $empresa = new Empresa($request->input());
        $empresa->saveOrFail();

        $url = env("APP_URL");

       
        return redirect()->route("empresa.index");

    }

    //editar empresa

    //vista editar
    public function edit($id)
    {
        $empresa = Empresa::find($id);
        $url = env("APP_URL");
        return Inertia::render('empresa/EmpresaEdit', ['empresa' => $empresa, "url" => $url]);
    }

    public function update(Request $request, $id)
    {
        $empresa = Empresa::findOrFail($id);
        $url = env("APP_URL");

        $empresa->fill($request->input());
        $empresa->saveOrFail();

        return redirect()->route("empresa.index");

    }


    //borrar empresa

    public function destroyInertia($id)
    {
        $cliente = Cliente::findOrFail($id);
        $cliente->delete();
        
        return redirect()->route("indexReactCliente");
    }
}
