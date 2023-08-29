<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empresa extends Model
{
    //use HasFactory;
    protected $fillable = ["nombre", "identificacion", "telefono", "direccion"];
}
