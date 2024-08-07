<?php

namespace App\Http\Controllers;

use App\Models\Ue;
use Illuminate\Http\Request;

class UeController extends Controller
{
    public function index()
    {
        return response()->json(Ue::all());
    }

    public function store(Request $request)
    {
        $request->validate([
            'libelle' => 'required|string|max:255',
            'date_debut' => 'required|date',
            'date_fin' => 'required|date',
            'coef' => 'required|integer',
        ]);

        $ue = Ue::create($request->all());

        return response()->json($ue, 201);
    }

    public function show($id)
    {
        $ue = Ue::findOrFail($id);
        return response()->json($ue);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'libelle' => 'sometimes|string|max:255',
            'date_debut' => 'sometimes|date',
            'date_fin' => 'sometimes|date',
            'coef' => 'sometimes|integer',
        ]);

        $ue = Ue::findOrFail($id);
        $ue->update($request->all());

        return response()->json($ue);
    }

    public function destroy($id)
    {
        $ue = Ue::findOrFail($id);
        $ue->delete();

        return response()->json(null, 204);
    }
}
