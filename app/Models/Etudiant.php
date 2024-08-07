<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Etudiant extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'prenom', 'nom', 'adresse', 'telephone', 'matricule', 
        'email', 'mot_de_passe', 'photo', 'date_naissance'
    ];

    protected $hidden = [
        'mot_de_passe',
    ];

    public function evaluations()
    {
        return $this->hasMany(Evaluation::class);
    }
}
