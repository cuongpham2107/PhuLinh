<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LocationController extends Controller
{
    public function index()
    {
        $locations = \App\Location::where('status', 'ACTIVE')->orderBy('id', 'DESC')->paginate(6);
        $pageMeta = [
        'title' => 'Cẩm nang du lịch',
        ];
      return view(('screens.locations.index'),compact('locations', 'pageMeta'));
    }

    public function collection($slug)
    {
        // dd(1);
        $collection = \App\Collection::where('slug', $slug)->first();
        // dd($collection);
        if ($collection == null) {
          return redirect()->route('home');
        }
        $locations = \App\Location::where('collection_id', $collection->id)->latest()->paginate(12);
        // dd($locations);
        $pageMeta = [
            'title' => 'Cẩm nang du lịch',
            ];
        $title = $collection->title;
        return view('screens.locations.index', compact( 'locations', 'pageMeta', 'title'));
    }

    public function show($slug)
    {

        $location = \App\Location::where('slug', $slug)->first();
        $title = $location->title ?? "";
        $locations = \App\Location::where('status', 'PUBLISHED')->limit(6)->get();
        $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->orderBy('id', 'DESC')->limit(4)->get();
        $videos = \App\Event::where('status', 'ACTIVE')->where('type', 'video')->limit(2)->orderBy('id', 'DESC')->get();
        //    dd($recentNew);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $location->desc,
            'image' => $location->image,
        ];
        return view('screens.locations.show', compact('location', 'title', 'locations', 'pageMeta','posts','videos'));
    }

    public function search(Request $request)
    {
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $locations = \App\Location::where('title', 'LIKE', '%' . $key . '%')->paginate(6);
        return view('screens.locations.index', [
            'locations' => $locations,

        ]);
    }
}
