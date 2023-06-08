<?php 

namespace App\Http\Controllers;

use OpenAI;
use App\Models\Message;
use App\Models\Universe;
use App\Models\Character;
use App\Models\Conversation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function store(Request $request, $conversationId)
{
    $request->validate([
        'content' => 'required|string',
    ]);

    $user = auth()->user();

    $conversation = Conversation::where('id', $conversationId)
                                ->where('user_id', $user->id)
                                ->first();

    if (!$conversation) {
        return response()->json(['message' => 'Conversation introuvable ou non autorisée'], 404);
    }

    $message = new Message();
    $message->user_id = $user->id;
    $message->conversation_id = $conversation->id;
    $message->content = $request->input('content');
    $message->save();

    $character = Character::find($conversation->character_id);
    $universe = Universe::find($character->univers_id);
    $prompt = $message->content;
    $context = "$character->name est un personnage de l'univers $universe->name. Mets-toi dans la peau de $character->name dans l'univers $universe->name Voici la question de l'utilisateur : $prompt";

    $openai = OpenAI::client(env('OPENAI_API_KEY'));

    $response = $openai->completions()->create([
        'model' => 'text-ada-001',
        'prompt' => $context,
        'max_tokens' => 50,
    ]);

    $aiMessage = new Message();
    $aiMessage->user_id = 2; 
    $aiMessage->conversation_id = $conversation->id;
    $aiMessage->content = $response['choices'][0]['text'];
    $aiMessage->content = str_replace("\n", " ", $aiMessage->content);
    $aiMessage->save();

    return response()->json(['message' => 'Message créé avec succès contenu du message', 'openAI' => $aiMessage->content], 201);
}

    
}
