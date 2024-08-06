<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use PHPOpenSourceSaver\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasFactory, Notifiable;

    // Définition des attributs qui peuvent être remplis par des valeurs fournies par l'utilisateur
    protected $fillable = [
        'name',      // Le nom de l'utilisateur
        'email',     // L'adresse email de l'utilisateur
        'password',  // Le mot de passe de l'utilisateur (qui sera hashé avant d'être stocké)
    ];

    // Définition des attributs qui doivent être cachés lors de la conversion du modèle en tableau ou en JSON
    protected $hidden = [
        'password',        // Cache le mot de passe pour qu'il ne soit pas exposé publiquement
        'remember_token',  // Cache le token "se souvenir de moi"
    ];

    // Définition des types de données pour certains attributs
    protected function casts() : array
    {
        return [
            'email_verified_at' => 'datetime', // Convertit la date de vérification de l'email en un objet DateTime
            'password' => 'hashed',            // Indique que le mot de passe doit être hashé automatiquement
        ];
    }

    // Méthode requise par l'interface JWTSubject pour obtenir l'identifiant unique de l'utilisateur (JWT Identifier)
    public function getJWTIdentifier()
    {
        return $this->getKey(); // Retourne la clé primaire de l'utilisateur (généralement l'ID)
    }

    // Méthode requise par l'interface JWTSubject pour définir les revendications personnalisées dans le JWT (JWT Custom Claims)
    public function getJWTCustomClaims()
    {
        return []; // Aucun claim personnalisé n'est ajouté ici, renvoie un tableau vide
    }
}
