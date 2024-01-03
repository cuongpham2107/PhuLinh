<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $abouts = \TCG\Voyager\Models\Page::where('slug', 'about')->where('status', 'ACTIVE')->get();
        // @dd( $about );
        $pageMeta = [
        'title' => "Giới thiệu",
        ];

        if(!empty($about)){
            return view('screens.about', compact('about'));
        }else{
        //    dd(1);
        }

        return view('screens.abouts.index', compact('abouts', 'pageMeta' ));
    }

    public function show($slug)
    {

        $about = \TCG\Voyager\Models\Page::where('slug', $slug)->first();
        $title = $about->title ?? "";
        $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->orderBy('id', 'DESC')->limit(4)->get();
        $videos = \App\Event::where('status', 'ACTIVE')->where('type', 'video')->limit(2)->orderBy('id', 'DESC')->get();
        //    dd($about);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $about->meta_description,
            'image' => $about->image,
        ];
        return view('screens.abouts.show', compact('about', 'title', 'posts', 'pageMeta','videos'));
    }
}
