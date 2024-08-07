<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Evaluation extends Model
{
    // Les champs que vous pouvez remplir via des requêtes
    protected $fillable = ['etudiant_id', 'matiere_id', 'date', 'valeur'];

    // Assurez-vous que les timestamps sont activés si vous les utilisez
    public $timestamps = true;
}
