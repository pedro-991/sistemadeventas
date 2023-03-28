<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTazaColumnToDocEsperasTables extends Migration
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
            $table->decimal("taza", 9, 2)->default('1')->after('id_cliente');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('doc_esperas', function (Blueprint $table) {
            //
        });
    }
}
