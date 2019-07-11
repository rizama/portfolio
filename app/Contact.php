<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $guarded = [];
    // or
    // protected $fillable = ['name', 'email', 'message'];
}
