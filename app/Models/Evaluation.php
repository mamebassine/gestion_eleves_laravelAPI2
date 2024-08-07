<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Evaluation extends Model
{
    protected $fillable = ['titre', 'date', 'note_maximale', 'ue_id', 'etudiant_id'];
}
