<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
      $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->orderBy('id', 'DESC')->paginate(6);
      $pageMeta = [
        'title' => 'Tin tức bài viết',
        ];
      return view(('screens.posts.index'),compact('posts', 'pageMeta'));
    }

    public function show($slug)
    {

        $post = \TCG\Voyager\Models\Post::where('slug', $slug)->first();
        $title = $post->title ?? "";
        $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->orderBy('id', 'DESC')->where('category_id', 1)->limit(6)->get();
        $videos = \App\Event::where('status', 'ACTIVE')->where('type', 'video')->limit(2)->orderBy('id', 'DESC')->get();
        $pageMeta = [
            'title' => $title,
            'meta_description' => $post->meta_description,
            'image' => $post->image,
        ];
        return view('screens.posts.show', compact('post', 'title', 'posts', 'pageMeta','videos'));
    }

    public function searchPost(Request $request)
    {
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $posts = \TCG\Voyager\Models\Post::where('title', 'LIKE', '%' . $key . '%')->paginate(6);
        return view('screens.posts.index', [
            'posts' => $posts,

        ]);
    }
}
