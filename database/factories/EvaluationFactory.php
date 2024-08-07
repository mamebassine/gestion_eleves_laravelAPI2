<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Evaluation;

class EvaluationFactory extends Factory
{
    protected $model = Evaluation::class;

    public function definition()
    {
        return [
            'date' => $this->faker->date,
            'valeur' => $this->faker->numberBetween(0, 20), // Assurez-vous d'utiliser 'valeur' comme défini dans la migration
            'etudiant_id' => \App\Models\Etudiant::factory(),
            'matiere_id' => \App\Models\Matiere::factory(),
        ];
    }
}
