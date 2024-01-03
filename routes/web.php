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
//Trang chủ
Route::get('/', [\App\Http\Controllers\HomeController::class , 'index'])->name('home');
//Giới thiệu
Route::get('/about', [\App\Http\Controllers\AboutController::class , 'index'])->name('about');
Route::get('/about/{slug}', [\App\Http\Controllers\AboutController::class , 'show'])->name('about.show');

//Bài viết
Route::get('/posts', [\App\Http\Controllers\PostController::class , 'index'])->name('posts');
Route::get('/posts/{slug}', [\App\Http\Controllers\PostController::class , 'show'])->name('posts.show');
Route::get('/searchPost',[\App\Http\Controllers\PostController::class , 'searchPost'])->name('searchPost');
//Liên hệ
Route::get('/contact', [\App\Http\Controllers\ContactController::class , 'index'])->name('contact');
Route::post('/contacts', [\App\Http\Controllers\ContactController::class , 'store'])->name('contacts');
//Địa điểm
Route::get('/locations', [\App\Http\Controllers\LocationController::class , 'index'])->name('locations');
Route::get('/locations/{slug}', [\App\Http\Controllers\LocationController::class , 'show'])->name('locations.show');
Route::get('/collections/{slug}', [\App\Http\Controllers\LocationController::class , 'collection'])->name('collection');
Route::get('/search',[\App\Http\Controllers\LocationController::class , 'search'])->name('searchLocation');
//Địa điểm
Route::get('/events', [\App\Http\Controllers\EventController::class , 'index'])->name('events');
Route::get('/events/{slug}', [\App\Http\Controllers\EventController::class , 'show'])->name('events.show');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
