<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\UniverseController;
use App\Http\Controllers\CharacterController;
use App\Http\Controllers\ConversationController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::group(['middleware' => 'api'], function () {

    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::post('me', [AuthController::class, 'me']);
    Route::post('universe/{id}/character', [CharacterController::class, 'create']);
    Route::post('universe', [UniverseController::class, "create"]);
    Route::get('/users', [UserController::class, 'getAllUsers']);
    Route::get('/univers', [UniverseController::class, 'getAllUnivers']);
    Route::get('/characters', [CharacterController::class, 'getAllCharacters']);
    Route::delete('/characters/{id}', [CharacterController::class, 'deleteCharacter']);
    Route::delete('/univers/{id}', [UniverseController::class, 'deleteUniverse']);
    Route::post('/conversation/{character}', [ConversationController::class, 'store']);
    Route::delete('/conversation/{id}', [ConversationController::class, 'destroy']);
    Route::post('/conversation/{conversationId}/messages', [MessageController::class, 'store']);
    Route::get('/conversation/{conversationId}/messages', [ConversationController::class, 'getMessages']);



});
    Route::post('register', [UserController::class, "register"]);
    Route::post('/characters/{character}/messages', [CharacterController::class, 'createMessage']);

    



