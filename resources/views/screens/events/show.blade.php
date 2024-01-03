@php
    $menu = menu('home_menu', '_json');
    $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->paginate(6);
    // dd($menu);
@endphp
@extends('layouts.main')

@section('content')
<div class="motopress-wrapper content-holder">
    <div class="content_page content_page_single_project">
        <div class="banner_page">
            <img src="{{ Voyager::image(setting('site.breadcrumb')) }}"
                alt="{{$event->title}}">
            <div class="duongdan">
                <div class="container">
                    <section class="title-section">
                        <h1 class="title-header">
                            <span>{{$event->title}}</span>
                        </h1>
                    </section>
                    <ol  typeof="BreadcrumbList" class="breadcrumb breadcrumb__t">
                        <li property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                                href="{{route('home')}}"><span property="name">Trang chủ</span></a>
                            <meta property="position" content="1">
                        </li>
                        <li property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                                href="{{ route('events.show', $event->slug) }}"><span property="name">{{$event->title}}</span></a>
                            <meta property="position" content="2">
                        </li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-9 l_layout">
                    
                    <article id="post-1123"
                        class="post__holder post-1123 projects type-projects status-publish has-post-thumbnail hentry project-category-completed" style="margin-top: 50px">
                        <div id="fontsize" class="post_content">
                            <div class="wow fadeInUp content_page_post">
                                <p><b>{{$event->title}}</b></p>
                                @if($event->type == "video")
                                    {!!$event->link!!}        
                                @else
                                    <img src="{{ Voyager::image($event->image) }}" alt="{{$event->title}}">
                                @endif
                                
                                <p>{!!$event->body!!}</p>
                                
                            </div>
                        </div>
                    </article>
                    <div class="top_share">
                        <div class="back_top"></div>
                        <div class="share_link">
                            <ul>
                                <li>Chia sẻ:</li>
                                <li><a style="color: #0035ff;" class="face" href="https://www.facebook.com/sharer/sharer.php?u={{url()->current()}}"><i class="fa fa-facebook-f"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                @include('components.sidebar')
            </div>
        </div>
    </div>
</div>
@stop
