<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'content',
        'language',
        'etudiant_id'
    ];

    public function postHasAuthor(){
        return $this->hasOne('App\Models\Etudiant', 'id', 'etudiant_id');
    }

    public function postHasLangue(){
        return $this->hasOne('App\Models\Langue', 'id', 'langue_id');
    }
}
