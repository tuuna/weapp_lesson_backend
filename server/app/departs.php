<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class departs extends Model
{
    protected $table = 'departs';
    protected $fillable = [
        'project'
    ];
}
