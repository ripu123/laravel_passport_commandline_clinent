<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login', 'Api\AuthController@login');
Route::post('register', 'Api\AuthController@register');
Route::group(['middleware' => 'auth:api'], function(){
Route::post('get-details', 'Api\PassportController@getServerKey');
});*/

/*Route::prefix('v1')->group(function(){
 Route::post('getServerKey', 'Api\AuthController@getServerKey');
 Route::post('register', 'Api\AuthController@register');
 Route::group(['middleware' => 'auth:api'], function(){
 Route::post('getServerKeys', 'Api\AuthController@getServerKeys');
 });
});*/

Route::post('getServerKey', 'PassportController@getServerKey');
Route::post('register', 'PassportController@register');
Route::post('storeSecret', 'PassportController@storeSecret');
 
Route::middleware('auth:api')->group(function () {
    Route::get('user', 'PassportController@details');
 
    
});
