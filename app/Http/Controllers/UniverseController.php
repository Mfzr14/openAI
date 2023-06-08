<?php

namespace App\Http\Controllers;

use App\Models\Universe;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class UniverseController extends Controller
{
    public function create(Request $request )
    {


        $user = auth()->user();

        try {
            $this->validate($request, [
                'name' => 'required|string|unique:universe',
            ]);
        } catch (ValidationException $e) {
            return response()->json(['message' => 'Le nom de l\'univers existe déjà.'], 422);
        }
        $universe = new Universe();
        $universe->name = $request->input('name');
        $universe->user_id = $user->id;
        $universe->save();

        return response()->json(['message' => 'Universe créé avec succès', 'n° d\'univers :' => $universe->id], 201);
    }

    public function getAllUnivers()
    {
        $univers = Universe::all();

        return response()->json(['univers' => $univers], 200);
    }

    public function updateName(Request $request, $id)
    {
    try {
        $this->validate($request, [
            'name' => 'required|string|unique:universe',
        ]);
    } catch (ValidationException $e) {
        return response()->json(['message' => 'Le nom de l\'univers existe déjà.'], 422);
    }
    
    $universe = Universe::findOrFail($id);

    if ($universe->user_id !== auth()->user()->id) {
        return response()->json(['message' => 'Action non autorisée.'], 403);
    }

    $universe->name = $request->input('name');
    $universe->save();

    return response()->json(['message' => 'Nom de l\'univers mis à jour avec succès'], 200);
}

  

    public function deleteUniverse($id)
    {
        $universe = Universe::findOrFail($id);

        if ($universe->user_id !== auth()->user()->id) {
            return response()->json(['message' => 'Action non autorisée.'], 403);
        }

        $universe->delete();

        return response()->json(['message' => 'Univers supprimé avec succès.'], 200);
    }
}
