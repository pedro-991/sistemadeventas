<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductEsperasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_esperas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("id_doc_esperas");
            $table->foreign("id_doc_esperas")
                ->references("id")
                ->on("doc_esperas")
                ->onDelete("cascade")
                ->onUpdate("cascade");
            $table->string("descripcion");
            $table->string("codigo_barras");
            $table->decimal("precio", 9, 2);
            $table->decimal("cantidad", 9, 3);
            $table->integer("iva")->default('0');
            $table->string("und")->default('');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_esperas');
    }
}
