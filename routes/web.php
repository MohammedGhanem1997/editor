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

Route::get('/', function () {

    $site=\App\Models\SiteControl::first();
    $seen=$site->seen+1;
    $site->seen=$seen;
    $site->save();
    return view('welcome');
});

Auth::routes(['verify' => true]);
Route::post('/upload-image', [App\Http\Controllers\GalleryController::class, 'store'])->name('image.store');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::post('/create-folder', [App\Http\Controllers\FolderController::class, 'store'])->name('folder.store');
Route::get('/{name}/show-folder', [App\Http\Controllers\FolderController::class, 'show'])->name('folder.show');
