<?php

namespace App\Models;

use App\Models\User;
use App\Models\Payment;
use App\Models\Certificate;
use App\Models\Registation;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Admission extends Model
{
    //

    public function user(): HasMany
    {
        return $this->hasMany(related: User::class);
    }

    public function payment(): HasMany
    {
        return $this->hasMany(related: Payment::class);
    }


    public function education(): HasMany
    {
        return $this->hasMany(related: Education::class);
    }

    public function registration(): HasMany
    {
        return $this->hasMany(related: Registation::class);
    }
    public function certificate(): HasMany
    {
        return $this->hasMany(related: Certificate::class);
    }
}
