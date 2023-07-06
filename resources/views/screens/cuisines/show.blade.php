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
                <a class="changeurl" href="{{route('cuisines')}}" title="Ẩm thực"><span>Ẩm thực</span></a>
                <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                        <path fill="currentColor"
                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                            class=""></path>
                    </svg>&nbsp;</span>
            </li>

            <li><strong><span>{{$cuisine->title}}</span></strong>
            <li>

        </ul>
    </div>
</section>
<section class="product layout-product" itemscope itemtype="https://schema.org/Product">
    <div class="container">
        <div class="details-product">
            <div class="row">
                <div class="col-lg-9 col-col-md-9 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="product-detail-left product-images col-12 col-md-6 col-lg-6">
                            <div class="product-image-block relative">
                               <div class="swiper-container gallery-top">
                                    <div class="swiper-wrapper" id="lightgallery">
                                        <a class="swiper-slide" data-hash="0"  >
                                            <img height="716" width="930"
                                                src="{{ Voyager::image($cuisine->image) }}"
                                                alt="{{$cuisine->title}}"
                                                
                                                class="img-responsive mx-auto d-block swiper-lazy" />
                                        </a>                                      
                                    </div>
                                </div>
                                <div class="swiper-container gallery-thumbs">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide" data-hash="0">
                                            <div class="p-100">                                             
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="details-pro col-12 col-md-6 col-lg-6">
                            <h1 class="title-product">{{$cuisine->title}}</h1>
                            
                            <form enctype="multipart/form-data" data-cart-form id="add-to-cart-form"  method="post"
                                class="form-inline" style="height: 40%">
                                <div class="price-box clearfix">

                                    <span class="special-price">
                                        <span class="price product-price">{{$cuisine->price}}₫</span>
                                        <meta itemprop="price" content="80000">
                                        <meta itemprop="priceCurrency" content="VND">
                                    </span> <!-- Giá Khuyến mại -->


                                </div>

                                <div class="product-summary">
                                    <div class="rte">
                                        <p>{{$cuisine->desc}}</p>
                                    </div>
                                </div>
                               
                            </form>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="product-tab e-tabs not-dqtab">
                        <ul class="tabs tabs-title clearfix">
                        <li class="tab-link active" data-tab="#tab-1">
                                <h3>Mô tả sản phẩm</h3>
                            </li>
                        </ul>
                        <div class="tab-float">

                            <div id="tab-1" class="tab-content active content_extab">
                                <div class="rte product_getcontent">

                                    <div id="content">
                                        <p>{!!$cuisine->content!!}</p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="productRelate">
                        <div class="block-title">
                            <h2>
                                <a href="mon-an.html" title="Sản phẩm liên quan">Sản phẩm liên quan</a>
                            </h2>
                        </div>

                        <div class="product-relate-swiper swiper-container">
                            <div class="swiper-wrapper">
                                @foreach ($cuisines as $item)
                                    <div class="swiper-slide">
                                        <div class=" item_product_main">
                                            <form  method="post"  class="variants product-action" data-id="product-actions-28829660"  enctype="multipart/form-data">
                                                <div class="product-thumbnail">
                                                    <a class="image_thumb" href="{{ route('cuisines.show', $item->slug) }}"
                                                        title="{{$item->title}}">
                                                        <img 
                                                            src="{{ Voyager::image($item->image) }}"                                                          
                                                            alt="{{$item->title}}"></a>                                                                            
                                                </div>
                                                <div class="product-info">
                                                    <h3 class="product-name"><a href="{{ route('cuisines.show', $item->slug) }}"
                                                            title="{{$item->title}}">{{$item->title}}</a></h3>
                                                    <div class="price-box">
                                                        <span class="price">{{number_format($item->price)}}₫</span>                                                      
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
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
        </div>
    </div>
</section>
<script>
    var variantsize = false;
    var ww = $(window).width();
    function validate(evt) {
        var theEvent = evt || window.event;
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
        var regex = /[0-9]|\./;
        if (!regex.test(key)) {
            theEvent.returnValue = false;
            if (theEvent.preventDefault) theEvent.preventDefault();
        }
    }
    var selectCallback = function (variant, selector) {
        if (variant) {
            var form = jQuery('#' + selector.domIdPrefix).closest('form');
            for (var i = 0, length = variant.options.length; i < length; i++) {
                var radioButton = form.find('.swatch[data-option-index="' + i + '"] :radio[value="' + variant.options[i] + '"]');
                if (radioButton.size()) {
                    radioButton.get(0).checked = true;
                }
            }
        }
        var addToCart = jQuery('.form-product .btn-cart.normal_button'),
            FastAddToCart = jQuery('.form-product .btn-cart.fast'),
            form = jQuery('.form-product .form-group'),
            productPrice = jQuery('.details-pro .special-price .product-price'),
            qty = jQuery('.inventory_quantity .a-stock'),
            comparePrice = jQuery('.details-pro .old-price .product-price-old'),
            comparePriceText = jQuery('.details-pro .old-price'),
            savePrice = jQuery('.details-pro .save-price .product-price-save'),
            savePriceText = jQuery('.details-pro .save-price'),
            qtyBtn = jQuery('.form-product .form-group .custom-btn-number'),
            BtnSold = jQuery('.form-product .form-group .btn-mua'),
            product_sku = jQuery('.details-product .sku-product .variant-sku');
        if (variant && variant.sku != "" && variant.sku != null) {
            product_sku.html("Mã: <span class='a-sku'>" + variant.sku + "</span>");
        } else {
            product_sku.html('Mã: <span class="a-sku">Đang cập nhật</span>');
        }
        FastAddToCart.addClass('d-none');
        if (variant && variant.available) {
            if (variant.inventory_management == "bizweb") {
                if (variant.inventory_quantity != 0) {
                    qty.html('<span class="a-stock">Còn hàng</span>');
                } else if (variant.inventory_quantity == '') {
                    if (variant.inventory_policy == "continue") {
                        qty.html('<span class="a-stock">Còn hàng</span>');
                    } else {
                        qty.html('<span class="a-stock a-stock-out">Hết hàng</span>');
                    }
                }
            } else {
                qty.html('<span class="a-stock">Còn hàng</span>');
            }
            FastAddToCart.removeClass('d-none');
            addToCart.html('<span class="txt-main">Thêm vào giỏ hàng</span>').removeAttr('disabled');
            BtnSold.removeClass('btnsold');
            qtyBtn.removeClass('d-none');
            if (variant.price == 0) {
                
                
            } else {
                form.removeClass('d-none');
               
                if (variant.compare_at_price > variant.price) {
                    
                } else {
                    
                }
            }
        } else {
            qty.html('<span class="a-stock a-stock-out">Hết hàng</span>');
            FastAddToCart.addClass('d-none');
            addToCart.html('<span class="txt-main">Hết hàng</span>').attr('disabled', 'disabled');
            BtnSold.addClass('btnsold');
            qtyBtn.addClass('d-none');
            if (variant) {
                if (variant.price != 0) {
                    form.removeClass('d-none');
                   
                    if (variant.compare_at_price > variant.price) {
                       
                    } else {
                        
                    }
                } else {
                   
                    
                }
            } else {
               
                
            }
        }
        /*begin variant image*/
        if (variant && variant.image) {
            var originalImage = jQuery(".gallery-thumbs img");
            var stickoriginalImage = jQuery(".nd-product-news img");
            var newImage = variant.image;
            var element = originalImage[0];
            Bizweb.Image.switchImage(newImage, element, function (newImageSizedSrc, newImage, element) {
                $('.gallery-thumbs .swiper-slide').each(function () {
                    var $this = $(this);
                    var imgThis = $this.find('img').attr('data-image');
                    if (newImageSizedSrc.split("?")[0] == imgThis.split("?")[0]) {
                        var pst = $this.attr('data-hash');
                        galleryTop.slideTo(pst, 1000, false);
                    }
                    jQuery(stickoriginalImage).attr('src', newImageSizedSrc);
                });
            });
        }
        /*end of variant image*/
    };
    jQuery(function ($) {

        // Add label if only one product option and it isn't 'Title'. Could be 'Size'.

        // Hide selectors if we only have 1 variant and its title contains 'Default'.

        $('.selector-wrapper').hide();

        $('.selector-wrapper').css({
            'text-align': 'left',
            'margin-bottom': '15px'
        });
    });

    jQuery('.swatch :radio').change(function () {
        var optionIndex = jQuery(this).closest('.swatch').attr('data-option-index');
        var optionValue = jQuery(this).val();
        jQuery(this)
            .closest('form')
            .find('.single-option-selector')
            .eq(optionIndex)
            .val(optionValue)
            .trigger('change');
        $(this).closest('.swatch').find('.header .value-roperties').html(optionValue);
    });
    setTimeout(function () {
        $('.swatch .swatch-element').each(function () {
            $(this).closest('.swatch').find('.header .value-roperties').html($(this).closest('.swatch').find('input:checked').val());
        });
    }, 500);
</script>
<script>
    function activeTab(obj) {
        $('.product-tab ul li').removeClass('active');
        $(obj).addClass('active');
        var id = $(obj).attr('data-tab');
        $('.tab-content').removeClass('active');
        $(id).addClass('active');
    }
    $('.product-tab ul li').click(function () {
        activeTab(this);
        return false;
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 5,
        slidesPerView: 10,
        freeMode: true,
        lazy: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        hashNavigation: true,
        slideToClickedSlide: true,
        breakpoints: {
            260: {
                slidesPerView: 3,
                spaceBetween: 10,
            },
            300: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            500: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            640: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            768: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 10,
            },
            1199: {
                slidesPerView: 5,
                spaceBetween: 10,
            },
        },
        navigation: {
            nextEl: '.gallery-thumbs .swiper-button-next',
            prevEl: '.gallery-thumbs .swiper-button-prev',
        },
    });
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 0,
        lazy: true,
        hashNavigation: true,
        thumbs: {
            swiper: galleryThumbs
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
    $(document).ready(function () {
        $("#lightgallery").lightGallery({
            thumbnail: false
        });
    });
</script>

<div class="sapo-product-reviews-module"></div>
@stop
