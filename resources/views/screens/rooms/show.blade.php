@extends('layouts.main')

@section('content')
    {{-- @dd($room) --}}

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
                    <a class="changeurl" href="{{route('rooms')}}" title="Phòng vip"><span>Phòng vip</span></a>
                    <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                            data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                            <path fill="currentColor"
                                d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                                class=""></path>
                        </svg>&nbsp;</span>
                </li>

                <li><strong><span>{{$room->title}}</span></strong>
                <li>

            </ul>
        </div>
    </section>

    <section class="product layout-product" itemscope itemtype="https://schema.org/Product">
        <div class="container">
            <div class="details-product">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 margin-room">
                        <div id="slide_pro_room" class="swiper-container">
                            <div class="swiper-wrapper">
                                {{-- @dd($room); --}}
                                @php
                                 $images = json_decode($room->images);
                                //  dd($room->images);
                                @endphp
                                @foreach($images as $item)
                                <div class="swiper-slide">
                                    <img height="600" width="340"
                                        src="{{ Voyager::image($item) }}"
                                        alt="{{$room->title}}">
                                       
                                </div>
                                @endforeach
                                
                            </div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-8">
                        <h1 class="title-product"></h1>

                        <div class="tag_info_room">
                            <div class="item_tag_info">

                                <img width="32" height="32"
                                    src="{{ asset('/assets/people383b.png') }}"
                                    alt="04 Người lớn" /> 0{{$room->promotion}} Người lớn

                            </div>
                            <div class="item_tag_info">

                                <img width="32" height="32"
                                    src="{{ asset('/assets/people383b.png') }}"
                                    alt="02 Trẻ em" /> 0{{$room->sold}} Trẻ em

                            </div>
                            <div class="item_tag_info">

                                <img width="32" height="32"
                                    src="{{ asset('/assets/metter383b.png') }}"
                                    alt="Phòng 40m²" /> Phòng {{$room->acreage}}m²

                            </div>
                        </div>
                        {{-- @dd($room); --}}
                        <div class="product-summary">
                            <div class="rte">
                                <p>{{$room->description}}</p>
                            </div>
                        </div>


                        <div class="room_services">
                            <div class="title_services">Dịch vụ phòng</div>
                            <div class="box_services">
                                <ul class="list_tag_room">
                                    <li>
                                        <div class="item_ser">
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_1.svg?1676011628150"
                                                alt="Cafe Buổi Sáng" /> Cafe Buổi Sáng
                                        </div>
                                    </li>

                                    <li>
                                        <div class="item_ser">
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_2.svg?1676011628150"
                                                alt="Gọi Đồ Ăn Tại Phòng" /> Gọi Đồ Ăn Tại Phòng
                                        </div>
                                    </li>

                                    <li>
                                        <div class="item_ser">
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_3.svg?1676011628150"
                                                alt="Bếp Nấu Tại Phòng" /> Bếp Nấu Tại Phòng
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_ser">
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_4.svg?1676011628150"
                                                alt="Bồn Tắm Hoa Sen" /> Bồn Tắm Hoa Sen
                                        </div>
                                    </li>

                                    <li>
                                        <div class="item_ser">
                                            <img width="32" height="32"
                                                src="http://bizweb.dktcdn.net/100/472/947/themes/888072/assets/tag_icon_5.svg?1676011628150"
                                                alt="Internet Không Dây" /> Internet Không Dây
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 details-pro callmeback-form">
                        <form method="post"  id="contact" action="{{route('book')}}" accept-charset="UTF-8">
                            @csrf
                            <input name="status" type="hidden" value="dat-phong" />
                            <input name="room_id" type="hidden" value="{{$room->category_id}}" />
                            <div class="price-box clearfix">
                                <span class="special-price">
                                    <span class="price product-price">{{number_format($room->price)}}₫/Đêm</span>
                                    <meta itemprop="price" content="{{$room->price}}">
                                    <meta itemprop="priceCurrency" content="VND">
                                </span> <!-- Giá Khuyến mại -->
                            </div>

                            <div class="row pad-room">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 margin-bottom-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                        <label class="title-date">Họ và tên*</label>
                                    </div>
                                    <div class="form-booking">
                                        <input required type="text" value="{{$room->title}}"
                                            placeholder="Tên phòng" name="room" class="hidden" />
                                        {{-- <input required type="text" value="{{$room->price}}" name="price"
                                            class="hidden" /> --}}
                                        <input placeholder="Email *" type="email"
                                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required id="email1"
                                            class="form-control form-control-lg hidden" value="default@gmail.com"
                                            name="contact[email]">
                                        <input required type="text" value="" placeholder="Họ và tên"
                                            name="name" />

                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 margin-bottom-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                        <label class="title-date">Số điện thoại*</label>
                                    </div>
                                    <div class="form-booking">
                                        <input placeholder="Số điện thoại" type="number" name="phone"
                                            class="form-control phone-booking form-control-lg"  value="">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 margin-bottom-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 no-padding">
                                        <label class="title-date">Ngày nhận</label>
                                    </div>
                                    <div class="form-booking">
                                        <div class="form-booking-icon">
                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 36.447 36.447"
                                                style="enable-background:new 0 0 36.447 36.447;" xml:space="preserve">
                                                <g>
                                                    <g>
                                                        <path
                                                            d="M30.224,3.948h-1.098V2.75c0-1.517-1.197-2.75-2.67-2.75c-1.474,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75 c0-1.517-1.197-2.75-2.67-2.75c-1.473,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75c0-1.517-1.197-2.75-2.67-2.75 c-1.473,0-2.67,1.233-2.67,2.75v1.197H6.224c-2.343,0-4.25,1.907-4.25,4.25v24c0,2.343,1.907,4.25,4.25,4.25h24 c2.344,0,4.25-1.907,4.25-4.25v-24C34.474,5.855,32.567,3.948,30.224,3.948z M25.286,2.75c0-0.689,0.525-1.25,1.17-1.25 c0.646,0,1.17,0.561,1.17,1.25v4.896c0,0.689-0.524,1.25-1.17,1.25c-0.645,0-1.17-0.561-1.17-1.25V2.75z M17.206,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M9.125,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M31.974,32.198c0,0.965-0.785,1.75-1.75,1.75h-24c-0.965,0-1.75-0.785-1.75-1.75v-22h27.5V32.198z">
                                                        </path>
                                                        <rect x="6.724" y="14.626" width="4.595"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="12.857" y="14.626" width="4.596"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="18.995" y="14.626" width="4.595"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="25.128" y="14.626" width="4.596"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="6.724" y="20.084" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="12.857" y="20.084" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="18.995" y="20.084" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="25.128" y="20.084" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="6.724" y="25.54" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="12.857" y="25.54" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="18.995" y="25.54" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="25.128" y="25.54" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                    </g>
                                                </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                            </svg>
                                        </div>
                                        <div class="form-booking-date">
                                            <input type="text" id="fromDate" placeholder="YYYY-MM-DD"
                                                name="fromDate" required />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 margin-bottom-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                        <label class="title-date">Ngày trả</label>
                                    </div>
                                    <div class="form-booking">
                                        <div class="form-booking-icon">
                                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                                viewBox="0 0 36.447 36.447"
                                                style="enable-background:new 0 0 36.447 36.447;" xml:space="preserve">
                                                <g>
                                                    <g>
                                                        <path
                                                            d="M30.224,3.948h-1.098V2.75c0-1.517-1.197-2.75-2.67-2.75c-1.474,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75 c0-1.517-1.197-2.75-2.67-2.75c-1.473,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75c0-1.517-1.197-2.75-2.67-2.75 c-1.473,0-2.67,1.233-2.67,2.75v1.197H6.224c-2.343,0-4.25,1.907-4.25,4.25v24c0,2.343,1.907,4.25,4.25,4.25h24 c2.344,0,4.25-1.907,4.25-4.25v-24C34.474,5.855,32.567,3.948,30.224,3.948z M25.286,2.75c0-0.689,0.525-1.25,1.17-1.25 c0.646,0,1.17,0.561,1.17,1.25v4.896c0,0.689-0.524,1.25-1.17,1.25c-0.645,0-1.17-0.561-1.17-1.25V2.75z M17.206,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M9.125,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M31.974,32.198c0,0.965-0.785,1.75-1.75,1.75h-24c-0.965,0-1.75-0.785-1.75-1.75v-22h27.5V32.198z">
                                                        </path>
                                                        <rect x="6.724" y="14.626" width="4.595"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="12.857" y="14.626" width="4.596"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="18.995" y="14.626" width="4.595"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="25.128" y="14.626" width="4.596"
                                                            height="4.089">
                                                        </rect>
                                                        <rect x="6.724" y="20.084" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="12.857" y="20.084" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="18.995" y="20.084" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="25.128" y="20.084" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="6.724" y="25.54" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="12.857" y="25.54" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="18.995" y="25.54" width="4.595"
                                                            height="4.086">
                                                        </rect>
                                                        <rect x="25.128" y="25.54" width="4.596"
                                                            height="4.086">
                                                        </rect>
                                                    </g>
                                                </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                                <g> </g>
                                            </svg>
                                        </div>
                                        <div class="form-booking-date">
                                            <input type="text" id="toDate" placeholder="YYYY-MM-DD"
                                                name="toDate" required />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 margin-bottom-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                        <label class="title-date">Người lớn</label>
                                    </div>
                                    <div class="form-booking">
                                        <input required id="bigPle" type="number" min="1" value="1"
                                            placeholder="Người lớn" name="adult" />
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6 margin-bottom-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                        <label class="title-date">Trẻ em</label>
                                    </div>
                                    <div class="form-booking">
                                        <input required id="smallPle" type="number" min="0" value="0"
                                            placeholder="Trẻ em" name="children" />
                                    </div>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                    <textarea placeholder="Nội dung *" name="contact[body]" id="comment"
                                        class="form-control content-area form-control-lg hidden" rows="5" Required>Nội dung mặc định</textarea>
                                    <input required type="text" id="myprice" value=""
                                        name="contact[Tổng tiền]" class="hidden" />
                                    <div id="roototal"></div>
                                    <div class="div-tem-price">
                                        <a class="a-btn a-tam-tinh" onclick="temporary()"> Xem Thêm </a>
                                        <button type="submit" class="a-btn a-dat-phong">Ðặt phòng</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

                        <div class="product-tab e-tabs not-dqtab">
                            <ul class="tabs tabs-title clearfix">
                                <li class="tab-link active" data-tab="#tab-1">Mô tả</li>
                            </ul>
                            <div class="tab-float">

                                <div id="tab-1" class="tab-content active content_extab">
                                    <div class="rte product_getcontent">

                                        <div id="content">
                                            <p>{!!$room->content!!}
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-8">
                        <div class="productRelate">
                            <div class="block-title">
                                <h2>
                                    <a href="phong-vip.html" title="Phòng tương tự">Phòng tương tự</a>
                                </h2>
                            </div>
                            <div class="product-relate-swiper swiper-container">
                                <div class="swiper-wrapper">

                                    @foreach ($recentRoom as $room)
                                    <div class="swiper-slide">
                                        <div class="alper-product-item">
                                            <div class="item-product-img"><a class="image_thumb"
                                                    href="{{ route('room.show', $room->slug) }}" title="{{$room->title}}"><img
                                                        width="480" height="272"    
                                                        src="{{ Voyager::image($room->image) }}"
                                                        data-src="{{ Voyager::image($room->image) }}"
                                                        alt="{{$room->title}}"></a></div>
                                            <div class="info-room clearfix">
                                                <h3 class="name-room"><a href="{{ route('room.show', $room->slug) }}"
                                                        title="{{$room->title}}">{{$room->title}}</a></h3>
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
                                                <div class="tag-rivew">
                                                    <ul class="list_tag_review">
                                                        <li>02 Khách</li>
                                                        <li>35m²</li>
                                                    </ul>
                                                </div>
                                                <div class="product-info-room">
                                                    <div class="price-room">
                                                        <span class="price">{{number_format($room->price)}}/Đêm</span>
                                                    </div>
                                                    <div class="booking-room">
                                                        <a href="{{ route('room.show', $room->slug) }}" title="Đặt phòng"
                                                            class="btn-booking">ÐẶT PHÒNG</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="row product-tab">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">


                                <div class="product-best">
                                    <a href="phong-vip.html" title="Phòng tốt nhất">
                                        <div class="title-head">
                                            Phòng tốt nhất
                                        </div>
                                    </a>
                                    <div class="product-favi-content">
                                        @foreach ($viprooms as $room)
                                        <div class="product-view">
                                            <a class="image_thumb" href="{{ route('room.show', $room->slug) }}" title="{{$room->title}}">
                                                <img width="370" height="480" 
                                                    src="{{ Voyager::image($room->image) }}"
                                                    data-src="{{ Voyager::image($room->image) }}"
                                                    alt="Phòng đơn vip">
                                            </a>
                                            <div class="product-info">
                                                <h3 class="product-name"><a href="{{ route('room.show', $room->slug) }}"
                                                        title="{{$room->title}}">{{$room->title}}</a></h3>
                                                <div class="price-box">
                                                    {{number_format($room->price)}}₫
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
            </div>
        </div>
    </section>
    <script>
        function temporary() {
            var fromDate = $('#fromDate').val();
            var toDate = $('#toDate').val();
            var bigPle = $('#bigPle').val();
            if (toDate <= fromDate) {
                alert("Ngày trả phải lớn hơn ngày nhận");
                return false;
            }
            if (bigPle == '' || bigPle < 1) {
                alert("Chọn số người lớn");
                return false;
            }
            var donG = $('.price.product-price').html();
            var valuGia = $('.price').html();
            const thoiGianGiuaHaiNgay = (ngayDau, ngayCuoi) =>
                (ngayCuoi - ngayDau) / (1000 * 3600 * 24);
            var ngayDau = new Date(fromDate);
            var ngayCuoi = new Date(toDate);
            var ketQua = thoiGianGiuaHaiNgay(ngayDau, ngayCuoi);
            var tongTien;
            tongTien = ketQua * valuGia;
            var tongtien_format = tongTien;
           
            console.log(valuGia);
            var headline = document.getElementById('roototal');
            document.getElementById("myprice").setAttribute('value', tongtien_format);
            headline.innerHTML = '<div class="div-tam-tinh"><div class="niem-yet">Giá niêm yết (' + ketQua + ' x ' + donG + ')</div><div class="niem_yet_price"><span>' + donG + '</span></div></div><div class="tong-gia"><div class="tille_tong">Số ngày ở </div><div class="tong-gia-price"><span>' + ketQua + '</span></div></div>';
            $('.a-dat-phong').addClass('active_book');
        };
        $(document).ready(function () {

            function activeTab(obj) {
                $('.product-tab ul .tab-link').removeClass('active');
                $(obj).addClass('active');
                var id = $(obj).attr('data-tab');
                $('.tab-content').removeClass('active');
                $(id).addClass('active');
            }
            $('.product-tab ul .tab-link').click(function () {
                activeTab(this);
                return false;
            });
            var gallerySlide = new Swiper('#slide_pro_room', {
                speed: 400,
                spaceBetween: 100,
                initialSlide: 0,
                autoHeight: false,
                direction: 'horizontal',
                loop: true,
                autoplay: 5000,
                autoplayStopOnLast: false,
                pagination: '.swiper-pagination',
                paginationType: "bullets",
                effect: 'slide',
                spaceBetween: 10,
                slidesPerView: 1,
                slidesOffsetBefore: 0,
                grabCursor: true,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev"
                },
                breakpoints: {
                    767: {
                        slidesPerView: 2,
                        centeredSlides: true,
                    }
                }


            });
            var swiper = new Swiper('.product-relate-swiper', {
                slidesPerView: 3,
                loop: false,
                grabCursor: true,
                spaceBetween: 30,
                roundLengths: true,
                slideToClickedSlide: false,
                navigation: {
                    nextEl: '.product-relate-swiper .swiper-button-next',
                    prevEl: '.product-relate-swiper .swiper-button-prev',
                },
                autoplay: false,
                breakpoints: {
                    260: {
                        slidesPerView: 1.4,
                        spaceBetween: 15
                    },
                    500: {
                        slidesPerView: 1.4,
                        spaceBetween: 15
                    },
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 15
                    },
                    768: {
                        slidesPerView: 2,
                        spaceBetween: 30
                    },
                    991: {
                        slidesPerView: 3,
                        spaceBetween: 30
                    },
                    1200: {
                        slidesPerView: 3,
                        spaceBetween: 30
                    }
                }
            });
            var bindDateRangeValidation = function (f, s, e) {
                if (!(f instanceof jQuery)) { }
                var jqForm = f, startDateId = s, endDateId = e;
                var checkDateRange = function (startDate, endDate) {
                    var isValid = (startDate != "" && endDate != "") ? startDate <= endDate : true;
                    return isValid;
                }
                var bindValidator = function () {
                    var bstpValidate = jqForm.data('bootstrapValidator');
                    var validateFields = {
                        startDate: {
                            validators: {
                                notEmpty: { message: 'Trường này là bắt buộc.' },
                                callback: {
                                    message: 'Ngày bắt đầu phải nhỏ hơn hoặc bằng Ngày kết thúc.',
                                    callback: function (startDate, validator, $field) {
                                        return checkDateRange(startDate, $('#' + endDateId).val())
                                    }
                                }
                            }
                        },
                        endDate: {
                            validators: {
                                notEmpty: { message: 'Trường này là bắt buộc.' },
                                callback: {
                                    message: 'Ngày kết thúc phải lớn hơn hoặc bằng Ngày bắt đầu.',
                                    callback: function (endDate, validator, $field) {
                                        return checkDateRange($('#' + startDateId).val(), endDate);
                                    }
                                }
                            }
                        },
                        customize: {
                            validators: {
                                customize: { message: 'customize.' }
                            }
                        }
                    }
                    if (!bstpValidate) {
                        jqForm.bootstrapValidator({
                            excluded: [':disabled'],
                        })
                    }
                    jqForm.bootstrapValidator('addField', startDateId, validateFields.startDate);
                    jqForm.bootstrapValidator('addField', endDateId, validateFields.endDate);
                };
                var hookValidatorEvt = function () {
                    var dateBlur = function (e, bundleDateId, action) {
                        jqForm.bootstrapValidator('revalidateField', e.target.id);
                    }
                    $('#' + startDateId).on("dp.change dp.update blur", function (e) {
                        $('#' + endDateId).data("DateTimePicker").setMinDate(e.date);
                        dateBlur(e, endDateId);
                    });
                    $('#' + endDateId).on("dp.change dp.update blur", function (e) {
                        $('#' + startDateId).data("DateTimePicker").setMaxDate(e.date);
                        dateBlur(e, startDateId);
                    });
                }
                bindValidator();
                hookValidatorEvt();
            };

            $(function () {
                var sd = new Date(),
                    ed = new Date();
                var tomorrow = new Date()
                tomorrow.setDate(ed.getDate() + 1);
                $('#fromDate').datetimepicker({
                    pickTime: false,
                    format: "YYYY-MM-DD",
                    defaultDate: sd,
                    minDate: sd
                });
                $('#toDate').datetimepicker({
                    pickTime: false,
                    format: "YYYY-MM-DD",
                    defaultDate: tomorrow,
                    minDate: tomorrow
                });
                bindDateRangeValidation($("#form"), 'fromDate', 'toDate');
            });
            

        });

    </script>
    <div class="sapo-product-reviews-module"></div>

    </div>

@stop
