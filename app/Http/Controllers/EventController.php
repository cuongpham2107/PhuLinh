<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EventController extends Controller
{
    public function index()
    {
        $video = \App\Event::where('status', 'ACTIVE')->where('type', 'video')->orderBy('id', 'DESC')->first();
        $events = \App\Event::where('status', 'ACTIVE')->orderBy('id', 'DESC')->paginate(9);
        $pageMeta = [
        'title' => 'Hình ảnh & Sự kiện',
        ];
      return view(('screens.events.index'),compact('events' ,'pageMeta','video'));
    }

    public function show($slug)
    {
        $event = \App\Event::where('slug', $slug)->first();
        $title = $event->title ?? "";
        $events = \App\event::where('status', 'PUBLISHED')->limit(6)->get();
        $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->limit(4)->get();
        $videos = \App\Event::where('status', 'ACTIVE')->where('type', 'video')->limit(2)->orderBy('id', 'DESC')->get();
        //    dd($recentNew);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $event->desc,
            'image' => $event->image,
        ];
        return view('screens.events.show', compact('event', 'title', 'events', 'pageMeta','posts','videos'));
    }
}
