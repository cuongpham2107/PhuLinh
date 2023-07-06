<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CuisinesController extends Controller
{
    public function index()
    {
        
        $foods = \App\Cuisine::Where('status' , 'ACTIVE')->paginate(12);
        // dd( $rooms );
        $pageMeta = [
        'title' => 'Ẩm thực',
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.cuisines.index', compact('foods'));
    }

    public function show($slug)
    {

        $cuisine = \App\Cuisine::where('slug', $slug)->first();
        $title = $cuisine->title ?? "";
        $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->limit(6)->get();
        $cuisines = \App\Cuisine::Where('status' , 'ACTIVE')->paginate(12);
        //    dd($cuisine);
        $pageMeta = [
            'title' => $title,  
            'image' => $cuisine->image,
        ];
        return view('screens.cuisines.show', compact('cuisine', 'title', 'posts', 'pageMeta', 'cuisines'));
    }
}
