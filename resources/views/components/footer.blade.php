@php
$menu = menu('home_menu', '_json');
// dd($menu);
$locations = \App\Location::where('status', 'ACTIVE')->limit(6)->orderBy('id', 'DESC')->get();
@endphp

<footer class="nav-footer section">
    <div class="footer_page">
        <div id="siteorigin-panels-builder-2" class="visible-all-devices widget">
            <div id="pl-w624ff5db269b4" class="panel-layout">
                <div id="pg-w624ff5db269b4-0" class="panel-grid panel-has-style">
                    <div class="panel-row-style panel-row-style-for-w624ff5db269b4-0">
                        <div id="pgc-w624ff5db269b4-0-0" class="panel-grid-cell">
                            <div id="panel-w624ff5db269b4-0-0-0"
                                class="so-panel widget widget_siteorigin-panels-builder panel-first-child panel-last-child"
                                data-index="0">
                                <div
                                    class="container panel-widget-style panel-widget-style-for-w624ff5db269b4-0-0-0">
                                    <div id="pl-w624ff5db26a43" class="panel-layout">
                                        <div id="pg-w624ff5db26a43-0" class="panel-grid panel-no-style">
                                            <div id="pgc-w624ff5db26a43-0-0" class="panel-grid-cell">
                                                <div id="panel-w624ff5db26a43-0-0-0"
                                                    class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child panel-last-child"
                                                    data-index="0">
                                                    <div
                                                        class="contact_foot panel-widget-style panel-widget-style-for-w624ff5db26a43-0-0-0">
                                                        <div class="widget-title">Liên hệ</div>
                                                        <div class="textwidget">
                                                            <ul>
                                                                <li><i class="fas fa-map-marker-alt"></i><span
                                                                        style="font-weight: 400;">{{setting('site.address')}}</span></li>
                                                                <li><i class="fas fa-phone-rotary"></i>{{setting('site.phone')}}</li>
                                                                <li><i
                                                                        class="fas fa-id-card"></i>{{setting('site.email')}}
                                                                </li>
                                                                
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="pgc-w624ff5db26a43-0-1" class="panel-grid-cell">
                                                <div id="panel-w624ff5db26a43-0-1-0"
                                                    class="so-panel widget widget_nav_menu panel-first-child panel-last-child"
                                                    data-index="1">
                                                    <div class="widget-title">Địa điểm</div>
                                                    <div class="menu-menu-service-footer-container">
                                                        <ul id="menu-menu-service-footer" class="menu">
                                                            @foreach ($locations as $location)
                                                            <li id="menu-item-87"
                                                                class="menu-item menu-item-type-taxonomy menu-item-object-service-category menu-item-87">
                                                                <a
                                                                    href="{{ route('locations.show', $location->slug) }}">{{$location->title}}</a></li>
                                                            @endforeach
                                                            
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="pgc-w624ff5db26a43-0-2" class="panel-grid-cell">
                                                <div id="panel-w624ff5db26a43-0-2-0"
                                                    class="so-panel widget widget_creative_gallery_image creative_posts_type_widget panel-first-child panel-last-child"
                                                    data-index="2">
                                                    <div
                                                        class="img_foot panel-widget-style panel-widget-style-for-w624ff5db26a43-0-2-0">
                                                        <div class="widget-title">Hình ảnh</div>
                                                        <div id="aio-widget-creative_gallery_image-1-template"
                                                            class="creative_gallery_image creative_gallery_image_deafault">
                                                            <ul>
                                                                @foreach ($locations as $location)
                                                                <li
                                                                    class=" col-xs-6 col-sm-6 col-md-4 list_item_image">
                                                                    <div class="content_image">
                                                                        <figure
                                                                            class="featured-thumbnail thumbnail">
                                                                            <div class="ajax_image">
                                                                                <img class="item_image"
                                                                                    id="giaiphap_1"
                                                                                    alt="creative_gallery_image_aio-widget-creative_gallery_image-1-template"
                                                                                    loadding="lazy"
                                                                                    src="{{ Voyager::image($location->image) }}" />
                                                                            </div>
                                                                        </figure>
                                                                        <div class="creative_image_meta">
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="pgc-w624ff5db26a43-0-3" class="panel-grid-cell">
                                                <div id="panel-w624ff5db26a43-0-3-0"
                                                    class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                                                    data-index="3">
                                                    <div class="widget-title">Theo dõi</div>
                                                    <div class="textwidget custom-html-widget">
                                                        <div class="social">
                                                            <a class="social_face"
                                                                href="{{setting('site.facebook')}}"><i
                                                                    class="fab fa-facebook-square"
                                                                    aria-hidden="true"></i><span>Facebook</span></a>
                                                            <a class="social_youtube"
                                                                href="{{setting('site.youtube')}}"><i
                                                                    class="fab fa-youtube"></i><span>Youtube</span></a>
                                                            
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
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div id="footer-text" class="footer-text">

                <p>Copyright © {{ date('Y') }} {{ setting('site.title') }}</p> All rights reserved. Created by <a style="color: #47b131;" href="http://kennatech.vn" target="_blank" rel="noopener noreferrer">KennaTech</a>.
            </div>
        </div>
    </div>
</footer>