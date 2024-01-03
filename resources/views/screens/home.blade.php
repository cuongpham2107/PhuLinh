@extends('layouts.main')

@section('content')
    <div id="pl-2" class="panel-layout">
        <div id="pg-2-0" class="panel-grid panel-has-style">
            <div class="banner_page panel-row-style panel-row-style-for-2-0">
                <div id="pgc-2-0-0" class="panel-grid-cell">
                    <div id="panel-2-0-0-0"
                        class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                        data-index="0">
                        <div class="textwidget custom-html-widget">
                            <div id="creativeslider_79">
                                @foreach ($homeBanners as $homeBanner)
                                    <div class="banner_slider_item_1">
                                        <div class="content_item">
                                            <div class="image_banner">
                                                <div class="ajax_image"><img decoding="async"
                                                        src="{{ Voyager::image($homeBanner->image) }}" class="lazyload"
                                                        loading="lazy" data-src="{{ Voyager::image($homeBanner->image) }}"
                                                        alt="Banner slide home" width="1366" height="619"
                                                        loading="lazy" /></div>
                                            </div>
                                            <div class="capiton-banner lazyload">

                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="pg-2-1" class="panel-grid panel-has-style">
            <div class="gioithieu panel-row-style panel-row-style-for-2-1">
                <div id="pgc-2-1-0" class="panel-grid-cell">
                    <div id="panel-2-1-0-0"
                        class="so-panel widget widget_siteorigin-panels-builder panel-first-child panel-last-child"
                        data-index="1">
                        <div class="container panel-widget-style panel-widget-style-for-2-1-0-0">
                            <div id="pl-w64c7719fa5fb8" class="panel-layout">
                                <div id="pg-w64c7719fa5fb8-0" class="panel-grid panel-no-style">
                                    <div id="pgc-w64c7719fa5fb8-0-0" class="panel-grid-cell">
                                        <div id="panel-w64c7719fa5fb8-0-0-0"
                                            class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
                                            data-index="0">
                                            <div
                                                class="text_custom panel-widget-style panel-widget-style-for-w64c7719fa5fb8-0-0-0">
                                                <div class="widget-title">{{ $about->title }}</div>
                                                <div class="textwidget">
                                                    <p>{{ $about->excerpt }}</p>
                                                    <p><a href="{{ route('about.show', $about->slug) }}">Đọc thêm</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="pgc-w64c7719fa5fb8-0-1" class="panel-grid-cell">
                                        <div id="panel-w64c7719fa5fb8-0-1-0"
                                            class="so-panel widget widget_media_image panel-first-child panel-last-child"
                                            data-index="1"><img fetchpriority="high" width="603" height="400"
                                                src="{{ Voyager::image($about->image) }}" class="lazyload" loading="lazy"
                                                data-src="{{ Voyager::image($about->image) }}"
                                                class="image wp-image-84  attachment-full size-full lazyload" alt=""
                                                decoding="async" style="max-width: 100%; height: auto;" /></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="pg-2-2" class="panel-grid panel-has-style">
            <div class="project panel-row-style panel-row-style-for-2-2">
                <div id="pgc-2-2-0" class="panel-grid-cell">
                    <div id="panel-2-2-0-0"
                        class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                        data-index="2">
                        <div class="widget-title">Địa điểm du lịch</div>
                        <div class="project_template row">
                            @foreach ($locations as $location)
                                <div class="wow fadeInUp col-xs-6 col-sm-6 col-md-4 project_item" data-wow-delay="0.1s">
                                    <div class="content_item">
                                        <div class="image">
                                            <a href="{{ route('locations.show', $location->slug) }}" class="slide_item">
                                                <img decoding="async" src="{{ Voyager::image($location->image) }}"
                                                    class="lazyload" loading="lazy"
                                                    data-src="{{ Voyager::image($location->image) }}"
                                                    alt="{{ $location->title }}" width="370" height="250"
                                                    loading="lazy" />
                                            </a>
                                        </div>
                                        <div class="product-meta">
                                            <div class="name">
                                                <a href="{{ route('locations.show', $location->slug) }}"
                                                    title="{{ $location->title }}"><span>{{ $location->title }}</span></a>
                                            </div>
                                            <div class="excerpt">
                                                {{ $location->desc }}</div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="pg-2-3" class="panel-grid panel-has-style">
            <div class="our_service panel-row-style panel-row-style-for-2-3">
                <div id="pgc-2-3-0" class="panel-grid-cell">
                    <div id="panel-2-3-0-0"
                        class="so-panel widget widget_siteorigin-panels-builder panel-first-child panel-last-child"
                        data-index="3">
                        <div class="container panel-widget-style panel-widget-style-for-2-3-0-0">
                            <div id="pl-w61de339f75568" class="panel-layout">
                                <div id="pg-w61de339f75568-0" class="panel-grid panel-no-style">
                                    <div id="pgc-w61de339f75568-0-0" class="panel-grid-cell">
                                        <div id="panel-w61de339f75568-0-0-0"
                                            class="so-panel widget widget_media_image panel-first-child panel-last-child"
                                            data-index="0"><img width="530" height="570"
                                                src="{{ Voyager::image($experience->image) }}" class="lazyload"
                                                loading="lazy" data-src="{{ Voyager::image($experience->image) }}"
                                                class="image wp-image-1272  attachment-full size-full lazyload"
                                                alt="" decoding="async" style="max-width: 100%; height: auto;" />
                                        </div>
                                    </div>
                                    <div id="pgc-w61de339f75568-0-1" class="panel-grid-cell">
                                        <div id="panel-w61de339f75568-0-1-0"
                                            class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
                                            data-index="1">
                                            <div class="widget-title">{{ $experience->title }}<a
                                                    href="{{ route('about.show', $experience->slug) }}">
                                                    Xem thêm</a></div>
                                            <div class="textwidget">
                                                <p>
                                                <div class="icon_chuyenmuc_template ">
                                                    <ul class='cate-list unstyled'>
                                                        <li class="list_item_1 ">
                                                            <div class="content_item">
                                                                <figure class="featured-thumbnail thumbnail">
                                                                    <a href="{{ route('about.show', $experience->slug) }}"
                                                                        title="Agroforestry">
                                                                        <img decoding="async" class="lazyload lazyload"
                                                                            alt="Agroforestry"
                                                                            src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="
                                                                            class="lazyload" loading="lazy"
                                                                            data-src="{{ asset('/assets/images/Layer-643.png') }}" />
                                                                    </a>
                                                                </figure>
                                                                <div class="chuyenmuc_meta">
                                                                    <div class="cate_list_title">
                                                                        <a class="cate-title"
                                                                            href="{{ route('about.show', $experience->slug) }}"
                                                                            rel="bookmark" title="Agroforestry">Lưu
                                                                            trú</a>
                                                                    </div>
                                                                    <div class="description">
                                                                        {{ $experience->excerpt }}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        </li>
                                                        <li class="list_item_2 ">
                                                            <div class="content_item">
                                                                <figure class="featured-thumbnail thumbnail">
                                                                    <a href="{{ route('about.show', $experience->slug) }}"
                                                                        title="Sustainable Tourism">
                                                                        <img decoding="async" class="lazyload lazyload"
                                                                            alt="Sustainable Tourism"
                                                                            src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="
                                                                            class="lazyload" loading="lazy"
                                                                            data-src="{{ asset('/assets/images/Layer-641.png') }}" />
                                                                    </a>
                                                                </figure>
                                                                <div class="chuyenmuc_meta">
                                                                    <div class="cate_list_title">
                                                                        <a class="cate-title"
                                                                            href="{{ route('about.show', $experience->slug) }}"
                                                                            rel="bookmark" title="Sustainable Tourism">Văn
                                                                            hóa</a>
                                                                    </div>
                                                                    <div class="description">
                                                                        {!! $experience->body !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        </li>
                                                    </ul>
                                                </div>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="container" style="text-align: center;padding-bottom: 50px;">
                    {!! setting('site.video_home') !!}
                </div>
            </div>
        </div>
        <div id="pg-2-4" class="panel-grid panel-has-style">
            <div class="new_home panel-row-style panel-row-style-for-2-4">
                <div id="pgc-2-4-0" class="panel-grid-cell">
                    <div id="panel-2-4-0-0"
                        class="so-panel widget widget_siteorigin-panels-builder panel-first-child panel-last-child"
                        data-index="4">
                        <div class="container panel-widget-style panel-widget-style-for-2-4-0-0">
                            <div id="pl-w61dbb66dd2abc" class="panel-layout">
                                <div id="pg-w61dbb66dd2abc-0" class="panel-grid panel-no-style">
                                    <div id="pgc-w61dbb66dd2abc-0-0" class="panel-grid-cell">
                                        <div id="panel-w61dbb66dd2abc-0-0-0"
                                            class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                                            data-index="0">
                                            <div
                                                class="widget_text text_title panel-widget-style panel-widget-style-for-w61dbb66dd2abc-0-0-0">
                                                <div class="widget-title">Tin tức - Bài viết</div>
                                                <div class="textwidget custom-html-widget"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="pg-w61dbb66dd2abc-1" class="panel-grid panel-no-style">
                                    <div id="pgc-w61dbb66dd2abc-1-0" class="panel-grid-cell">
                                        <div id="panel-w61dbb66dd2abc-1-0-0"
                                            class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                                            data-index="1">
                                            <div class="textwidget custom-html-widget">
                                                <div class="newhome_template row">
                                                    @foreach ($posts_hot as $post)
                                                        <div class="col-xs-6 col-sm-6 col-md-6 list_post">
                                                            <div class="content_item">
                                                                <figure class="featured-thumbnail thumbnail">
                                                                    <a href="{{ route('posts.show', $post->slug) }}">
                                                                        <img decoding="async" class="lazyload lazyload"
                                                                            alt="{{ $post->title }}" style="height: 250px"
                                                                            src="{{ Voyager::image($post->image) }}"
                                                                            class="lazyload" loading="lazy"
                                                                            data-src="{{ Voyager::image($post->image) }}"
                                                                            loading="lazy" />

                                                                    </a>
                                                                </figure>
                                                                <div class="post_meta">
                                                                    <div class="title">
                                                                        <a href="{{ route('posts.show', $post->slug) }}"
                                                                            title="{{ $post->title }}">{{ $post->title }}</a>
                                                                    </div>
                                                                    <div class="excerpt"
                                                                        style="display: -webkit-box;
                                                                -webkit-line-clamp: 3;
                                                                -webkit-box-orient: vertical;  
                                                                overflow: hidden;">
                                                                        {{ $post->excerpt }}
                                                                    </div>
                                                                    <div class="readmore">
                                                                        <a href="{{ route('posts.show', $post->slug) }}"
                                                                            title="{{ $post->title }}">Xem thêm [+]</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="pgc-w61dbb66dd2abc-1-1" class="panel-grid-cell">
                                        <div id="panel-w61dbb66dd2abc-1-1-0"
                                            class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                                            data-index="2">
                                            <div class="widget-title">Tin tức khác</div>
                                            <div class="textwidget custom-html-widget">
                                                <div class="new_other_template ">
                                                    @foreach ($posts as $post)
                                                        <div class=" list_post">
                                                            <div class="content_item">
                                                                <figure class="featured-thumbnail thumbnail">
                                                                    <a href="{{ route('posts.show', $post->slug) }}">
                                                                        <img decoding="async" class="lazyload lazyload"
                                                                            alt="{{ $post->title }}"
                                                                            src="{{ Voyager::image($post->image) }}"
                                                                            class="lazyload" loading="lazy"
                                                                            data-src="{{ Voyager::image($post->image) }}" />
                                                                    </a>
                                                                </figure>
                                                                <div class="post_meta" style="margin-left: 10px">

                                                                    <div class="title">
                                                                        <a href="{{ route('posts.show', $post->slug) }}"
                                                                            title="{{ $post->title }}">{{ $post->title }}</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>
                                                <div class="read_more"><a href="{{ route('posts') }}">Tất cả bài viết<i
                                                            class="far fa-chevron-right"></i></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="pg-2-5" class="panel-grid panel-has-style">
            <div class="video_review panel-row-style panel-row-style-for-2-5">
                <div id="pgc-2-5-0" class="panel-grid-cell">
                    <div id="panel-2-5-0-0"
                        class="so-panel widget widget_siteorigin-panels-builder panel-first-child panel-last-child"
                        data-index="5">
                        <div class="container panel-widget-style panel-widget-style-for-2-5-0-0">
                            <div id="pl-w62677351147ed" class="panel-layout">
                                <div id="pg-w62677351147ed-0" class="panel-grid panel-no-style">
                                    <div id="pgc-w62677351147ed-0-0" class="panel-grid-cell">
                                        <div id="panel-w62677351147ed-0-0-0"
                                            class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                                            data-index="0">
                                            <div class="widget-title">Video</div>
                                            <div class="textwidget custom-html-widget">
                                                <div class="video_home_template row">
                                                    @foreach ($videos as $video)
                                                        <div class="col-xs-6 col-sm-6 col-md-6 video_item">
                                                            <div class="content_item">
                                                                <figure class="featured-thumbnail thumbnail">
                                                                    <a href="{{ route('events.show', $video->slug) }}">
                                                                        <img decoding="async" alt="{{ $video->title }}"
                                                                            src="{{ Voyager::image($video->image) }}"
                                                                            class="lazyload" loading="lazy"
                                                                            data-src="{{ Voyager::image($video->image) }}"
                                                                            width="370" height="260" />
                                                                        <div class="icon_video"></div>
                                                                    </a>
                                                                </figure>
                                                                <div class="post_meta">
                                                                    <div class="content_meta">
                                                                        <div class="title">
                                                                            <a href="{{ route('events.show', $video->slug) }}"
                                                                                title="{{ $video->title }}">{{ $video->title }}</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div id="pgc-w62677351147ed-0-1" class="panel-grid-cell">
                                        <div id="panel-w62677351147ed-0-1-0"
                                            class="so-panel widget widget_aio_tab aio_posts_type_widget panel-first-child panel-last-child"
                                            data-index="1">
                                            <div class="widget-title">Phản hồi từ du khách</div>
                                            <div id="aio-widget-aio_tab-1-template" class="nhanxet_template">
                                                <ul>
                                                    <li>
                                                        <div class="title"><a
                                                                class="tab widget-aio_tab-1-template2"><span>Nguyễn Thị Quỳnh <span>
                                                                        </span> </span></a></div>
                                                        <div id="widget-aio_tab-1-template2"
                                                            class="tab_content widget-aio_tab-1-template">
                                                            <div class="thumbnail"><img decoding="async"
                                                                    src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="
                                                                    class="lazyload" loading="lazy"
                                                                    data-src="https://cred.org.vn/wp-content/uploads/2022/01/09P7858-4-e1642586017740.jpg"
                                                                    alt="nhận xét"></div>
                                                            <div class="nhanxet">Ngoài ra thiên nhiên đã ưu đãi ban tặng cho vùng đất này cảnh đẹp tự nhiên thực sự đặc sắc, hùng vĩ và nên thơ</div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="title"><a
                                                                class="tab widget-aio_tab-1-template3"><span>Nguyễn
                                                                    Văn Nam Anh </span></a></div>
                                                        <div id="widget-aio_tab-1-template3"
                                                            class="tab_content widget-aio_tab-1-template">
                                                            <div class="thumbnail"><img decoding="async"
                                                                    src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="
                                                                    class="lazyload" loading="lazy"
                                                                    data-src="https://cred.org.vn/wp-content/uploads/2021/12/nhanxet1.jpg"
                                                                    alt="nhận xét"></div>
                                                            <div class="nhanxet">Những năm gần đây, một hướng đi mới được huyện ưu tiên đó là việc xây dựng và phát triển các Làng văn hóa du lịch gắn với chương trình xây dựng Nông thôn mới..</div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="pg-2-8" class="panel-grid panel-has-style">
            <div class="newsletter panel-row-style panel-row-style-for-2-8">
                <div id="pgc-2-8-0" class="panel-grid-cell">
                    <div id="panel-2-8-0-0"
                        class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                        data-index="8">
                        <div class="widget_text container panel-widget-style panel-widget-style-for-2-8-0-0">
                            <div class="widget-title">Đăng kí nhận tin</div>
                            <div class="textwidget custom-html-widget">
                                <div class="wpcf7 no-js" id="wpcf7-f5-p2-o1" lang="en-US" dir="ltr">                      
                                    <form action="{{ route('contacts') }}" method="post" class="wpcf7-form init"
                                        aria-label="Contact form" novalidate="novalidate" data-status="init">
                                        @csrf
                                        <div class="list_group">
                                            <p><span class="wpcf7-form-control-wrap" data-name="your-email"><input
                                                        size="40"
                                                        class="wpcf7-form-control wpcf7-email wpcf7-validates-as-required wpcf7-text wpcf7-validates-as-email"
                                                        aria-required="true" aria-invalid="false"
                                                        placeholder="Email của bạn" value="" type="email"
                                                        name="email" /></span><input
                                                    class="wpcf7-form-control wpcf7-submit has-spinner" type="submit"
                                                    value="Gửi đi" />
                                            </p>
                                        </div>
                                        <div class="wpcf7-response-output" aria-hidden="true"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
