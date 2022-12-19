<?php

namespace App\Http\Controllers;

use App\Taza;
use Illuminate\Http\Request;

class TazaController extends Controller
{
    //
    public function index()
    {
       
        //return view("vender.vender", [ ]);
    }

    public function updateTaza(Request $request)
    {
        Taza::where('id', 1)->update(['taza'=>$request->dollar]);
        //Taza::where('id', 1)->update(['taza'=>'15.00']);
       
        //return view("vender.vender", [ ]);
        //return "hola";
    }

    public function showTaza()
    {
        $taza = Taza::find(1);


        return $taza->taza;
    }
}
