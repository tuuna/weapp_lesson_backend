<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sign extends Model
{
    protected $table = "sign";
    protected $fillable = [
        'stuid','status','date'
    ];
}
