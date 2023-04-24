<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FileRepo extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'path',
        'language',
        'etudiant_id'
    ];

    public function fileHasStudent(){
        return $this->hasOne('App\Models\Etudiant', 'id', 'etudiant_id');
    }

    public function fileHasLangue(){
        return $this->hasOne('App\Models\Langue', 'id', 'langue_id');
    }
}
