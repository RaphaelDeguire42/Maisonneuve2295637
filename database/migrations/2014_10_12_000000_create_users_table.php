<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\Etudiant;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->foreignId('etudiant_id')->constrained('etudiants')->primary()->onDelete('cascade');;
            $table->timestamps();
        });

        $students = Etudiant::all();

        foreach ($students as $student) {
            $user = new User();
            $user->id = $student->id; //
            $user->name = $student->name; //
            $user->email = $student->email; //
            $user->password = Hash::make('password');
            $user->etudiant_id = $student->id; //
            $user->save();
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
