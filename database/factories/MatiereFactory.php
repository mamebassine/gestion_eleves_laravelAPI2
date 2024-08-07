<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Matiere;

class MatiereFactory extends Factory
{
    protected $model = Matiere::class;

    public function definition()
    {
        return [
            'libelle' => $this->faker->word,  // Assurez-vous que ces colonnes existent dans la migration
            'date_debut' => $this->faker->date,
            'date_fin' => $this->faker->date,
        ];
    }
}
