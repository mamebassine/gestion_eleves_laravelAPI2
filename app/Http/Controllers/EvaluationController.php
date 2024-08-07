<?php


namespace App\Http\Controllers;

use App\Models\Evaluation;
use Illuminate\Http\Request;

class EvaluationController extends Controller
{
    public function index()
    {
        return Evaluation::all();
    }

    public function show($id)
    {
        return Evaluation::findOrFail($id);
    }

    public function store(Request $request)
    {
        $evaluation = Evaluation::create($request->all());
        return response()->json($evaluation, 201);
    }



    

    public function update(Request $request, $id)
    {
        $evaluation = Evaluation::findOrFail($id);
        $evaluation->update($request->all());
        return response()->json($evaluation, 200);
    }

    public function destroy($id)
    {
        Evaluation::destroy($id);
        return response()->json(null, 204);
    }
}


