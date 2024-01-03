@extends('layouts.main')

@section('content')
<div class="motopress-wrapper content-holder clearfix">
    <div class="banner_page">
        <img src="{{ Voyager::image(setting('site.breadcrumb')) }}"
            alt="Cattle and Beef Industry in South-East Asia">
        <div class="duongdan">
            <div class="container">
                <section class="title-section">
                    <h1 class="title-header">
                        <span>Cẩm nang du lịch</span>
                    </h1>
                </section>
                <ol typeof="BreadcrumbList" class="breadcrumb breadcrumb__t">
                    <li property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                            href="{{route('home')}}"><span property="name">Trang chủ</span></a>
                        <meta property="position" content="1">
                    </li>
                    <li property="itemListElement" typeof="ListItem"><a property="item" typeof="WebPage"
                            href="{{route('home')}}"><span property="name">Cẩm nang du lịch</span></a>
                        <meta property="position" content="2">
                    </li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content_page content_page_chuyenmuc" >
        <div class="container">
            <div class="search_header" style="margin-top: 75px">
                <div class="search-form search-form__h">
                    <div class="content_search">
                        <form id="search-header" class="navbar-form" method="get" action="{{ route('searchLocation') }}"
                            accept-charset="utf-8">
                            <input type="text" name="key" placeholder="Tìm kiếm địa điểm..." class="input_search">
                            <button><i class="far fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            
            <article id="post-2207" 
                class="post__holder post-2207 post type-post status-publish format-standard has-post-thumbnail hentry category-news category-latest-news cat-16-id cat-52-id">
                <div id="fontsize" class="post_content">
                    <div class="row list_post_category list_ajax">
                        @foreach ($locations as $location)
                        <div class="wow fadeInUp col-xs-6 col-sm-4 post_item" data-wow-delay="0.1s">
                            <div class="content_item">
                                <figure class="featured-thumbnail thumbnail">
                                    <a
                                        href="{{ route('locations.show', $location->slug) }}">
                                        <img class="lazyload" style="height: 245px"
                                            alt="{{$location->title}}"
                                            src="{{ Voyager::image($location->image) }}" />
                                       
                                    </a>
                                </figure>
                                <div class="post_meta">
                                    <div class="title">
                                        <a href="{{ route('locations.show', $location->slug) }}"
                                            title="{{$location->title}}">{{$location->title}}</a>
                                    </div>
                                    <div class="excerpt">
                                        {{$location->desc}}
                                    </div>
                                    <div class="readmore">
                                        <a href="{{ route('locations.show', $location->slug) }}"
                                            title="{{$location->title}}">Xem chi tiết<i class="far fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach   
                    </div>
                </div>
            </article>
            <div class="pagination pagination__posts">
                {{ $locations->links('components.paginate') }}
            </div>
        </div>
    </div>
</div>
   
@stop
