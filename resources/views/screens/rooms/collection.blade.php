@extends('layouts.main')

@section('content')
<section class="bread-crumb">
    <div class="container">
        <ul class="breadcrumb">
            <li class="home">
                <a href="index.html" title="Trang chủ"><span>Trang chủ</span></a>
                <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                        <path fill="currentColor"
                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                            class=""></path>
                    </svg>&nbsp;</span>
            </li>


            <li><strong><span> Phòng</span></strong></li>


        </ul>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="block-collection col-xl-12 col-lg-12 col-12">
            <div class="section-box-bg">
                <h1 class="title-page d-md-block d-none">Phòng</h1>
                <div class="category-products">

                    <div class="products-view products-view-grid list_hover_pro">
                        <div class="row">
                            @foreach ($rooms as $room)
                            <div class="col-6 col-xs-6 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                                <div class="item_product_main">
                                    <div class="alper-product-item">
                                        <div class="item-product-img"><a class="image_thumb"
                                                href="{{ route('room.show', $room->slug) }}"
                                                title="Ph&#242;ng đơn ti&#234;u chuẩn"><img width="480"
                                                    height="272" 
                                                    src="{{ Voyager::image($room->image) }}"
                                                    data-src="{{ Voyager::image($room->image) }}"
                                                    alt="Ph&#242;ng đơn ti&#234;u chuẩn"></a></div>
                                        <div class="info-room clearfix">
                                            <h3 class="name-room"><a href="{{ route('room.show', $room->slug) }}"
                                                    title="Ph&#242;ng đơn ti&#234;u chuẩn">{{$room->title}}</a></h3>
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
                                                    <a href="{{ route('room.show', $room->slug) }}" title="Đặt phòng"
                                                        class="btn-booking">ÐẶT PHÒNG</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>

                    <div class="pagenav">
                        {{ $rooms->links('components.paginate') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="open-filters" class="open-filters d-lg-none d-xl-none hidden">
        <span>Lọc</span>
    </div>
</div>
</div>
<div class="opacity_sidebar"></div>
@stop
