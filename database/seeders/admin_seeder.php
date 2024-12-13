<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class admin_seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'first_name' => 'Mzaad',
            'last_name' => 'Admin',
            'email' => 'admin@mzaad.com',
            'password' => bcrypt('Hello@2024'),
            'role_id' => 1,
            'is_active' => 1
        ]);
    }
}
