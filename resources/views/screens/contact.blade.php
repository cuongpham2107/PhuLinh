@extends('layouts.main')

@section('content')
    <div class="motopress-wrapper content-holder clearfix">
        <div class="banner_page">
            <img src="{{ Voyager::image(setting('site.breadcrumb')) }}" alt="Contact">
        </div>
        <div class="content_page">
            <div class="container">
                <section class="title-section" style="margin-top: 75px">
                    <h1 class="title-header">
                        <span>
                            Liên hệ </span>
                    </h1>
                </section><!-- .title-section -->
            </div>
            <div id="pl-14" class="panel-layout">
                <div id="pg-14-0" class="panel-grid panel-has-style">
                    <div class="container panel-row-style panel-row-style-for-14-0">
                        <div id="pgc-14-0-0" class="panel-grid-cell">
                            <div id="panel-14-0-0-0"
                                class="so-panel widget widget_siteorigin-panels-builder panel-first-child panel-last-child"
                                data-index="0">
                                <div id="pl-w6216ebc1ed644" class="panel-layout">
                                    <div id="pg-w6216ebc1ed644-0" class="panel-grid panel-no-style">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6">
                                                <div id="pgc-w6216ebc1ed644-0-0" class="panel-grid-cell"
                                                   >
                                                    <div id="panel-w6216ebc1ed644-0-0-0"
                                                        class="so-panel widget widget_black-studio-tinymce widget_black_studio_tinymce panel-first-child"
                                                        data-index="0">
                                                        <div
                                                            class="tt_lh panel-widget-style panel-widget-style-for-w6216ebc1ed644-0-0-0">
                                                            <div class="widget-title">{{ setting('site.title') }}</div>
                                                            <div class="textwidget">
                                                                <p>Địa chỉ: {{ setting('site.address') }}
                                                                </p>
                                                                <p>Số điện thoại: {{ setting('site.phone') }}</p>
                                                                <p>Email: <a
                                                                        href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="panel-w6216ebc1ed644-0-0-1"
                                                        class="widget_text so-panel widget widget_custom_html panel-last-child"
                                                        data-index="1">
                                                        <div
                                                            class="widget_text form_lienhe panel-widget-style panel-widget-style-for-w6216ebc1ed644-0-0-1">
                                                            <div class="textwidget custom-html-widget">
                                                                <div class="wpcf7 no-js" id="wpcf7-f264-p14-o1"
                                                                    lang="en-US" dir="ltr">
                                                                    
                                                                    <form action="{{ route('contacts') }}" method="post"
                                                                        class="wpcf7-form init" aria-label="Contact form"
                                                                        novalidate="novalidate" data-status="init">
                                                                        @csrf
                                                                        <p>Vui lòng để lại liên hệ, mọi góp ý của du khách
                                                                            sẽ được chúng tôi tiếp nhận và phản hồi
                                                                        </p>
                                                                        <div class="list_group">
                                                                            <p>
                                                                                <span class="wpcf7-form-control-wrap"
                                                                                    data-name="your-name">
                                                                                    <input size="40"
                                                                                        class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                                        placeholder="Họ tên" value=""
                                                                                        type="text"
                                                                                        name="name" /></span>
                                                                            </p>
                                                                        </div>
                                                                        <div class="list_group">
                                                                            <p><span class="wpcf7-form-control-wrap"
                                                                                    data-name="tel-349">
                                                                                    <input size="40"
                                                                                        class="wpcf7-form-control wpcf7-tel wpcf7-validates-as-required wpcf7-text wpcf7-validates-as-tel"
                                                                                        placeholder="Số điện thoại"
                                                                                        value="" type="tel"
                                                                                        name="phone" /></span>
                                                                            </p>
                                                                        </div>
                                                                        <div class="list_group">
                                                                            <p><span class="wpcf7-form-control-wrap"
                                                                                    data-name="your-email"><input
                                                                                        size="40"
                                                                                        class="wpcf7-form-control wpcf7-email wpcf7-validates-as-required wpcf7-text wpcf7-validates-as-email"
                                                                                        placeholder="Email" value=""
                                                                                        type="email"
                                                                                        name="email" /></span>
                                                                            </p>
                                                                        </div>
                                                                        <div class="list_group">
                                                                            <p><span class="wpcf7-form-control-wrap"
                                                                                    data-name="textarea-762">
                                                                                    <textarea cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" placeholder="Nội dung" name="content"></textarea>
                                                                                </span>
                                                                            </p>
                                                                        </div>
                                                                        <div class="list_group">
                                                                            {{-- <button type="submit">gửi</button> --}}
                                                                            <p>
                                                                                <input
                                                                                    class="wpcf7-form-control wpcf7-submit has-spinner"
                                                                                    type="submit" value="Gửi đi" />
                                                                            </p>
                                                                        </div>

                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-6">
                                                <div id="pgc-w6216ebc1ed644-0-1" class="panel-grid-cell">
                                                    <div id="panel-w6216ebc1ed644-0-1-0"
                                                        class="widget_text so-panel widget widget_custom_html panel-first-child panel-last-child"
                                                        data-index="2">
                                                        <div
                                                            class="widget_text map panel-widget-style panel-widget-style-for-w6216ebc1ed644-0-1-0">
                                                            <div class="textwidget custom-html-widget">
                                                                {!! setting('site.map') !!}</div>
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
@endsection
