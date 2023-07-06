<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
  {
    $homeBanners = \App\Banner::where('status', 'ACTIVE')->get();
    $about = \TCG\Voyager\Models\Page::where('status', 'ACTIVE')->first();
    $services = \App\Service::where('status', 'ACTIVE')->orderBy('id', 'ASC')->get();
    $viprooms = \App\Room::where('category_id', 3)->first();
    $rooms = \App\Room::where('category_id', 2)->limit(6)->get();
    $doublerooms = \App\Room::where('category_id', 2)->limit(4)->get();
    $foods = \App\Cuisine::Where('status' , 'ACTIVE')->limit(8)->get();
    $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->limit(3)->get();
    // dd($foods);
    return view('screens.home', [
        'homeBanners' => $homeBanners,
        'about' => $about,
        'rooms' => $rooms,
        'doublerooms' => $doublerooms,
        'viprooms' => $viprooms,
        // 'room' => $room,
        'foods' => $foods,
        'services' => $services,
        'posts' => $posts    
      ]);
  }
}
