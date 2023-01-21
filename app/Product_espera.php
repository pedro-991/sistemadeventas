<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_espera extends Model
{
    //use HasFactory;
    
    protected $table = "product_esperas";
    protected $fillable = ["id_doc_esperas", "descripcion", "codigo_barras", "precio", "cantidad", "iva", "und"];

}
