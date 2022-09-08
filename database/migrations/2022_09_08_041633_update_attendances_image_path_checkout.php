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
        //
        Schema::table('attendances', function (Blueprint $table) {
            //
            $table->renameColumn('photo_names','photo_names_check_in');
            $table->renameColumn('image_path','image_path_check_in');
            $table->string('photo_names_check_out')->nullable();
            $table->string('image_path_check_out')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::table('attendances', function (Blueprint $table) {
            //
            $table->renameColumn('photo_names_check_in','photo_names');
            $table->renameColumn('image_path_check_in','image_path');
            $table->dropColumn('photo_names_check_out');
            $table->dropColumn('image_path_check_out');
        });
    }
};
