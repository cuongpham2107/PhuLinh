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

                <li><strong><span>Dịch vụ</span></strong></li>

            </ul>
        </div>
    </section>
    <section class="page">
        <div class="container">
            <div class="wrap_background_aside">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 hidden">
                        <div class="page-title category-title ">
                            <h1 class="title-head">Dịch vụ</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page_blogs">
            <div class="container">
                <div class="title_module_index">
                    <h2 class="h2">
                        <a href="suc-khoe-lam-dep.html" title="Sức khỏe - Làm đẹp">Sức khỏe - Làm đẹp</a>
                    </h2>
                </div>
            </div>
            <div class="container">

                <div class="row row-room">
                    @foreach ($posts_01 as $post)
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 col-12">
                        <div class="item_blog_page clearfix">
                            <div class="img-blog">
                                <a class="image-blog" href="{{ route('service.show', $post->slug) }}"
                                    title="{{$post->title}}">

                                    <img src="{{ Voyager::image($post->image) }}"
                                        data-src="{{ Voyager::image($post->image) }}"
                                        alt="{{$post->title}}"
                                        class="img-responsive" />

                                </a>
                            </div>
                            <div class="blog_content">
                                <h3><a href="{{ route('service.show', $post->slug) }}"
                                        title="{{$post->title}}">{{$post->title}}</a></h3>
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>

            </div>
        </div>

    </section>

   
@stop
