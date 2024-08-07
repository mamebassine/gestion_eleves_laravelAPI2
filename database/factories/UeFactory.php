<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Ue;

class UeFactory extends Factory
{
    protected $model = Ue::class;

    public function definition()
    {
        return [
            'libelle' => $this->faker->word,
            'date_debut' => $this->faker->date,
            'date_fin' => $this->faker->date,
            'coef' => $this->faker->numberBetween(1, 10),
        ];
    }
}
