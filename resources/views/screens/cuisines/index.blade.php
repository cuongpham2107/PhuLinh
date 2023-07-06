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
            <li><strong><span> Ẩm thực</span></strong></li>
        </ul>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="block-collection col-xl-12 col-lg-12 col-12">
            <div class="section-box-bg">
                <h1 class="title-page d-md-block d-none">Ẩm thực</h1>
                <div class="category-products">

                    <div class="products-view products-view-grid list_hover_pro">
                        <div class="row">
                            @foreach ($foods as $item)
                            <div class="col-6 col-xs-6 col-sm-6 col-md-4 col-lg-3 col-xl-3">
                                <div class="item_product_main">
                                    <form  method="post" class="variants product-action" enctype="multipart/form-data">
                                        <div class="product-thumbnail">
                                            <a class="image_thumb" href="{{ route('cuisines.show', $item->slug) }}"
                                                title="{{$item->title}}"><img width="480"
                                                    height="360"
                                                    src="{{ Voyager::image($item->image) }}"
                                                    data-src="{{ Voyager::image($item->image) }}"
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
                    </div>
                    <div class="pagenav">

                        {{ $foods->links('components.paginate') }}

                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="opacity_sidebar"></div>
		<script>
			var colName = "Ẩm thực";

			var colId = 3047379;

			var selectedViewData = "data";
			$('.add_to_cart').click(function (e) {
				e.preventDefault();
				var $this = $(this);
				var form = $this.parents('form');
				$.ajax({
					type: 'POST',
					url: '/cart/add.js',
					async: false,
					data: form.serialize(),
					dataType: 'json',
					beforeSend: function () { },
					success: function (line_item) {
						ajaxCart.load();
						$('.popup-cart-mobile, .backdrop__body-backdrop___1rvky').addClass('active');
						AddCartMobile(line_item);
					},
					cache: false
				});
			});
		</script>
    
</div>
@stop
