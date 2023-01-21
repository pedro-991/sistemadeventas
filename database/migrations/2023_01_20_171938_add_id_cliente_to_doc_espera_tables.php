<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIdClienteToDocEsperaTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('doc_esperas', function (Blueprint $table) {
            //
            $table->unsignedBigInteger('id_cliente');
            $table->foreign("id_cliente")
                ->references("id")
                ->on("clientes")
                ->onDelete("cascade")
                ->onUpdate("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('doc_espera', function (Blueprint $table) {
            //
        });
    }
}
