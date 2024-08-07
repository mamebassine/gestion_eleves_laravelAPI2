<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Matiere;

class MatiereSeeder extends Seeder
{
    public function run()
    {
        // Insertion de plusieurs matières fictives
        Matiere::create([
            'libelle' => 'Mathématiques',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Physique',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Chimie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Biologie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Informatique',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Économie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Philosophie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Littérature',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Histoire',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);

        Matiere::create([
            'libelle' => 'Géographie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
        ]);
    }
}
