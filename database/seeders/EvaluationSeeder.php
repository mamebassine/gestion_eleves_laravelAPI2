<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Evaluation;

class EvaluationSeeder extends Seeder
{
    public function run()
    {
        // Insertion de plusieurs évaluations fictives
        Evaluation::create([
            'etudiant_id' => 1,
            'matiere_id' => 1,
            'date' => '2024-03-15',
            'valeur' => 85,
        ]);

        Evaluation::create([
            'etudiant_id' => 2,
            'matiere_id' => 2,
            'date' => '2024-03-16',
            'valeur' => 90,
        ]);

        Evaluation::create([
            'etudiant_id' => 3,
            'matiere_id' => 3,
            'date' => '2024-03-17',
            'valeur' => 75,
        ]);

        Evaluation::create([
            'etudiant_id' => 4,
            'matiere_id' => 4,
            'date' => '2024-03-18',
            'valeur' => 80,
        ]);

        Evaluation::create([
            'etudiant_id' => 5,
            'matiere_id' => 5,
            'date' => '2024-03-19',
            'valeur' => 95,
        ]);

        Evaluation::create([
            'etudiant_id' => 6,
            'matiere_id' => 6,
            'date' => '2024-03-20',
            'valeur' => 70,
        ]);

        Evaluation::create([
            'etudiant_id' => 7,
            'matiere_id' => 7,
            'date' => '2024-03-21',
            'valeur' => 65,
        ]);

        Evaluation::create([
            'etudiant_id' => 8,
            'matiere_id' => 8,
            'date' => '2024-03-22',
            'valeur' => 75,
        ]);

        Evaluation::create([
            'etudiant_id' => 9,
            'matiere_id' => 9,
            'date' => '2024-03-23',
            'valeur' => 85,
        ]);

        Evaluation::create([
            'etudiant_id' => 10,
            'matiere_id' => 10,
            'date' => '2024-03-24',
            'valeur' => 90,
        ]);

        Evaluation::create([
            'etudiant_id' => 11,
            'matiere_id' => 1,
            'date' => '2024-03-25',
            'valeur' => 88,
        ]);

        Evaluation::create([
            'etudiant_id' => 12,
            'matiere_id' => 2,
            'date' => '2024-03-26',
            'valeur' => 92,
        ]);

        Evaluation::create([
            'etudiant_id' => 13,
            'matiere_id' => 3,
            'date' => '2024-03-27',
            'valeur' => 77,
        ]);

        Evaluation::create([
            'etudiant_id' => 14,
            'matiere_id' => 4,
            'date' => '2024-03-28',
            'valeur' => 83,
        ]);

        Evaluation::create([
            'etudiant_id' => 15,
            'matiere_id' => 5,
            'date' => '2024-03-29',
            'valeur' => 96,
        ]);
        $this->command->info('Etudiants table seeded!');

    }
}
