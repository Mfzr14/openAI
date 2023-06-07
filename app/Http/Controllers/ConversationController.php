<?php
namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\Character;
use App\Models\Conversation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ConversationController extends Controller
{
    public function index()
    {
        $conversations = Conversation::all();

        return response()->json($conversations);
    }

    public function show($id)
    {
        $conversation = Conversation::with('character')->findOrFail($id);

        return response()->json($conversation);
    }

    public function create()
    {
        $characters = Character::all();
    
        return view('create-conversation', ['characters' => $characters]);
    }
    

    public function store(Request $request, Character $character)
    {
        $user = auth()->user();
        
        $conversation = new Conversation();
        $conversation->user_id = $user->id;
        $conversation->character_id = $character->id;
        $conversation->name = "discussion avec " . $character->name;
        $conversation->save();


    
        return response()->json($conversation, 201);
    }
    
    public function destroy($id)
    {
        $conversation = Conversation::findOrFail($id);
        
        if (Auth::id() !== $conversation->user_id) {
            return response()->json(['message' => 'Vous n\'êtes pas autorisé à supprimer cette conversation'], 403);
        }
        
        $conversation->delete();
    
        return response()->json(['message' => 'Conversation supprimée avec succès']);
    }

    public function getMessages($conversationId)
    {
        $conversation = Conversation::findOrFail($conversationId);

        $messages = Message::where('conversation_id', $conversation->id)->get();

        return response()->json($messages);
    }
}
