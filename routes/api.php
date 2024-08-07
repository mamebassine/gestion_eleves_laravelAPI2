<?php

use Illuminate\Http\Request;
use App\Http\Controllers\Api\ApiController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\EvaluationController;
use App\Http\Controllers\MatiereController;
use App\Http\Controllers\UeController;

// Route pour obtenir l'utilisateur authentifié avec le middleware 'auth:sanctum'
// Ce middleware s'assure que l'utilisateur est authentifié avant de pouvoir accéder à cette route
Route::get('/user', function (Request $request) {
    return $request->user(); // Retourne les informations de l'utilisateur authentifié
})->middleware('auth:sanctum');

// Route pour l'enregistrement d'un nouvel utilisateur
// Appelle la méthode 'register' du 'ApiController' lorsque cette route est accédée via une requête POST
Route::post('register', [ApiController::class, 'register']);

// Route pour la connexion d'un utilisateur
// Appelle la méthode 'login' du 'ApiController' lorsque cette route est accédée via une requête POST
Route::post('login', [ApiController::class, 'login']);

// Groupe de routes protégées par le middleware 'auth:api'
// Ces routes nécessitent que l'utilisateur soit authentifié via l'API pour y accéder
Route::group(['middleware' => ['auth:api']], function () {
    // Route pour obtenir les informations du profil de l'utilisateur connecté
    Route::get('profile', [ApiController::class, 'profile']);
    
    // Route pour rafraîchir le jeton d'accès de l'utilisateur
    Route::get('refresh', [ApiController::class, 'refreshToken']);
    
    // Route pour déconnecter l'utilisateur
    Route::get('logout', [ApiController::class, 'logout']);
});





Route::apiResource('etudiants', EtudiantController::class);


Route::apiResource('evaluations', EvaluationController::class);
Route::apiResource('matieres', MatiereController::class);
Route::apiResource('ues', UeController::class);



