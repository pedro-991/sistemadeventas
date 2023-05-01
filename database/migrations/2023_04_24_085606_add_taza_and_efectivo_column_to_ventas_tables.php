<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTazaAndEfectivoColumnToVentasTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ventas', function (Blueprint $table) {
            //
            $table->decimal("taza", 9, 2)->default('1')->after('id_cliente');
            $table->decimal("efectivo", 9, 2);
            $table->decimal("total", 9, 2);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ventas', function (Blueprint $table) {
            //
            $table->dropColumn(['taza', 'efectivo', 'total']);
        });
    }
}
