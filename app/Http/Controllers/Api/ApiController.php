<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ApiController extends Controller
{
    // Méthode pour enregistrer un nouvel utilisateur
    public function register(Request $request)
    {
        // Valider les données de la requête pour s'assurer que les champs requis sont présents et bien formatés
        $request->validate([
            "name" => "required|string", // Le nom est requis et doit être une chaîne de caractères
            "email" => "required|string|email|unique:users", // L'email est requis, doit être une chaîne de caractères, un email valide, et unique dans la table des utilisateurs
            "password" => "required", // Le mot de passe est requis
        ]);

        // Créer un nouvel utilisateur avec les données validées
        User::create([
            "name" => $request->name, // Affecte le nom fourni à l'attribut "name"
            "email" => $request->email, // Affecte l'email fourni à l'attribut "email"
            "password" => bcrypt($request->password) // Hash le mot de passe avant de le stocker dans la base de données
        ]);

        // Répondre avec un message de succès après la création de l'utilisateur
        return response()->json([
            "status" => true, // Statut de la réponse
            "message" => "Utilisateur enregistré avec succès" // Message de succès
        ]);
    }

     // Méthode pour connecter un utilisateur
     public function login(Request $request)
     {
         // Valider les données de la requête pour s'assurer que l'email et le mot de passe sont fournis
         $request->validate([
             "email" => "required|email", // L'email est requis et doit être un email valide
             "password" => "required" // Le mot de passe est requis
         ]);
 
         // Tente d'authentifier l'utilisateur avec les informations fournies et de générer un token JWT
         if (!$token = JWTAuth::attempt($request->only('email', 'password'))) {
             return response()->json([
                 "status" => false, // Statut de la réponse en cas d'échec
                 "message" => "Informations de connexion non valides" // Message d'erreur
             ]);
         }
 
         // Répondre avec un message de succès et le jeton d'authentification JWT
         return response()->json([
             "status" => true, // Statut de la réponse en cas de succès
             "message" => "L'utilisateur s'est connecté avec succès", // Message de succès
             "token" => $token // Jeton d'authentification JWT
         ]);
     }

    // Méthode pour obtenir les données du profil de l'utilisateur connecté
    public function profile()
    {
        // Récupère les informations de l'utilisateur actuellement authentifié
        $userData = Auth::user();

        // Répondre avec les données du profil utilisateur
        return response()->json([
            "status" => true, // Statut de la réponse
            "message" => "Données de profil", // Message d'information
            "data" => $userData // Données du profil de l'utilisateur
        ]);
    }

    // Méthode pour rafraîchir le jeton d'accès de l'utilisateur
    public function refreshToken()
    {
        // Rafraîchit le jeton d'accès JWT de l'utilisateur
        $token = Auth::refresh();

        // Répondre avec le nouveau jeton d'accès
        return response()->json([
            "status" => true, // Statut de la réponse
            "message" => "Nouveau jeton d'accès", // Message de succès
            "token" => $token // Nouveau jeton d'accès JWT
        ]);
    }

    // Méthode pour déconnecter l'utilisateur
    public function logout()
    {
        // Déconnecte l'utilisateur en invalidant son jeton d'accès
        Auth::logout();

        // Répondre avec un message de succès après la déconnexion
        return response()->json([
            "status" => true, // Statut de la réponse
            "message" => "L'utilisateur s'est déconnecté avec succès" // Message de succès
        ]);
    }
}
