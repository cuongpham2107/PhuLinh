@extends('layouts.main')

@section('content')
<style type="text/css">
    .video_warper.active {
        position: relative;
        padding-bottom: 56.25%;
        padding-top: 30px;
        height: 0;
        overflow: hidden;
    }

    .video_warper.active iframe,
    .video_warper.active object,
    .video_warper.active embed {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    .list_video {
        clear: both;
    }
</style>
<div class="motopress-wrapper content-holder clearfix">
    <div class="banner_page">
        <img src="{{ Voyager::image(setting('site.breadcrumb')) }}"
            alt="Hình ảnh & Sự kiện">
        <div class="duongdan">
            <div class="container">
                <section class="title-section">
                    <h1 class="title-header">
                        <span>Hình ảnh & Sự kiện</span>
                    </h1>
                </section>
                <ol  typeof="BreadcrumbList" class="breadcrumb breadcrumb__t">
                    <li property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                            href="{{route('home')}}"><span property="name">Trang chủ</span></a>
                        <meta property="position" content="1">
                    </li>
                    <li property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                            href="{{ route('events') }}"><span property="name">Hình ảnh & Sự kiện</span></a>
                        <meta property="position" content="2">
                    </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="container" style="margin-top: 75px">
        <div class="content_page_video">
            <div class="row video_container">
                <div class="col-xs-12 col-sm-8 play_video">
                    <div class="video_warper active">
                        {!!$video->link!!}
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 video_meta">
                    <a href="{{ route('events.show', $video->slug) }}"><div class="title">{{$video->title}}</div>
                    <div class="time"><a href="{{ route('events.show', $video->slug) }}">{{ date_format($video->created_at,"d/m/Y") }}</a></div>
                    <div id="fb-root"></div>
                </div>
            </div>
            <div class="row list_video">
                {{-- @dd($events); --}}
                @foreach ($events as $event)  
                <div class="col-xs-12 col-sm-4 col-md-4 video_item" data-id="1894">
                    <div class="content_item">
                        <figure class="featured-thumbnail thumbnail">
                            <a
                                href="{{ route('events.show', $event->slug) }}">
                                <img alt="{{$event->title}}" style="height: 270px"
                                    src="{{ Voyager::image($event->image) }}" width="370"
                                    height="260" />
                                
                                @if($event->type == "video")
                                <i class="fa fa-play-circle" aria-hidden="true"></i>
                                @endif

                            </a>
                        </figure>
                        <div class="video_meta">
                            <div class="time"><a
                                    href="{{ route('events.show', $event->slug) }}"> {{ date_format($event->created_at,"d/m/Y") }}</a></div>
                            <a href="{{ route('events.show', $event->slug) }}"><div class="title">{{$event->title}}</div></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div> <!-- Posts navigation -->
            <div class="pagination pagination__posts">
                {{ $events->links('components.paginate') }}
            </div>
        </div>
    </div>
</div>
   
@stop
