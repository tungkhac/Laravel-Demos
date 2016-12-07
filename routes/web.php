<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('home');
});


Auth::routes();
//guest
Route::get('/', function () {
    return redirect('/home');
});
Route::any('chat', 'ChatController@index');
Route::get('chat2', 'ChatController@index2');
Route::post('chat/create', ['uses' => 'ChatController@create', 'as' => 'chat.create']);
Route::get('chat/get', ['uses' => 'ChatController@get', 'as' => 'chat.get']);
