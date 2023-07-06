<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
  <!--------------------DEFAULT--------------------->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="canonical" href="{{ request()->url() }}" />
  <meta name="description" content="{{ $description ?? setting('site.description') }}">

  <title>{{ $title ?? setting('site.title') }}</title>

  <link rel="icon" href="{{ Voyager::image(setting('site.logo')) }}" type="image/png" sizes="16x16">
  <meta property="og:image" content="{{ !empty($og_image) ? Voyager::image($og_image) : Voyager::image(setting('site.logo')) }}" />
  <meta property="og:url" content="{{ \Request::fullUrl() }}" />
  <meta property="og:type" content="Website" />
  <meta property="og:title" content="{{ $title ?? setting('site.title') }}" />
  <meta property="og:description" content="{{ $description ?? setting('site.description') }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!-----------------END DEFAULT--------------------->
  <link rel="preload" as="script"
    href="{{ asset('/assets/jquery383b.js') }}" />
  <script src="{{ asset('/assets/jquery383b.js') }}"
    type="text/javascript"></script>
  <link rel="preload" as="script"
    href="{{ asset('/assets/swiper383b.js') }}" />
  <script src="{{ asset('/assets/swiper383b.js') }}"
    type="text/javascript"></script>
  <link rel="preload" as="script"
    href="{{ asset('/assets/lazy383b.js') }}" />
  <script src="{{ asset('/assets/lazy383b.js') }}"
    type="text/javascript"></script>
  <link rel="preload" as='style' type="text/css"
    href="{{ asset('/assets/main.scss383b.css') }}">

  <link rel="preload" as='style' type="text/css"
    href="{{ asset('/assets/index.scss383b.css') }}">

  <link rel="preload" as='style' type="text/css"
    href="{{ asset('/assets/bootstrap-4-3-min383b.css') }}">
  <link rel="preload" as='style' type="text/css"
    href="{{ asset('/assets/quickviews_popup_cart.scss383b.css') }}">
  <link rel="stylesheet"
    href="{{ asset('/assets/bootstrap-4-3-min383b.css') }}">
  <link href="{{ asset('/assets/main.scss383b.css') }}" rel="stylesheet"
    type="text/css" media="all" />

  <link href="{{ asset('/assets/index.scss383b.css') }}" rel="stylesheet"
    type="text/css" media="all" />

  <link href="{{ asset('/assets/quickviews_popup_cart.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />

    <link href="{{ asset('/assets/breadcrumb_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/collection_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/product_style_room.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/account_oder_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/style_page.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/blog_article_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/contact_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/bpr-products-module383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    {{-- <link href="{{ asset('/assets/product_style.scss383b.css.css') }}"
    rel="stylesheet" type="text/css" media="all" /> --}}
  <!-- import css -->

  <!-- Plugins CSS File -->

  <!-- Main CSS File -->

  @stack('styles')
  @yield('styles')

  <!-- Scripts -->
  {{-- @vite(['resources/css/app.css', 'resources/js/app.js']) --}}
  @stack('head')
  @yield('head')

  <!--------------------DEFAULT--------------------->
<!-----------------END DEFAULT--------------------->
</head>

<body>
  <div class="opacity_menu"></div>
  
    @include('components.header')
    <div class="bodywrap">
      @yield('content')
      @include('components.footer')
    </div>
   
  


  <!-- Plugins JS File -->
  <div class="backdrop__body-backdrop___1rvky"></div>
	<link rel="preload" as="style"
		href="{{ asset('/assets/ajaxcart.scss383b.css') }}"
		type="text/css">
	<link href="{{ asset('/assets/ajaxcart.scss383b.css') }}"
		rel="stylesheet" type="text/css" media="all" />
	
	<link rel="preload" as="script"
		href="{{ asset('/assets/quickview383b.js') }}" />
	<script type="text/javascript" defer
		src="{{ asset('/assets/quickview383b.js') }}"></script>

	<script src="{{ asset('/assets/index383b.js') }}"
		type="text/javascript"></script>

	<link rel="preload" as="script"
		href="{{ asset('/assets/main383b.js') }}" />
	<script src="{{ asset('/assets/main383b.js') }}"
		type="text/javascript"></script>

    <link rel="preload" href="{{ asset('/assets/moment-min383b.js') }}"
    as="script">
<script src="{{ asset('/assets/moment-min383b.js') }}"
    type="text/javascript"></script>
<script src="{{ asset('/assets/bootstrap-notify383b.js') }}"
    type="text/javascript"></script>
	<div id="popupCartModal" class="modal fade" role="dialog">
	</div>
	<div class='jas-sale-pop flex pf middle-xs'></div>

  @stack('js')
  @yield('js')
  @include('components.alert')
</body>

</html>
