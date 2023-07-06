<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index()
    {
        
        $posts_01 = \App\Service::where('status', 'ACTIVE')->limit(4)->get();
        // dd( $posts );
        $pageMeta = [
        // 'title' => $about->title,
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.service.index', compact('posts_01'));
    }

    public function show($slug)
    {

        $post = \App\Service::where('slug', $slug)->first();
        $title= $post->title ?? "";
        $posts = \App\Service::where('status', 'PUBLISHED')->limit(6)->get();
        // dd( $recentRoom);
        
        $page = [
            'title' => $title,
            'meta_description' => $post->meta_description,
            'image' => $post->image,
        ];
        return view('screens.service.show', compact('post', 'title', 'posts', 'page'));
    }
}
