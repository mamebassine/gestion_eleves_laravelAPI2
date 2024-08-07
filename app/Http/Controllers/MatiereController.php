<?php

namespace App\Http\Controllers;

use App\Models\Matiere;
use Illuminate\Http\Request;

class MatiereController extends Controller
{
    public function index()
    {
        return response()->json(Matiere::all());
    }

    public function store(Request $request)
    {
        $request->validate([
            'libelle' => 'required|string|max:255',
            'date_debut' => 'required|date',
            'date_fin' => 'required|date',
            'ue_id' => 'required|exists:ues,id',
        ]);

        $matiere = Matiere::create($request->all());

        return response()->json($matiere, 201);
    }

    public function show($id)
    {
        $matiere = Matiere::findOrFail($id);
        return response()->json($matiere);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'libelle' => 'sometimes|string|max:255',
            'date_debut' => 'sometimes|date',
            'date_fin' => 'sometimes|date',
            'ue_id' => 'sometimes|exists:ues,id',
        ]);

        $matiere = Matiere::findOrFail($id);
        $matiere->update($request->all());

        return response()->json($matiere);
    }

    public function destroy($id)
    {
        $matiere = Matiere::findOrFail($id);
        $matiere->delete();

        return response()->json(null, 204);
    }
}
