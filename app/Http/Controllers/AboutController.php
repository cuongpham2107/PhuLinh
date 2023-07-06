<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $about = \TCG\Voyager\Models\Page::where('slug', 'about')->where('status', 'ACTIVE')->first();
        // @dd( $about );
        $pageMeta = [
        'title' => "Giới thiệu",
        ];

        if(!empty($about)){
            return view('screens.about', compact('about'));
        }else{
        //    dd(1);
        }

        return view('screens.about', compact('about', 'pageMeta' ));
    }
}
