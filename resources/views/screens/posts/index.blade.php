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
            <li><strong><span>Bài viết - Tin tức</span></strong></li>
        </ul>
    </div>
</section>

<section class="secttion_blogs">
    <div class="container">
        <div class="title_module_index">
            <h2 class="h2">
                <a href="" title="Tin tức">Tin tức</a>
            </h2>
        </div>
    </div>
    <div class="container">

        <div class="row row-room">
            @foreach ($posts as $post)
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 col-12" style="padding-bottom: 20px;">
                <div class="item_blog_index clearfix">
                    <div class="img-blog">
                        <a class="image-blog" href="{{ route('posts.show', $post->slug) }}"
                            title="10 xu hướng thịnh hành trong ngành khách sạn 2022">

                            <img width="480" height="288"
                                src="{{ Voyager::image($post->image) }}"
                                data-src=""
                                alt="10 xu hướng thịnh hành trong ngành khách sạn 2022"
                                class=" img-responsive" />

                        </a>
                    </div>
                    <div class="blog_content">
                        <h3><a href="{{ route('posts.show', $post->slug) }}"
                                title="10 xu hướng thịnh hành trong ngành khách sạn 2022">{{$post->title}}</a></h3>
                        <p class="blog_description">{{$post->excerpt}}</p>
                        <p class="update_date clearfix">
                            <span class="user_name"></span>
                            <span class="user_date"> {{ $post->created_at->format('d/m/Y') }}</span>
                        </p>
                        <a class="btn blog_read_more" href="{{ route('posts.show', $post->slug) }}"
                            title="Đọc thêm">Ðọc
                            Thêm</a>
                    </div>
                </div>
            </div>

            @endforeach
            
        </div>
        <div class="pagenav">
            {{ $posts->links('components.paginate') }}
        </div>
    </div>
</section>
@endsection