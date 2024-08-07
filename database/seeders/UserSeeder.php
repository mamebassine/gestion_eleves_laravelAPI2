<?php

namespace Database\Seeders;


use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    public function run()
    {
        // Insertion des utilisateurs dans la base de données
        User::create([
            'name' => 'bassine niang',
            'email' => 'basssinen13@gmail.com',
            'password' => bcrypt('password'),
        ]);

        
    }
}
