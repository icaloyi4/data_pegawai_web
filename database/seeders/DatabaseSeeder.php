<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Role::create(['role'=> 'superadmin','created_by'=>'ical','updated_by'=>'ical']);
        \App\Models\Role::create(['role'=> 'admin','created_by'=>'ical','updated_by'=>'ical']);
        \App\Models\Role::create(['role'=> 'user','created_by'=>'ical','updated_by'=>'ical']);

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
