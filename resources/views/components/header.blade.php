 @php
    $menu = menu('home_menu', '_json');
    // dd($menu);
@endphp
<header class="header">
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-5 hidden-xs"><i class="fa fa-globe"></i> 
                    @if (App::getLocale() == 'vi')
                    Chào mừng bạn đến với {{setting('site.title')}}
                    @else
                    Welcome to {{setting('site-en.title_en')}}
                    @endif
                   </div>
                <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
                    <ul class="account_header">          
                        <li>
                            {{-- <li>
                                <div class="footer-language"> <i class="lni ti-world"></i>
                                    <select onchange="location = this.value;" name="lang" style="cursor: pointer;">
                                      <option value="{{ route('lang','en') }}" @if(App::getLocale() == 'en') selected @endif >{{__('English')}} </option>
                                      <option value="{{ route('lang','vi') }}" @if(App::getLocale() == 'vi') selected @endif >{{__('Vietnamese')}}</option>
                                    </select>
                                  </div>
                            </li> --}}
                            <li><a href="{{ route('lang','en') }}" title="Đăng ký"><img src="{{ asset('/assets/images/en.png') }}" alt=""> {{__('English')}}</a></li>
                            <li><span>&nbsp;|&nbsp;</span></li>
                            <li><a href="{{ route('lang','vi') }}" title="Đăng ký"><img src="{{ asset('/assets/images/vn.png') }}" alt=""> {{__('Vietnamese')}}</a></li>
                            <li><span>&nbsp;|&nbsp;</span></li>
                            <div class="header_search_menu">
                                <button class="menu-ico-bar" aria-label="Tìm kiếm" title="Tìm kiếm" id="icon-menu-bar">
                                    <svg class="menu-svg" version="1.1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                        viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;"
                                        xml:space="preserve">
                                        <g>
                                            <g>
                                                <path
                                                    d="M141.367,116.518c-7.384-7.39-19.364-7.39-26.748,0c-27.416,27.416-40.891,65.608-36.975,104.79 c0.977,9.761,9.2,17.037,18.803,17.037c0.631,0,1.267-0.032,1.898-0.095c10.398-1.04,17.983-10.316,16.943-20.707 c-2.787-27.845,6.722-54.92,26.079-74.278C148.757,135.882,148.757,123.901,141.367,116.518z" />
                                            </g>
                                        </g>
                                        <g>
                                            <g>
                                                <path
                                                    d="M216.276,0C97.021,0,0,97.021,0,216.276s97.021,216.276,216.276,216.276s216.276-97.021,216.276-216.276 S335.53,0,216.276,0z M216.276,394.719c-98.396,0-178.443-80.047-178.443-178.443S117.88,37.833,216.276,37.833 c98.39,0,178.443,80.047,178.443,178.443S314.672,394.719,216.276,394.719z" />
                                            </g>
                                        </g>
                                        <g>
                                            <g>
                                                <path
                                                    d="M506.458,479.71L368.999,342.252c-7.39-7.39-19.358-7.39-26.748,0c-7.39,7.384-7.39,19.364,0,26.748L479.71,506.458 c3.695,3.695,8.531,5.542,13.374,5.542c4.843,0,9.679-1.847,13.374-5.542C513.847,499.074,513.847,487.094,506.458,479.71z" />
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
                                    <svg class="close-svg" version="1.1" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                        viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;"
                                        xml:space="preserve">
                                        <g>
                                            <g>
                                                <path
                                                    d="M256,0C114.508,0,0,114.497,0,256c0,141.493,114.497,256,256,256c141.492,0,256-114.497,256-256 C512,114.507,397.503,0,256,0z M256,472c-119.384,0-216-96.607-216-216c0-119.385,96.607-216,216-216 c119.384,0,216,96.607,216,216C472,375.385,375.393,472,256,472z" />
                                            </g>
                                        </g>
                                        <g>
                                            <g>
                                                <path
                                                    d="M343.586,315.302L284.284,256l59.302-59.302c7.81-7.81,7.811-20.473,0.001-28.284c-7.812-7.811-20.475-7.81-28.284,0 L256,227.716l-59.303-59.302c-7.809-7.811-20.474-7.811-28.284,0c-7.81,7.811-7.81,20.474,0.001,28.284L227.716,256 l-59.302,59.302c-7.811,7.811-7.812,20.474-0.001,28.284c7.813,7.812,20.476,7.809,28.284,0L256,284.284l59.303,59.302 c7.808,7.81,20.473,7.811,28.284,0C351.398,335.775,351.397,323.112,343.586,315.302z" />
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
                                    </svg> Tìm kiếm
                                </button>
                            </div>
                            <div class="top-search">
                                <form action="{{ route('search') }}" method="get"
                                    class="alper-search-form" role="search">
                                    <div class="input-group">
                                        <input required type="text" id="keyPopular"
                                            aria-label="Nhập từ khóa tìm kiếm"  name="key"
                                            class="search-auto form-control" placeholder="Nhập từ khóa tìm kiếm"
                                            autocomplete="off" />
                                        <span class="input-group-append">
                                            <button class="btn btn-default" type="submit" aria-label="Tìm kiếm">
                                                <svg width="20" height="20" version="1.1"
                                                    xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                                                    y="0px" viewBox="0 0 512 512"
                                                    style="enable-background:new 0 0 512 512;" xml:space="preserve">
                                                    <g>
                                                        <g>
                                                            <path
                                                                d="M141.367,116.518c-7.384-7.39-19.364-7.39-26.748,0c-27.416,27.416-40.891,65.608-36.975,104.79 c0.977,9.761,9.2,17.037,18.803,17.037c0.631,0,1.267-0.032,1.898-0.095c10.398-1.04,17.983-10.316,16.943-20.707 c-2.787-27.845,6.722-54.92,26.079-74.278C148.757,135.882,148.757,123.901,141.367,116.518z" />
                                                        </g>
                                                    </g>
                                                    <g>
                                                        <g>
                                                            <path
                                                                d="M216.276,0C97.021,0,0,97.021,0,216.276s97.021,216.276,216.276,216.276s216.276-97.021,216.276-216.276 S335.53,0,216.276,0z M216.276,394.719c-98.396,0-178.443-80.047-178.443-178.443S117.88,37.833,216.276,37.833 c98.39,0,178.443,80.047,178.443,178.443S314.672,394.719,216.276,394.719z" />
                                                        </g>
                                                    </g>
                                                    <g>
                                                        <g>
                                                            <path
                                                                d="M506.458,479.71L368.999,342.252c-7.39-7.39-19.358-7.39-26.748,0c-7.39,7.384-7.39,19.364,0,26.748L479.71,506.458 c3.695,3.695,8.531,5.542,13.374,5.542c4.843,0,9.679-1.847,13.374-5.542C513.847,499.074,513.847,487.094,506.458,479.71z" />
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
                                            </button>
                                        </span>
                                    </div>
                                </form>
                        
                            </div>
                        </li>
                    </ul>
                    <div class="button-book">
                        <a class="btn_book_hea" href="{{route('booking')}}" title="Đặt phòng">
                            <svg id="outline" height="40" viewBox="0 0 512 512" width="40"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="m256 16a80 80 0 1 0 80 80 80.09041 80.09041 0 0 0 -80-80zm0 144a64 64 0 1 1 64-64 64.07239 64.07239 0 0 1 -64 64z" />
                                <path
                                    d="m277.65674 95.0293-5.73731-40.16114a7.99986 7.99986 0 0 0 -7.91943-6.86816h-16a7.99986 7.99986 0 0 0 -7.91943 6.86816l-5.73731 40.16114a21.877 21.877 0 0 0 38.18408 17.4277c.12952-.14941.25013-.30469.37525-.457h31.09741v-16h-26.2312c-.03174-.32373-.06592-.64722-.11206-.9707zm-17.2168 6.94433a5.87684 5.87684 0 0 1 -10.25781-4.68063l4.75635-33.293h2.123l4.75635 33.293a5.80992 5.80992 0 0 1 -1.37789 4.68063z" />
                                <path
                                    d="m408 64h-56v16h56a8.00917 8.00917 0 0 1 8 8v384a8.00917 8.00917 0 0 1 -8 8h-304a8.00917 8.00917 0 0 1 -8-8v-384a8.00917 8.00917 0 0 1 8-8h56v-16h-56a24.02718 24.02718 0 0 0 -24 24v384a24.02718 24.02718 0 0 0 24 24h304a24.02718 24.02718 0 0 0 24-24v-384a24.02718 24.02718 0 0 0 -24-24z" />
                                <path
                                    d="m384 400v-192a8.00008 8.00008 0 0 0 -8-8h-144a8.00008 8.00008 0 0 0 -8 8v40h-88a8.00008 8.00008 0 0 0 -8 8v192a8.00008 8.00008 0 0 0 8 8h96a8.00008 8.00008 0 0 0 8-8v-40h136a8.00008 8.00008 0 0 0 8-8zm-104-56h-40v-32h80v32zm-48 48h-88v-32h128v32zm-8-48h-32v-32h32zm-48 0h-32v-32h32zm192-48h-32v-32h32zm-32 16h32v32h-32zm32-64h-80v-32h80zm-128-32h32v32h-32zm40 48h40v32h-128v-32zm-136 0h32v32h-32zm0 144h32v32h-32zm80 32h-32v-32h32zm64-80h32v32h-32zm80 32h-32v-32h32z" />
                                <path d="m152 216h16v16h-16z" />
                                <path d="m192 216h16v16h-16z" />
                                <path d="m256 424h16v16h-16z" />
                                <path d="m296 424h16v16h-16z" />
                                <path d="m336 424h16v16h-16z" />
                            </svg>
                            <p class="text-book">{{__('Book')}}</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-header">
        <div class="container">
            <div class="box-hearder">
                <div class="row align-items-center">
                    <div class="col-lg-2 col-md-2 header-logo">
                        <a href="{{route('home')}}">
                        <img src="{{ Voyager::image(setting('site.logo')) }}" alt="logo"></a>
                    </div>
                    <div class="evo-header-flex-item left-mobile col-lg-2 col-md-2 d-sm-inline-block d-lg-none">
                        
                        <button class="menu-icon" aria-label="Menu" id="btn-menu-mobile" title="Menu"><span
                                class="icon-bar"></span><span class="icon-bar"></span><span
                                class="icon-bar"></span></button>
                    </div>
                    <div class="col-lg-9 header-mid">
                        <div class="navigation-horizontal">
                            <nav class="header-nav">
                                <ul id="nav" class="nav">
                                    @foreach ($menu as $item)
                                        @if (count($item->children) > 0)
                                            <li class="nav-item has-childs">
                                                <a href="{{ asset($item->url) }}"
                                                    class="nav-link">{{ $item->translate()->title }}<svg
                                                    width="8" height="17" viewBox="0 0 8 17" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M7.13382 7.1278L7.13379 7.12777L0.512271 0.509686L0.795057 0.226752L0.51227 0.509685C0.512123 0.509538 0.51201 0.509431 0.511927 0.509356L7.13382 7.1278ZM7.13382 7.1278C7.62239 7.61603 7.622 8.40641 7.13301 8.89414L7.13298 8.89417L0.502368 15.5089C0.50222 15.509 0.502106 15.5091 0.502022 15.5092C0.501841 15.5092 0.501547 15.5093 0.501149 15.5093C0.500827 15.5093 0.500574 15.5093 0.500392 15.5092L7.13055 8.89499C7.13056 8.89498 7.13057 8.89497 7.13058 8.89495C7.61976 8.407 7.62011 7.61541 7.13138 7.12699L7.13382 7.1278Z">
                                                    </path>
                                                </svg></a>
                                                    <i class="open_mnu down_icon"></i>
                                                <ul class="dropdown-menu">
                                                    @foreach ($item->children as $child)
                                                        <li class="nav-item-lv2">
                                                            <a class="nav-link" href="{{ asset($child->url) }}">{{ $child->translate()->title }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </li>
                                        @else
                                            <li class=" nav-item @if ($item->url == '/' . Route::current()->uri) active @endif">
                                                <a class="nav-link" href="{{ asset($item->url) }}">{{ $item->translate()->title }}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                    

                                    <li class="nav-item d-lg-none">
                                        <a class="nav-link" href="dat-phong.html" title="Đặt phòng">Đặt phòng</a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="control-menu">
                                <a href="#" id="prev"><svg xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 384 512">
                                        <path fill="#fff"
                                            d="M41.4 233.4c-12.5 12.5-12.5 32.8 0 45.3l192 192c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L109.3 256 278.6 86.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0l-192 192z" />
                                    </svg></a>
                                <a href="#" id="next"><svg xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 384 512">
                                        <path fill="#fff"
                                            d="M342.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-192 192c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L274.7 256 105.4 86.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l192 192z" />
                                    </svg></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
