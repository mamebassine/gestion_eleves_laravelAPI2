<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Etudiant>
 */
class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
{
    return [
        'prenom' => $this->faker->firstName,
        'nom' => $this->faker->lastName,
        'adresse' => $this->faker->address,
        'telephone' => $this->faker->phoneNumber,
        'matricule' => $this->faker->unique()->numerify('MATR-#####'),
        'email' => $this->faker->unique()->safeEmail,
        'mot_de_passe' => bcrypt('password'),
        'photo' => $this->faker->imageUrl(200, 200),
        'date_naissance' => $this->faker->date(),
    ];
}

}
