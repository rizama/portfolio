<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Profile extends Model
{
    public function getDateOfBirthAttribute($value)
    {
        $dob = Carbon::parse($value)->toFormattedDateString();
        return $dob;
    }
}
