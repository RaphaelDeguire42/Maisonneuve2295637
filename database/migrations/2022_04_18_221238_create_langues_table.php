<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\Langue;

class CreateLanguesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('langues', function (Blueprint $table) {
            $table->id();
            $table->string('langue');
            $table->string('langue_fr');
            $table->timestamps();
        });

        $languages = [['Français', 'French'],['Anglais', 'English']];
        foreach ($languages as $langue) {
            $langue = new Langue();
            $langue->langue_fr = $langue[0];
            $langue->langue = $langue[1];
            $langue->save();
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('langues');
    }
}
