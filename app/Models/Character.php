<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Character extends Model
{
    protected $fillable = ['name', 'user_id', 'univers_id', 'description'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function universe()
    {
        return $this->belongsTo(Universe::class, 'univers_id');
    }

    public function conversations()
    {
        return $this->hasMany(Conversation::class);
    }
}
