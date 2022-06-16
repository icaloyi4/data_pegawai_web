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
        Schema::create('master_companies', function (Blueprint $table) {
            $$table->id();
            $table->string('name');
            $table->string('phone')->nulable();
            $table->string('address')->nulable();
            $table->string('location')->nulable();
            $table->string('city')->nulable();
            $table->string('country')->nulable();
            $table->string('email')->unique();
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
        Schema::dropIfExists('master_companies');
    }
};
