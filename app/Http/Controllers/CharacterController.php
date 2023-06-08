<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Character;
use App\Models\Universe;
use OpenAI;

class CharacterController extends Controller
{
    public function create(Request $request, $id)
    {
        $user = auth()->user();

        $this->validate($request, [
            'name' => 'required|string'
        ]);

        $universe = Universe::findOrFail($id);

        $character = new Character();
        $character->name = $request->input('name');
        $character->user_id = $user->id;
        $character->univers_id = $universe->id;
        $this->generateImage($character);
        $this->generateDescription($character, $universe);



        $character->save();

        return response()->json(['message' => 'Character créé avec succès', 'description' => $character->description, 'image du personnage' => $character->image_url], 201);
    }

    private function generateDescription(Character $character, Universe $universe)
    {
        $prompt = "Voici la description de mon personnage dans l'univers de " . $universe->name . ". Le nom de mon personnage est " . $character->name . ". " . "'image_url' => $character->image_url";

        $openai = OpenAI::client(env('OPENAI_API_KEY'));

        $response = $openai->completions()->create([
            'model' => 'text-ada-001',
            'prompt' => $prompt,
            'max_tokens' => 100,
            'temperature' => 0.7,
            'top_p' => 1.0,
            'n' => 1,
            'stop' => null,
        ]);

        $description = $response['choices'][0]['text'];

        $character->description = $description;
    }

    private function generateImage(Character $character)
    {
        $prompt = $character->name . " dans l'univers de " . $character->universe->name . " photo-realistic, 8k, highly detailed, full length frame, hyperrealism, cinematic, lighting, sharp focus, looking at viewver, portrait, photography, detailed skin"  ;

        $openai = OpenAI::client(env('OPENAI_API_KEY'));

        $response = $openai->images()->create([
            'prompt' => $prompt, 
            'n' => 1,
            'size' => '512x512',
        ]);

        $imageURL = $response['data'][0]['url'];

        $character->image_url = $imageURL;
    }


    public function getAllCharacters()
    {
        $characters = Character::all();

        return response()->json(['characters' => $characters], 200);
    }

    public function deleteCharacter($id)
    {
        $character = Character::findOrFail($id);

        if ($character->user_id !== auth()->user()->id) {
            return response()->json(['message' => 'Action non autorisée.'], 403);
        }

        $character->delete();

        return response()->json(['message' => 'Personnage supprimé avec succès.'], 200);
    }
}
