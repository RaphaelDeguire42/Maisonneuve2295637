<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;
use App\Models\Ville;

class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        // Defines the range of age for the randomly generated date of birth
        $min_age = 18;
        $max_age = 65;

        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'adress' => $this->faker->address(),
            'phone' => $this->faker->numerify('###-###-####'),
            'date_of_birth' => $this->faker->dateTimeBetween("-{$max_age} years", "-{$min_age} years")->format('Y-m-d'),
            'ville_id' => function () {
                return DB::table('villes')->pluck('id')->random();
            }
        ];
    }
}
