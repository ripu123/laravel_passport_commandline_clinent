<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
//use Laravel\Passport\HasApiTokens;

class Storesecret extends Model
{
    //
	public $table = "store_secret";
    protected $fillable = [
        'name', 'secretName', 'encryptedSecret',
    ];
}
