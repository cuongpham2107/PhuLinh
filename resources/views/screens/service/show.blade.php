@php
    $menu = menu('home_menu', '_json');
    $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->paginate(6);
    // dd($menu);
@endphp
@extends('layouts.main')

@section('content')
<section class="bread-crumb">
    <div class="container">
        <ul class="breadcrumb">
            <li class="home">
                <a href="{{route('home')}}" title="Trang chủ"><span>Trang chủ</span></a>
                <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                        <path fill="currentColor"
                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                            class=""></path>
                    </svg>&nbsp;</span>
            </li>

            <li>
                <a href="{{route('service')}}" title="Hội nghị - cưới hỏi"><span>Dịch vụ</span></a>
                <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                        <path fill="currentColor"
                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                            class=""></path>
                    </svg>&nbsp;</span>
            </li>
            <li><strong><span>{{$post->title}}</span></strong></li>

        </ul>
    </div>
</section>
{{-- @dd($post); --}}
<section class="blogpage">
    <div class="container layout-article" itemscope itemtype="https://schema.org/Article">
        <div class="bg_blog">
            <article class="article-main">
                <div class="row">
                    <div class="right-content col-lg-9 col-12">
                        <div class="article-details clearfix">
                            <h1 class="article-title">{{$post->title}}</h1>
                            {{-- <div class="swiper-slide">
                                <img height="600" width="340"
                                    src="{{ Voyager::image($post->image) }}"
                                    alt="{{$post->title}}">
                                   
                            </div> --}}
                            <div class="posts">
                                <div class="time-post f">

                                    <svg aria-hidden="true" focusable="false" data-prefix="fal"
                                        data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 512 512" class="svg-inline--fa fa-clock fa-w-16">
                                        <path fill="currentColor"
                                            d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm216 248c0 118.7-96.1 216-216 216-118.7 0-216-96.1-216-216 0-118.7 96.1-216 216-216 118.7 0 216 96.1 216 216zm-148.9 88.3l-81.2-59c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h14c6.6 0 12 5.4 12 12v146.3l70.5 51.3c5.4 3.9 6.5 11.4 2.6 16.8l-8.2 11.3c-3.9 5.3-11.4 6.5-16.8 2.6z"
                                            class=""></path>
                                    </svg>

                                    {{ $post->created_at->format('d/m/Y') }}
                                </div>
                               
                            </div>
                            <div class="rte">
                                <p>{!!$post->content!!}</p>
                            </div>
                        </div>


                    </div>
                    <div class="blog_left_base col-lg-3 col-12">
                        <div class="side-right-stick">
                            <div class="aside-content aside-content-blog">



                                <div class="title-head">
                                    Danh mục
                                </div>
                                <nav class="nav-category">
                                    <ul class="nav navbar-pills">
                                        @foreach ($menu as $item)
                                          
                                                <li class=" nav-item @if ($item->url == '/' . Route::current()->uri) active @endif">
                                                    <a class="nav-link"
                                                        href="{{ asset($item->url) }}">{{ $item->title }}</a>
                                                </li>
                                           
                                        @endforeach
                                        
                                    </ul>
                                </nav>
                            </div>
                            <script>
                                $(".open_mnu").click(function() {
                                    $(this).toggleClass('cls_mn').next().slideToggle();
                                });
                            </script>

                            <div class="blog_noibat">
                                <h2 class="h2_sidebar_blog">
                                    <a href="blogs/all.html" title="Tin tức nổi bật">Tin tức nổi bật</a>
                                </h2>
                                <div class="blog_content">
                                    @foreach ($posts as $post)
                                        <div class="item clearfix">
                                            <div class="post-thumb">
                                                <a class="image-blog scale_hover"
                                                    href="{{ route('posts.show', $post->slug) }}"
                                                    title="{{ $post->title }}">

                                                    <img class="img_blog" src="{{ Voyager::image($post->image) }}"
                                                        data-src="{{ Voyager::image($post->image) }}"
                                                        alt="{{ $post->title }}">

                                                </a>
                                            </div>
                                            <div class="contentright">
                                                <h3><a title="{{ $post->title }}"
                                                        href="{{ route('posts.show', $post->slug) }}">{{ $post->title }}</a>
                                                </h3>
                                                <p class="time-post">

                                                </p>
                                            </div>
                                        </div>
                                    @endforeach


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </div>
</section>
@stop
