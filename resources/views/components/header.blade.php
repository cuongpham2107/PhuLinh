@php
$menu = menu('home_menu', '_json');
// dd($menu);
@endphp

<div class="bg_menu_mobile">
    <div class="close_menu"><span><i class="far fa-times"></i></span></div>
</div>
<div id="menu_mobile_full" class="menu_hidden">
    <nav class="nav nav__primary clearfix">
        <ul id="mobile_menu" class="sf-menu">
            @foreach ($menu as $item)
                @if (count($item->children) > 0)
                    <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-76">
                        <a href="{{ asset($item->url) }}" >{{ $item->translate()->title }}</a>
                            
                        <ul class="sub-menu">
                            @foreach ($item->children as $child)
                                <li class="menu-item menu-item-type-taxonomy menu-item-object-service-category menu-item-489">
                                    <a href="{{ asset($child->url) }}">{{ $child->translate()->title }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </li>
                @else
                    <li class="menu-item menu-item-type-custom menu-item-object-custom  @if ($item->url == '/' . Route::current()->uri) current-menu-item @endif current_page_item menu-item-home menu-item-72">
                        <a aria-current="page" href="{{ asset($item->url) }}">{{ $item->translate()->title }}</a>
                    </li>
                @endif
            @endforeach
        </ul>
    </nav>
</div>
<header class="motopress-wrapper header">
    <div class="top_header">
        <div class="container">
            <div class="search_header">
                <div class="click_search"><i class="far fa-search"></i></div>
                <div class="search-form search-form__h">
                    <div class="content_search">
                        <form id="search-header" class="navbar-form" method="get" action="{{ route('searchPost') }}"
                            accept-charset="utf-8">
                            <input type="text" name="key" placeholder="Nhập để tìm kiếm..." class="input_search">
                            <button><i class="far fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_header">
        <div class="container">
            <div class="logo">
                <a href="{{route('home')}}" class="logo_h logo_h__img"><img class="lazyload" 
                        src="{{ Voyager::image(setting('site.logo')) }}"
                        data-src="{{ Voyager::image(setting('site.logo')) }}"
                        alt="Center for Rural Economy Development (CRED)" title="Just another WordPress site"></a>
            </div>
            <div class="r_header">
                <nav class="hidden-xs nav primary_menu clearfix">
                    <ul id="nav_menu" class="sf-menu">
                        @foreach ($menu as $item)
                            @if (count($item->children) > 0)
                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-76">
                                    <a href="{{ asset($item->url) }}" >{{ $item->translate()->title }}</a>
                                        
                                    <ul class="sub-menu">
                                        @foreach ($item->children as $child)
                                            <li class="menu-item menu-item-type-taxonomy menu-item-object-service-category menu-item-489">
                                                <a href="{{ asset($child->url) }}">{{ $child->translate()->title }}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                            @else
                                <li class="menu-item menu-item-type-custom menu-item-object-custom  @if ($item->url == '/' . Route::current()->uri) current-menu-item @endif current_page_item menu-item-home menu-item-72">
                                    <a aria-current="page" href="{{ asset($item->url) }}">{{ $item->translate()->title }}</a>
                                </li>
                            @endif
                        @endforeach
                        
                    </ul>
                </nav>
                
                <div class="search_header">
                    <div class="click_search"><i class="far fa-search"></i></div>
                    <div class="search-form search-form__h">
                        <div class="content_search">
                            <form id="search-header" class="navbar-form" method="get" action="{{ route('searchPost') }}"
                                accept-charset="utf-8">
                                <input type="text" name="key" placeholder="Nhập để tìm kiếm..." class="input_search">
                                <button><i class="far fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="icon_mobile_click"><i class="far fa-bars"></i></div>
            </div>
        </div>
    </div>
</header>