<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Créer un utilisateur de test
        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // Créer d'autres enregistrements
        \App\Models\Ue::factory(10)->create();
        \App\Models\Matiere::factory(20)->create();
        \App\Models\Etudiant::factory(50)->create();
        \App\Models\Evaluation::factory(100)->create();
    }
}
