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
            $table->renameColumn('notes','notes_check_in');
            $table->string('notes_check_out')->nullable();
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
            $table->renameColumn('notes_check_in','notes');
            $table->dropColumn('notes_check_out')->nullable();
        });
    }
};
