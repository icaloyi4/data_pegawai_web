<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('master_user_relation', function (Blueprint $table) {
            $table->id();
            $table->foreignId('companie_id')->constrained();
            $table->foreignId('user_id');
            $table->foreignId('role_id');
            $table->foreignId('department_id');
            $table->foreignId('position_id');
            $table->timestamps();
            $table->string('created_by');
            $table->string('update_by');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('master_user_relation');
    }
};
