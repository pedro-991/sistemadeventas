<?php

namespace App\Http\Controllers;

use App\Doc_espera;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DocEsperaController extends Controller
{
    //
    public function index()
    {
        $ventasConTotales = Doc_espera::join("product_esperas", "product_esperas.id_doc_esperas", "=", "doc_esperas.id")
            ->select("doc_esperas.*", DB::raw("sum(product_esperas.cantidad * product_esperas.precio) as total"))
            ->groupBy("doc_esperas.id", "doc_esperas.created_at", "doc_esperas.updated_at", "doc_esperas.id_cliente")
            ->get();
        return view("ventas.ventas_espera_index", ["ventas" => $ventasConTotales,]);
    }

    public function show(Request $request)
    {
        $venta = Doc_espera::with(["productos", "cliente"])->findOrFail($request->id);
        $total = 0;
        foreach ($venta->productos as $producto) {
            $total += $producto->cantidad * $producto->precio;
        }
        return view("ventas.ventas_espera_show", [
            "venta" => $venta,
            "total" => $total,
        ]);
    }

    public function destroy(Request $request)
    {
        $venta = Doc_espera::findOrFail($request->id);
        $venta->delete();
        return redirect()->route("docEspera.index")
            ->with("mensaje", "Venta en espera eliminada");
    }
}
