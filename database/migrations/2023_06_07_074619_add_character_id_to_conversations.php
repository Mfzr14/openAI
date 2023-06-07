<?php 

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCharacterIdToConversations extends Migration
{
    public function up()
    {
        Schema::table('conversations', function (Blueprint $table) {
            $table->unsignedBigInteger('character_id')->nullable();
            $table->foreign('character_id')->references('id')->on('characters')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::table('conversations', function (Blueprint $table) {
            $table->dropForeign(['character_id']);
            $table->dropColumn('character_id');
        });
    }
}
