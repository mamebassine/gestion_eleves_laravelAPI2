<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    public function index()
    {
        return Etudiant::all();
    }

    public function store(Request $request)
{
    // Validation des données
    $request->validate([
        'prenom' => 'required|string|max:255',
        'nom' => 'required|string|max:255',
        'adresse' => 'required|string',
        'telephone' => 'required|string',
        'matricule' => 'required|string|unique:etudiants,matricule',
        'email' => 'required|email|unique:etudiants,email',
        'mot_de_passe' => 'required|string',
        'photo' => 'nullable|string',
        'date_naissance' => 'required|date',
    ]);

    // Création de l'étudiant
    $etudiantData = $request->all();
    $etudiantData['mot_de_passe'] = bcrypt($request->mot_de_passe);
    $etudiant = Etudiant::create($etudiantData);

    // Retourne une réponse JSON avec l'étudiant créé et un message de succès
    return response()->json([
        'message' => 'Étudiant créé avec succès.',
        'etudiant' => $etudiant
    ], 201);
}


    public function update(Request $request, $id)
    {
        $etudiant = Etudiant::findOrFail($id);
        $etudiant->update($request->all());
        return response()->json($etudiant, 200);
    }

    public function destroy($id)
{
    $etudiant = Etudiant::findOrFail($id);
    $etudiant->delete();
    return response()->json(null, 204);
}

}

