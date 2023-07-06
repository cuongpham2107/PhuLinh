@extends('layouts.main')

@section('content')
    <div class="section_slider swiper-container">
        <div class="swiper-wrapper">
            @foreach ($homeBanners as $homeBanner)
                <div class="swiper-slide">
                    <a href="#" class="clearfix" title="">
                        <picture>
                            <source media="(min-width: 1200px)" srcset="{{ Voyager::image($homeBanner->image) }}">
                            <source media="(min-width: 992px)" srcset="{{ Voyager::image($homeBanner->image) }}">
                            <source media="(min-width: 569px)" srcset="{{ Voyager::image($homeBanner->image) }}">
                            <source media="(max-width: 480px)" srcset="{{ Voyager::image($homeBanner->image) }}">
                            <img width="1920" height="800" src="{{ Voyager::image($homeBanner->image) }}" alt=""
                                class="img-responsive center-block" />
                        </picture>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
    <style>
        @media (max-width: 600px) {
            .img-responsive .center-block {
                width: 1920px;
                height: auto
            }
        }
    </style>
    <script>
        var swiper = new Swiper('.section_slider', {
            autoplay: {
                delay: 4500,
                disableOnInteraction: false
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            }
        });
    </script>

    <section class="section_about" style="margin: 20px">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="img-about">
                        <img width="613" height="388" src="{{ Voyager::image($about->image) }}"
                            data-src="{{ Voyager::image($about->image) }}" alt="Giới thiệu về chúng tôi">
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="content-introduce">
                        <div class="title-frame">
                            <span class="line-top"></span>
                            <span class="line-right"></span>
                            <span class="line-bottom"></span>
                            <span class="line-left"></span>
                            <span class="line-mask"></span>
                            <div class="introduce-title-inner">
                                <h3 class="entry-title">
                                    <span class="name-intr">{{setting('site.title')}}</span><br><span class="title-intr">{{$about->title}}</span>
                                </h3>
                            </div>
                        </div>
                        <div class="introduce-wrap">
                            <p>{{$about->excerpt}}</p>
                            <div class="div-xem-them clearfix">
                                <a href="{{route('about')}}" title="Xem thêm">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section_tab_restaurant">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-xs-12">
                    <div class="pro-tabs not-dqtab">
                        <div class="e-tabs not-dqtab">
                            <ul class="tabs tabs-title clearfix">
                                @foreach ($services as $service)
                                {{-- @dd($service); --}}
                                   <li class="tab-link" data-tab="{{$service->slug}}">
                                        <div class="item-name">
                                            <img width="32" height="32"
                                                src="{{ Voyager::image($service->icon) }}"
                                                alt="{{$service->title}}" />
                                            <p>{{$service->title}}</p>
                                        </div>
                                    </li> 
                                @endforeach
                            </ul>
                            <div class="tab-float">
                                @foreach ($services as $service)
                                @php
                                 $images = json_decode($service->images);
                                //  dd($images);
                                @endphp
                                <div id="{{$service->slug}}" class="tab-content content_extab">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="title_us" style="height: 45px">
                                                {{-- <p class="txt_1">Tiện nghi</p>
                                                <p class="txt_1 txt_2">Sang trọng</p> --}}
                                            </div>
                                            <div class="img_nbox"><img width="395" height="499" alt="Khách sạn"                                                 
                                                    src="{{ Voyager::image($images[0]) }}"
                                                    data-src="{{ Voyager::image($images[0]) }}">
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="title_cont_us">
                                                <p class="txt_title">{{$service->title}}</p>
                                                <p class="txt_title_1">{{$service->desc}}</p>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="img_nbo_2"><img width="395" height="567" alt="Khách sạn"                                                  
                                                    src="{{ Voyager::image($images[1]) }}"
                                                    data-src="{{ Voyager::image($images[1]) }}">
                                            </div>
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
    </section>

    <section class="section_room_vip">
        <div class="container">
            <div class="title_module_index">
                <h2 class="h2"><a href="phong-vip.html" title="Phòng VIP">Phòng VIP</a></h2>
            </div>

            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-xs-12 col-sm-12">

                    <div class="item_vip_big">
                        <div class="img_vip_full"><a class="image_thumb" href="{{ route('room.show', $viprooms->slug) }}"
                                ><img width="480" height="272"
                                    src="{{ Voyager::image($viprooms->image) }}"
                                    data-src="{{ Voyager::image($viprooms->image) }}"
                                    alt="Ph&#242;ng đơn vip"></a></div>
                        <div class="info-vip">
                            <h3 class="name-room"><a href="{{ route('room.show', $viprooms->slug) }}" >{{$viprooms->title}}</a></h3>
                            <div class="info-room">
                                <div class="tag-rivew-smal">

                                    <div class="tag-rivew">
                                        <img width="512" height="512"
                                            src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag-user.svg?1676011628150"
                                            title="02 Khách">
                                        <p>02 Khách</p>
                                    </div>


                                    <div class="tag-rivew">
                                        <img width="512" height="512"
                                            src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag-meters.svg?1676011628150"
                                            title="35m²">
                                        <p>35m²</p>
                                    </div>
                                </div>
                                <div class="tag-room">
                                    <ul class="list_tag_room">



                                        <li>
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_1.svg?1676011628150"
                                                alt="Cafe Buổi Sáng" />
                                        </li>

                                        <li>
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_2.svg?1676011628150"
                                                alt="Gọi Đồ Ăn Tại Phòng" />
                                        </li>


                                        <li>
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_3.svg?1676011628150"
                                                alt="Bếp Nấu Tại Phòng" />
                                        </li>
                                        <li>
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_4.svg?1676011628150"
                                                alt="Bồn Tắm Hoa Sen" />
                                        </li>

                                        <li>
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_5.svg?1676011628150"
                                                alt="Internet Không Dây" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="content-room-small">
                                {{$viprooms->desc}}
                            </div>
                            <div class="vip-dat-hang">
                                <a href="{{ route('room.show', $viprooms->slug) }}" title="Đặt phòng" class="btn-booking">ÐẶT PHÒNG TỪ
                                    {{number_format($viprooms->price)}}₫/Đêm</a>
                            </div>
                        </div>
                    </div>

                </div>
                {{-- @dd($viprooms); --}}


                <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-xs-12 col-sm-12">
                    <div class="row row-room">
                        @php
                        $images_room = json_decode($viprooms->images);
                        // dd($images);
                       @endphp
                        @foreach ($images_room as $room)
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="item-vip-small">
                                <a  href="{{ route('room.show', $viprooms->slug) }}" title=""><img
                                       style="height: 247px"
                                        src="{{ Voyager::image($room) }}"
                                        data-src="{{ Voyager::image($room) }}"
                                        alt=""></a>
                                <div class="name_price clearfix">
                                    <h3 class="name-room"><a href="#"
                                            title=""></a></h3>
                                    <span class="price"></span>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="section_room" style="padding-top: 30px;">
        <div class="container">
            <div class="title_module_index">
                {{-- <h2 class="h2"><a href="" title="Phòng">Phòng</a></h2> --}}
            </div>
            <div class="row row-room">
              @foreach ($rooms as $room)
              <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                <div class="item_product_main">
                    <div class="alper-product-item">
                        <div class="item-product-img"><a class="image_thumb" href="{{ route('room.show', $viprooms->slug) }}"
                               ><img width="480" height="272"
                                    
                                    src="{{ Voyager::image($room->image) }}"
                                    data-src="{{ Voyager::image($room->image) }}"></a></div>
                        <div class="info-room clearfix">
                            <h3 class="name-room"><a href=""
                                   >{{$room->title}}</a>
                            </h3>
                            <div class="tag-room">
                                <ul class="list_tag_room">

                                    <li>
                                        <img width="32" height="32"
                                            src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_1.svg?1676011628150"
                                            alt="Cafe Buổi Sáng" />
                                    </li>

                                    <li>
                                        <img width="32" height="32"
                                            src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_4.svg?1676011628150"
                                            alt="Bồn Tắm Hoa Sen" />
                                    </li>

                                    <li>
                                        <img width="32" height="32"
                                            src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_5.svg?1676011628150"
                                            alt="Internet Không Dây" />
                                    </li>

                                </ul>
                            </div>
                            <div class="tag-rivew">
                                <ul class="list_tag_review">

                                    <li>02 Khách</li>
                                    <li>20m²</li>

                                </ul>
                            </div>
                            <div class="product-info-room">
                                <div class="price-room">
                                    <span class="price">{{number_format($room->price)}}₫/Đêm</span>
                                </div>
                                <div class="booking-room">
                                    <a href="{{ route('room.show', $viprooms->slug) }}" title="Đặt phòng" class="btn-booking">ÐẶT
                                        PHÒNG</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
              @endforeach
                

            </div>

        </div>
    </section>

    <section class="section_am_thuc">
        <div class="container">
            <div class="title_module_index">
                <h2 class="h2">
                    <a href="{{route('cuisines')}}" title="Ẩm thực">Ẩm thực</a>
                </h2>
            </div>
            <div class="tabwrap not-dqtab e-tabs ajax-tab-1" data-section="ajax-tab-1">
                <div class="uwrap_tab">
                    <div class="tab-content tab-1 current">

                        <div class="row">
                            
                            @foreach ($foods as $item)
                              <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3 product-col">
                                <div class="item_product_main">
                                    <form class="variants product-action"  enctype="multipart/form-data">
                            
                                        <div class="product-thumbnail">
                                            <a class="image_thumb" href="{{ route('cuisines.show', $item->slug) }}"
                                                title="{{$item->title}}"><img width="480" height="360"
                                                   
                                                    src="{{ Voyager::image($item->image) }}"
                                                    data-src="{{ Voyager::image($item->image) }}"
                                                    alt="{{$item->title}}"></a>
                                        </div>
                                        <div class="product-info">
                                            <h3 class="product-name"><a href="{{ route('cuisines.show', $item->slug) }}"
                                                    title="{{$item->title}}">{{$item->title}}</a>
                                            </h3>
                                            <div class="price-box">
                                                <span class="price">{{number_format($item->price)}}₫</span>
                                            </div>
                                            
                                        </div>
                                        
                                    </form>

                                </div>
                            </div>  
                            @endforeach
                            

                        </div>
                        <div class="show-more-pro">
                            <a href="{{route('cuisines')}}" title="Xem thêm" class="a-show-more">Xem thêm</a>
                        </div>

                    </div>

                    <div class="tab-content tab-2">
                        <div class="row">
                            
                            @foreach ($foods as $item)
                              <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3 product-col">
                                <div class="item_product_main">
                                    <form action="https://bean-hotel.mysapo.net/cart/add" method="post"
                                        class="variants product-action" data-id="product-actions-28829661"
                                        enctype="multipart/form-data">
                                        <div class="product-thumbnail">
                                            <a class="image_thumb" href="mi-xao-bo.html"
                                                title="M&#236; x&#224;o b&#242;"><img width="480" height="360"
                                                   
                                                    src="{{ Voyager::image($item->image) }}"
                                                    data-src="{{ Voyager::image($item->image) }}"
                                                    alt="M&#236; x&#224;o b&#242;"></a>

                                            <div class="sale-label"><span class="smart">- 20% </span></div>
                                            <div class="group_action">
                                                <input type="hidden" name="variantId" value="77487981" />
                                                <button
                                                    class="btn-anima hidden-xs btn-buy btn-cart btn-left btn btn-views left-to add_to_cart active "
                                                    title="Mua ngay">
                                                    <img width="24" height="24"
                                                        src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/cart-add.svg?1676011628150"
                                                        alt="Mua ngay" />
                                                </button>
                                                <a title="Xem nhanh" href="mi-xao-bo.html" data-handle="mi-xao-bo"
                                                    class="btn-anima hidden-xs xem_nhanh btn-circle btn-views btn_view btn right-to quick-view">
                                                    <img width="24" height="24"
                                                        src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/view.svg?1676011628150"
                                                        alt="Xem nhanh" />
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h3 class="product-name"><a href="mi-xao-bo.html"
                                                    title="M&#236; x&#224;o b&#242;">{{$item->title}}</a>
                                            </h3>
                                            <div class="price-box">
                                                <span class="price">{{number_format($item->price)}}₫</span>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>  
                            @endforeach
                            

                        </div>
                        <div class="show-more-pro">
                            <a href="mon-an.html" title="Xem thêm" class="a-show-more">Xem thêm</a>
                        </div>
                    </div>

                    <div class="tab-content tab-3">
                        <div class="row">
                            
                            @foreach ($foods as $item)
                              <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3 product-col">
                                <div class="item_product_main">
                                    <form action="https://bean-hotel.mysapo.net/cart/add" method="post"
                                        class="variants product-action" data-id="product-actions-28829661"
                                        enctype="multipart/form-data">
                                        <div class="product-thumbnail">
                                            <a class="image_thumb" href="mi-xao-bo.html"
                                                title="M&#236; x&#224;o b&#242;"><img width="480" height="360"
                                                   
                                                    src="{{ Voyager::image($item->image) }}"
                                                    data-src="{{ Voyager::image($item->image) }}"
                                                    alt="M&#236; x&#224;o b&#242;"></a>

                                            
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <h3 class="product-name"><a href="mi-xao-bo.html"
                                                    title="M&#236; x&#224;o b&#242;">{{$item->title}}</a>
                                            </h3>
                                            <div class="price-box">
                                                <span class="price">{{number_format($item->price)}}₫</span>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>  
                            @endforeach                           
                        </div>                  
                    </div>
                </div>
            </div>
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
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 col-12">
                    <div class="item_blog_index clearfix">
                        <div class="img-blog">
                            <a class="image-blog" href="{{ route('posts.show', $post->slug) }}"
                                title="{{$post->title}}">

                                <img width="480" height="288"
                                    src="{{ Voyager::image($post->image) }}"
                                    data-src=""
                                    alt="{{$post->title}}"
                                    class=" img-responsive" />

                            </a>
                        </div>
                        <div class="blog_content">
                            <h3><a href="{{ route('posts.show', $post->slug) }}"
                                    title="{{$post->title}}">{{$post->title}}</a></h3>
                            <p class="blog_description">{{$post->excerpt}}</p>
                            <p class="update_date clearfix">
                                <span class="user_name"></span>
                                <span class="user_date"> 	{{ $post->created_at->format('d/m/Y') }}</span>
                            </p>
                            <a class="btn blog_read_more" href="{{ route('posts.show', $post->slug) }}"
                                title="Đọc thêm">Ðọc
                                Thêm</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    
@stop
