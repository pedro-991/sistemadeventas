<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Doc_espera extends Model
{
    //use HasFactory;

    public function productos()
    {
        return $this->hasMany("App\Product_espera", "id_doc_esperas");
    }

    public function cliente()
    {
        //guaooooooooooo
        //02-03-2023 14:30
        //me acabo de dar cuenta
        //cliente es una funcion
        //y laravel accede mediante
        //venta->cliente a esta funcion
        //algo que no puede hacer react
        return $this->belongsTo("App\Cliente", "id_cliente");
    }

}
