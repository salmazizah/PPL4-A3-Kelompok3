<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'DashboardController@index')->name('getDashboard');
Route::get('dashboard', 'DashboardController@index')->name('getDashboard');

Route::group(['prefix' => 'master'], function () {
    Route::get('dataPeserta', 'Master\DataPesertaController@index')->name('getPeserta');
    Route::get('dataPenguji', 'Master\DataPengujiController@index')->name('getPenguji');
});
