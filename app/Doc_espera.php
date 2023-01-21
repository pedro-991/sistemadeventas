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
        return $this->belongsTo("App\Cliente", "id_cliente");
    }

}
