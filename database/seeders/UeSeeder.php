<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Ue;

class UeSeeder extends Seeder
{
    public function run()
    {
        // Insertion de plusieurs unités d'enseignement fictives
        Ue::create([
            'libelle' => 'Algèbre',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 3,
        ]);

        Ue::create([
            'libelle' => 'Chimie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 4,
        ]);

        Ue::create([
            'libelle' => 'Physique',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 3,
        ]);

        Ue::create([
            'libelle' => 'Biologie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 4,
        ]);

        Ue::create([
            'libelle' => 'Mathématiques',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 5,
        ]);

        Ue::create([
            'libelle' => 'Informatique',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 3,
        ]);

        Ue::create([
            'libelle' => 'Économie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 2,
        ]);

        Ue::create([
            'libelle' => 'Philosophie',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 2,
        ]);

        Ue::create([
            'libelle' => 'Littérature',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 3,
        ]);

        Ue::create([
            'libelle' => 'Histoire',
            'date_debut' => '2024-01-01',
            'date_fin' => '2024-06-30',
            'coef' => 2,
        ]);
    }
}
