<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\DB;

class ForumFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(5),
            'content' => $this->faker->text(),
            'etudiant_id' => function () {
                return DB::table('etudiants')->pluck('id')->random();
            },
            'langue_id' => function () {
                return DB::table('langues')->pluck('id')->random();
            }
        ];
    }
}
