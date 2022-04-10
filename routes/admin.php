<?php
use Illuminate\Support\Facades\Route;

Route::get('/admin', function () {
    return view('admin.index');
})->name('home');

Route::group( ['prefix'=>'user', 'as'=>'user.'],function() {

    Route::get('/view-all-users', [App\Http\Controllers\Admin\UserController::class, 'index'])->name('index');
    Route::get('/create-new-user', [App\Http\Controllers\Admin\UserController::class, 'create'])->name('create');
    Route::post('/store', [App\Http\Controllers\Admin\UserController::class, 'store'])->name('store');
    Route::put('/update/{id}', [App\Http\Controllers\Admin\UserController::class, 'update'])->name('update');
    Route::get('/{name}/edit', [App\Http\Controllers\Admin\UserController::class, 'edit'])->name('edit');
    Route::post('/send-email', [App\Http\Controllers\Admin\UserController::class, 'sendMail'])->name('send-email');
    Route::get('/{id}/show', [App\Http\Controllers\Admin\UserController::class, 'show'])->name('show');
    Route::get('/{name}/show/{id}', [App\Http\Controllers\Admin\UserController::class, 'showfolder'])->name('showfolder');
    Route::get('/{id}/delete', [App\Http\Controllers\Admin\UserController::class, 'delete'])->name('delete');
});


Route::group( ['prefix'=>'admin', 'as'=>'admin.'],function() {

    Route::get('/view-all-admins', [App\Http\Controllers\Admin\AdminController::class, 'index'])->name('index');
    Route::get('/create-new-admin', [App\Http\Controllers\Admin\AdminController::class, 'create'])->name('create');
    Route::post('/store', [App\Http\Controllers\Admin\AdminController::class, 'store'])->name('store');
    Route::put('/update/{id}', [App\Http\Controllers\Admin\AdminController::class, 'update'])->name('update');
    Route::get('/{name}/edit', [App\Http\Controllers\Admin\AdminController::class, 'edit'])->name('edit');
    Route::post('/send-email', [App\Http\Controllers\Admin\AdminController::class, 'sendMail'])->name('send-email');
    Route::get('/{id}/show', [App\Http\Controllers\Admin\AdminController::class, 'show'])->name('show');
    Route::get('/{name}/show/{id}', [App\Http\Controllers\Admin\AdminController::class, 'showfolder'])->name('showfolder');
    Route::get('/{id}/delete', [App\Http\Controllers\Admin\AdminController::class, 'delete'])->name('delete');
});


Route::group( ['prefix'=>'settings', 'as'=>'setting.'],function() {

    Route::get('/SEO', [App\Http\Controllers\Admin\SettingController::class, 'seo'])->name('seo');
    Route::post('/seo-post', [App\Http\Controllers\Admin\SettingController::class, 'socialPost'])->name('seo.post');
   Route::get('/site-control', [App\Http\Controllers\Admin\SettingController::class, 'siteControl'])->name('site-control');
    Route::post('/site-control-post', [App\Http\Controllers\Admin\SettingController::class, 'siteControlPost'])->name('site-control.post');

});
