<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RoomController extends Controller
{
    public function index()
    {
        
        $rooms = \App\Room::where('status', 'ACTIVE')->paginate(9);
        // dd( $rooms );
        $pageMeta = [
        // 'title' => $about->title,
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.rooms.index', compact('rooms'));
    }

    public function collection($slug)
    {
        // dd(1);
        $collection = \App\Collection::where('slug', $slug)->first();
        // dd($collection);
        if ($collection == null) {
          return redirect()->route('home');
        }
        $rooms =\App\Room::where('category_id', $collection->id)->latest()->paginate(12);
        // dd($rooms);
        $page = [
            // 'title' => $category->name,
            // 'meta_description' => $category->name,
            // 'image' => setting('site.logo'),
        ];
        $title = $collection->title;
        return view('screens.rooms.index', compact( 'rooms', 'page', 'title'));
    }

    public function show($slug)
    {

        $room =\App\Room::where('slug', $slug)->first();
        $title= $room->title ?? "";
        $recentRoom =\App\Room::where('category_id', $room->category_id)->limit(6)->get();
        // dd( $recentRoom);
        $viprooms =\App\Room::where('category_id', 3)->get();
        $page = [
            'title' => $title,
            'meta_description' => $room->meta_description,
            'image' => $room->image,
        ];
        return view('screens.rooms.show', compact('room', 'title', 'recentRoom', 'page','viprooms'));
    }
}
