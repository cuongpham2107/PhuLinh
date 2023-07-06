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
//Phòng nghỉ
Route::get('/rooms', [\App\Http\Controllers\RoomController::class , 'index'])->name('rooms');
Route::get('/collections/{slug}', [\App\Http\Controllers\RoomController::class , 'collection'])->name('cleection');
Route::get('/rooms/{slug}', [\App\Http\Controllers\RoomController::class , 'show'])->name('room.show');
//Đặt phòng
Route::get('/book', [\App\Http\Controllers\BookController::class , 'index'])->name('booking');
Route::post('/book', [\App\Http\Controllers\BookController::class , 'store'])->name('book');
//Bài viết
Route::get('/posts', [\App\Http\Controllers\PostController::class , 'index'])->name('posts');
Route::get('/posts/{slug}', [\App\Http\Controllers\PostController::class , 'show'])->name('posts.show');
Route::get('/search',[\App\Http\Controllers\PostController::class , 'search'])->name('search');
//Liên hệ
Route::get('/contact', [\App\Http\Controllers\ContactController::class , 'index'])->name('contact');
Route::post('/contacts', [\App\Http\Controllers\ContactController::class , 'store'])->name('contacts');
//Ẩm thực
Route::get('/cuisines', [\App\Http\Controllers\CuisinesController::class , 'index'])->name('cuisines');
Route::get('/cuisines/{slug}', [\App\Http\Controllers\CuisinesController::class , 'show'])->name('cuisines.show');
//Dịch vụ
Route::get('/services', [\App\Http\Controllers\ServiceController::class , 'index'])->name('service');
Route::get('/services/{slug}', [\App\Http\Controllers\ServiceController::class , 'show'])->name('service.show');

//Đa ngôn ngữ laravel
Route::get('/greeting/{locale}', [\App\Http\Controllers\LanguageController::class, 'changeLanguage'])->name('lang');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
