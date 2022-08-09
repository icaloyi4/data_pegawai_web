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

        Schema::table('users', function (Blueprint $table) {
            //
            $table->dropForeign('users_position_id_foreign');
            $table->foreign('position_id')
                ->references('id')->on('positions')
                ->nullOnDelete();
        });
        // Schema::table('positions', function (Blueprint $table) {
        //     //
        //     $table->dropForeign('positions_department_id_foreign');
        //     $table->foreign('department_id')
        //         ->references('id')->on('departments')
        //         ->nullOnDelete();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

        Schema::table('users', function (Blueprint $table) {
            //
            $table->dropForeign('users_position_id_foreign');
            $table->foreign('position_id')
                ->references('id')->on('positions')
                ->restrictOnDelete();
        });
        // Schema::table('positions', function (Blueprint $table) {
        //     //
        //     $table->dropForeign('positions_department_id_foreign');
        //     $table->foreign('department_id')
        //         ->references('id')->on('departments')
        //         ->restrictOnDelete();
        // });
    }
};
