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

Route::group(['domain' => 'hanoi.laraveltest.local.vn', 'namespace' => 'Hanoi'], function () {
    Route::get('/', 'HanoiController@index');
});

Route::group(['domain' => 'hcm.laraveltest.local.vn',  'namespace' => 'Hcm'], function () {
    Route::get('/', 'HcmController@index');
});

Route::group(['domain' => 'laraveltest.local.vn'], function () {
    Auth::routes();
    Route::get('/', function () {
        return view('home');
    });

    //guest
    Route::get('/', function () {
        return redirect('/home');
    });
    Route::get('/', 'Auth\LoginController@showLoginForm');
    Route::get('/logout', 'Auth\LoginController@logout');
    Route::get('home', 'HomeController@index');

    Route::match(['get', 'post'], 'chat', 'ChatController@index');
    Route::get('chat2', 'ChatController@index2');
    Route::post('chat/create', ['uses' => 'ChatController@create', 'as' => 'chat.create']);
    Route::get('chat/get', ['uses' => 'ChatController@get', 'as' => 'chat.get']);

});

