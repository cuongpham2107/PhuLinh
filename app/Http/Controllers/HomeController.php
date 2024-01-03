<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
  {
    $homeBanners = \App\Banner::where('status', 'ACTIVE')->get();
    $locations = \App\Location::where('status', 'ACTIVE')->limit(3)->orderBy('id', 'DESC')->get();
    $about = \TCG\Voyager\Models\Page::where('status', 'ACTIVE')->where('slug', 'gioi-thieu')->first();
    $experience = \TCG\Voyager\Models\Page::where('status', 'ACTIVE')->where('slug', 'trai-nghiem')->first();
    $posts_hot = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->orderBy('id', 'DESC')->where('featured', 1)->limit(2)->get();
    $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('featured', 0)->orderBy('id', 'DESC')->limit(4)->get();
    $videos = \App\Event::where('status', 'ACTIVE')->where('type', 'video')->limit(2)->orderBy('id', 'DESC')->get();
    // dd($posts_hot);
    return view('screens.home', [
        'homeBanners' => $homeBanners,
        'about' => $about,
        'posts_hot' => $posts_hot,
        'posts' => $posts,
        'locations' => $locations,
        'experience'=> $experience,
        'videos'=> $videos  
      ]);
  }
}
