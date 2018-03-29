<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class homeworks extends Model
{
    protected $table = 'homework';
    protected $fillable = [
        'coursename','content','teacherid','departid','subtime'
    ];
}
