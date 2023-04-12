<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Inertia\Inertia;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view("usuarios.usuarios_index", ["usuarios" => User::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view("usuarios.usuarios_create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $usuario = new User($request->input());
        $usuario->password = Hash::make($usuario->password);
        $usuario->saveOrFail();
        return redirect()->route("usuarios.index")->with("mensaje", "Usuario guardado");
    }

    /**
     * Display the specified resource.
     *
     * @param \App\User $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\User $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $user->password = "";
        return view("usuarios.usuarios_edit", ["usuario" => $user,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\User $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $user->fill($request->input());
        $user->password = Hash::make($user->password);
        $user->saveOrFail();
        return redirect()->route("usuarios.index")->with("mensaje", "Usuario actualizado");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\User $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return redirect()->route("usuarios.index")->with("mensaje", "Usuario eliminado");
    }

    /* **************************
    *****************************
    ** CRUD CON INERTIA Y REACT
    *****************************
    ***************************** */


    public function indexReact()
    {

        $url = env("APP_URL");
        return Inertia::render('UsuariosShow', ["users" => User::all(), "url" => $url]);
        
    }

    //crear usuarios

    public function createReact()
    {
        $url = env("APP_URL");
        return Inertia::render('UsuariosCreate', ["url" => $url]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function storeReact(Request $request)
    {
        $usuario = new User($request->input());
        $usuario->password = Hash::make($usuario->password);
        $usuario->saveOrFail();
        return redirect()->route("indexReactUser");
    }

    //editar clientes

    //Inertia editar
    public function editInertia($id)
    {
        $usuario = User::find($id);
        $url = env("APP_URL");
        return Inertia::render('UsuariosEdit', ['usuario' => $usuario, "url" => $url]);
    }

    public function updateInertia(Request $request, $id)
    {
        $usuario = User::findOrFail($id);

        $usuario->fill($request->input());
        $usuario->saveOrFail();

        return redirect()->route("indexReactUser");

    }


    //Inertia delete

    public function destroyInertia($id)
    {
        $usuario = User::findOrFail($id);
        $usuario->delete();
        
        return redirect()->route("indexReactUser");
    }

}
