<?php

namespace App\Http\Controllers;

use App\Models\Evaluation;
use Illuminate\Http\Request;

class EvaluationController extends Controller
{
    // Récupérer toutes les évaluations
    public function index()
    {
        return Evaluation::all();
    }

    // Récupérer une évaluation par ID
    public function show($id)
    {
        return Evaluation::findOrFail($id);
    }

    // Ajouter une nouvelle évaluation
    public function store(Request $request)
    {
        // Validation des données
        $request->validate([
            'etudiant_id' => 'required|exists:etudiants,id', // Vérifie que l'étudiant existe
            'matiere_id' => 'required|exists:matieres,id', // Vérifie que la matière existe
            'date' => 'required|date', // Date obligatoire au format valide
            'valeur' => 'required|integer|min:0|max:20', // Exige une valeur entière entre 0 et 20
        ]);

        // Création de l'évaluation
        $evaluation = Evaluation::create($request->all());

        // Retourne une réponse JSON avec l'évaluation créée et un code 201
        return response()->json($evaluation, 201);
    }

    // Mettre à jour une évaluation existante
    public function update(Request $request, $id)
    {
        // Recherche de l'évaluation à mettre à jour
        $evaluation = Evaluation::findOrFail($id);

        // Validation des données
        $request->validate([
            'etudiant_id' => 'sometimes|exists:etudiants,id', // Vérifie que l'étudiant existe si fourni
            'matiere_id' => 'sometimes|exists:matieres,id', // Vérifie que la matière existe si fournie
            'date' => 'sometimes|date', // Date valide si fournie
            'valeur' => 'sometimes|integer|min:0|max:20', // Exige une valeur entière entre 0 et 20 si fournie
        ]);

        // Mise à jour de l'évaluation
        $evaluation->update($request->all());

        // Retourne une réponse JSON avec l'évaluation mise à jour et un code 200
        return response()->json($evaluation, 200);
    }

    // Supprimer une évaluation
    public function destroy($id)
    {
        Evaluation::destroy($id);

        // Retourne une réponse JSON avec un code 204 (No Content)
        return response()->json(null, 204);
    }
}
