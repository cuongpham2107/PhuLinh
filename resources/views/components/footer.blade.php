@php
    $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')
        ->limit(3)
        ->get();
    $menu = menu('home_menu', '_json');
    $homeBanners = \App\Banner::where('status', 'ACTIVE')->first();
@endphp

<footer class="footer lazyload" data-src="{{ asset('/assets/bg_footer_1.jpg') }}"
    style="background-image: url('{{ asset('/assets/bg_footer_1383b.jpg') }}');">
    <div class="footer-top hidden-sm hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12">
                    <div class="div-content-sup">
                        <h3 class="title_sup">Hotline hỗ trợ</h3>
                        <div class="phone_sup">
                            <a title="{{ setting('site.phone') }}"
                                href="{{ setting('site.phone') }}">0{{ preg_replace('~.*(\d{3})[^\d]{0,7}(\d{3})[^\d]{0,7}(\d{4}).*~', '$1 $2 $3', setting('site.phone')) }}</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12">
                    <div class="div-content-sup">
                        <h3 class="title_sup">Email hỗ trợ</h3>
                        <div class="phone_sup">
                            <a title="{{ setting('site.email') }}"
                                href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12">
                    <div class="div-content-sup">
                        <h3 class="title_sup">Đăng ký nhận tin</h3>
                        <div class="subscribe_form">
                            <form action="{{ route('contacts') }}" method="post">
                                @csrf
                                <input type="email" class="form-control" value="" placeholder="Email của bạn"
                                    name="email">
                                <button name="subscribe" id="subscribe">Đăng ký</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12">
                    <div class="div-content-sup">
                        <h3 class="title_sup">Kết nối chúng tôi</h3>
                        <div class="social-sup">
                            <ul>

                                <li class="facebook">
                                    <a href="#" title="Facebook" target="_blank" rel="nofollow">
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                            xmlns:xlink="http://www.w3.org/1999/xlink" width="25px" height="25px"
                                            viewBox="0 0 96.124 96.123" style="enable-background:new 0 0 96.124 96.123;"
                                            xml:space="preserve">
                                            <path
                                                d="M72.089,0.02L59.624,0C45.62,0,36.57,9.285,36.57,23.656v10.907H24.037c-1.083,0-1.96,0.878-1.96,1.961v15.803   c0,1.083,0.878,1.96,1.96,1.96h12.533v39.876c0,1.083,0.877,1.96,1.96,1.96h16.352c1.083,0,1.96-0.878,1.96-1.96V54.287h14.654   c1.083,0,1.96-0.877,1.96-1.96l0.006-15.803c0-0.52-0.207-1.018-0.574-1.386c-0.367-0.368-0.867-0.575-1.387-0.575H56.842v-9.246   c0-4.444,1.059-6.7,6.848-6.7l8.397-0.003c1.082,0,1.959-0.878,1.959-1.96V1.98C74.046,0.899,73.17,0.022,72.089,0.02z"
                                                data-original="#000000" class="active-path" data-old_color="#000000"
                                                fill="#EBE7E7"></path>
                                        </svg>
                                    </a>
                                </li>

                                <li class="instagram">
                                    <a href="#" title="Instagram" target="_blank" rel="nofollow">
                                        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="m75 512h362c41.355469 0 75-33.644531 75-75v-362c0-41.355469-33.644531-75-75-75h-362c-41.355469 0-75 33.644531-75 75v362c0 41.355469 33.644531 75 75 75zm-45-437c0-24.8125 20.1875-45 45-45h362c24.8125 0 45 20.1875 45 45v362c0 24.8125-20.1875 45-45 45h-362c-24.8125 0-45-20.1875-45-45zm0 0">
                                            </path>
                                            <path
                                                d="m256 391c74.4375 0 135-60.5625 135-135s-60.5625-135-135-135-135 60.5625-135 135 60.5625 135 135 135zm0-240c57.898438 0 105 47.101562 105 105s-47.101562 105-105 105-105-47.101562-105-105 47.101562-105 105-105zm0 0">
                                            </path>
                                            <path
                                                d="m406 151c24.8125 0 45-20.1875 45-45s-20.1875-45-45-45-45 20.1875-45 45 20.1875 45 45 45zm0-60c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0">
                                            </path>
                                        </svg>
                                    </a>
                                </li>

                                <li class="youtube">
                                    <a href="#" title="Youtube" target="_blank" rel="nofollow">
                                        <svg viewBox="-21 -117 682.66672 682" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="m626.8125 64.035156c-7.375-27.417968-28.992188-49.03125-56.40625-56.414062-50.082031-13.703125-250.414062-13.703125-250.414062-13.703125s-200.324219 0-250.40625 13.183593c-26.886719 7.375-49.03125 29.519532-56.40625 56.933594-13.179688 50.078125-13.179688 153.933594-13.179688 153.933594s0 104.378906 13.179688 153.933594c7.382812 27.414062 28.992187 49.027344 56.410156 56.410156 50.605468 13.707031 250.410156 13.707031 250.410156 13.707031s200.324219 0 250.40625-13.183593c27.417969-7.378907 49.03125-28.992188 56.414062-56.40625 13.175782-50.082032 13.175782-153.933594 13.175782-153.933594s.527344-104.382813-13.183594-154.460938zm-370.601562 249.878906v-191.890624l166.585937 95.945312zm0 0" />
                                        </svg></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mid-footer">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                    <div class="logo-foo">
                        <a href="{{ route('home') }}" class="logo-footer" title="Bean Hotel"><img width="220"
                                height="68" src="{{ Voyager::image(setting('site.logo')) }}"
                                data-src="{{ Voyager::image(setting('site.logo')) }}" alt="Bean Hotel"></a>
                    </div>
                    <div class="content-des">{{ setting('site.description') }}</div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-4 col-xl-4 footer-click">
                    <h4 class="title-menu clicked">
                        Bài viết mới
                    </h4>
                    <ul class="list-menu toggle-mn hidden-mob">
                        @foreach ($posts as $post)
                            <li class="item_blog">
                                <div class="post-info">
                                    <div class="enti-title">
                                        <a href="10-xu-huong-thinh-hanh-trong-nganh-khach-san-2022.html"
                                            title="10 xu hướng thịnh hành trong ngành khách sạn 2022">{{ $post->title }}</a>
                                    </div>
                                    <p class="post-time">{{ $post->created_at->format('d/m/Y') }}</p>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>

                <div class="col-xs-12 col-md-5 col-lg-2 col-xl-4 footer-click">
                    <h4 class="title-menu clicked">
                        Menu
                    </h4>
                    <ul class="list-menu toggle-mn hidden-mob">
                        @foreach ($menu as $item)
                            <li class=" li_menu @if ($item->url == '/' . Route::current()->uri) active @endif">
                                <a class="nav-link" href="{{ asset($item->url) }}">{{ $item->title }}</a>
                            </li>
                        @endforeach
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="bg-footer-bottom copyright clearfix">
        <div class="container">
            <div class="row tablet">
                <div id="copyright" class="col-lg-12 col-md-12 col-xs-12 fot_copyright">
                    <span class="wsp">

                        <span class="mobile">© Bản quyền thuộc về <b>{{ setting('site.title') }}</b>
                            <span class="dash hidden-xs">|</span>
                        </span>

                        <span class="opacity1">Cung cấp bởi</span>

                        <a href="" rel="nofollow" title="KennaTech" target="_blank">KennaTech</a>

                    </span>
                </div>
            </div>

            <a href="#" class="backtop" title="Lên đầu trang"><i class="icon-up"></i></a>

        </div>
    </div>
</footer>
