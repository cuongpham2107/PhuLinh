<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

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
    {{-- <link href="{{ asset('/assets/product_style_room.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" /> --}}
    <link href="{{ asset('/assets/account_oder_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets/style_page.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('/assets//blog_article_style.scss383b.css') }}"
    rel="stylesheet" type="text/css" media="all" />


  <script src="dist/js/stats.min4143.js?v=69e02f0"></script>
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
  <script defer src="{{asset('/js/alpinejs.persist.min.js')}}"></script>
  <script defer src="{{asset('/js/alpinejs.min.js')}}"></script>
<!-----------------END DEFAULT--------------------->
</head>

<body>
  <div class="opacity_menu"></div>
  
    @include('components.header')
    <div class="bodywrap">
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
    
                    <li><strong><span>Đặt phòng</span></strong></li>
    
                </ul>
            </div>
        </section>
       
        <link rel="preload" href="{{ asset('/assets/moment-min383b.js') }}"
            as="script">
        <script src="{{ asset('/assets/moment-min383b.js') }}"
            type="text/javascript"></script>
        <script src="{{ asset('/assets/bootstrap-notify383b.js') }}"
            type="text/javascript"></script>
        <section class="page page-dat-phong">
            <div class="container">
                <div class="pg_page padding-top-15">
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title category-title">
                                <h1 class="title-head"><a href="dat-phong.html" title="Đặt phòng">Đặt phòng</a></h1>
                            </div>
                            <div class="content-page rte row ">
                                <div class="col-xl-6 col-lg-7 col-md-12 col-sm-12 col-xs-12">
                                    <div class="banner_booking">
                                        <img src="{{ Voyager::image($homeBanners->image) }}"
                                            alt="Bean Hotel" />
    
                                    </div>
                                </div>
                                <div class="callmeback-form col-xl-6 col-lg-5 col-md-12 col-sm-12 col-xs-12">
                                    <form method="post" action="{{route('book')}}" id="contact" accept-charset="UTF-8">
                                        <input name="status" type="hidden" value="dat-phong" />
                                        @csrf
                                        <div class="row pad-room">
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12 col-12 margin-bottom-5">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                                    <label class="title-date">Họ và tên*</label>
                                                </div>
                                                <div class="form-booking">
                                                    <input required type="text" value="" placeholder="Họ và tên"
                                                    name="name"  />
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12 col-12 margin-bottom-5">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                                    <label class="title-date">Số điện thoại*</label>
                                                </div>
                                                <div class="form-booking">
                                                    <input placeholder="Số điện thoại" type="number" id="phone"
                                                        class="form-control phone-booking form-control-lg" autocomplete="off"
                                                        required pattern="\d+"  name="phone" value="">
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12 col-12 margin-bottom-5">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 no-padding">
                                                    <label class="title-date">Ngày nhận</label>
                                                </div>
                                                <div class="form-booking">
                                                    <div class="form-booking-icon">
                                                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                                                            y="0px" viewBox="0 0 36.447 36.447"
                                                            style="enable-background:new 0 0 36.447 36.447;"
                                                            xml:space="preserve">
                                                            <g>
                                                                <g>
                                                                    <path
                                                                        d="M30.224,3.948h-1.098V2.75c0-1.517-1.197-2.75-2.67-2.75c-1.474,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75 c0-1.517-1.197-2.75-2.67-2.75c-1.473,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75c0-1.517-1.197-2.75-2.67-2.75 c-1.473,0-2.67,1.233-2.67,2.75v1.197H6.224c-2.343,0-4.25,1.907-4.25,4.25v24c0,2.343,1.907,4.25,4.25,4.25h24 c2.344,0,4.25-1.907,4.25-4.25v-24C34.474,5.855,32.567,3.948,30.224,3.948z M25.286,2.75c0-0.689,0.525-1.25,1.17-1.25 c0.646,0,1.17,0.561,1.17,1.25v4.896c0,0.689-0.524,1.25-1.17,1.25c-0.645,0-1.17-0.561-1.17-1.25V2.75z M17.206,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M9.125,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M31.974,32.198c0,0.965-0.785,1.75-1.75,1.75h-24c-0.965,0-1.75-0.785-1.75-1.75v-22h27.5V32.198z">
                                                                    </path>
                                                                    <rect x="6.724" y="14.626" width="4.595"
                                                                        height="4.089"></rect>
                                                                    <rect x="12.857" y="14.626" width="4.596"
                                                                        height="4.089"></rect>
                                                                    <rect x="18.995" y="14.626" width="4.595"
                                                                        height="4.089"></rect>
                                                                    <rect x="25.128" y="14.626" width="4.596"
                                                                        height="4.089"></rect>
                                                                    <rect x="6.724" y="20.084" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="12.857" y="20.084" width="4.596"
                                                                        height="4.086"></rect>
                                                                    <rect x="18.995" y="20.084" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="25.128" y="20.084" width="4.596"
                                                                        height="4.086"></rect>
                                                                    <rect x="6.724" y="25.54" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="12.857" y="25.54" width="4.596"
                                                                        height="4.086"></rect>
                                                                    <rect x="18.995" y="25.54" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="25.128" y="25.54" width="4.596"
                                                                        height="4.086"></rect>
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
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12 col-12 margin-bottom-5">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                                    <label class="title-date">Ngày trả</label>
                                                </div>
                                                <div class="form-booking">
                                                    <div class="form-booking-icon">
                                                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                                                            y="0px" viewBox="0 0 36.447 36.447"
                                                            style="enable-background:new 0 0 36.447 36.447;"
                                                            xml:space="preserve">
                                                            <g>
                                                                <g>
                                                                    <path
                                                                        d="M30.224,3.948h-1.098V2.75c0-1.517-1.197-2.75-2.67-2.75c-1.474,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75 c0-1.517-1.197-2.75-2.67-2.75c-1.473,0-2.67,1.233-2.67,2.75v1.197h-2.74V2.75c0-1.517-1.197-2.75-2.67-2.75 c-1.473,0-2.67,1.233-2.67,2.75v1.197H6.224c-2.343,0-4.25,1.907-4.25,4.25v24c0,2.343,1.907,4.25,4.25,4.25h24 c2.344,0,4.25-1.907,4.25-4.25v-24C34.474,5.855,32.567,3.948,30.224,3.948z M25.286,2.75c0-0.689,0.525-1.25,1.17-1.25 c0.646,0,1.17,0.561,1.17,1.25v4.896c0,0.689-0.524,1.25-1.17,1.25c-0.645,0-1.17-0.561-1.17-1.25V2.75z M17.206,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M9.125,2.75 c0-0.689,0.525-1.25,1.17-1.25s1.17,0.561,1.17,1.25v4.896c0,0.689-0.525,1.25-1.17,1.25s-1.17-0.561-1.17-1.25V2.75z M31.974,32.198c0,0.965-0.785,1.75-1.75,1.75h-24c-0.965,0-1.75-0.785-1.75-1.75v-22h27.5V32.198z">
                                                                    </path>
                                                                    <rect x="6.724" y="14.626" width="4.595"
                                                                        height="4.089"></rect>
                                                                    <rect x="12.857" y="14.626" width="4.596"
                                                                        height="4.089"></rect>
                                                                    <rect x="18.995" y="14.626" width="4.595"
                                                                        height="4.089"></rect>
                                                                    <rect x="25.128" y="14.626" width="4.596"
                                                                        height="4.089"></rect>
                                                                    <rect x="6.724" y="20.084" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="12.857" y="20.084" width="4.596"
                                                                        height="4.086"></rect>
                                                                    <rect x="18.995" y="20.084" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="25.128" y="20.084" width="4.596"
                                                                        height="4.086"></rect>
                                                                    <rect x="6.724" y="25.54" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="12.857" y="25.54" width="4.596"
                                                                        height="4.086"></rect>
                                                                    <rect x="18.995" y="25.54" width="4.595"
                                                                        height="4.086"></rect>
                                                                    <rect x="25.128" y="25.54" width="4.596"
                                                                        height="4.086"></rect>
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
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12 col-12 margin-bottom-5">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                                    <label class="title-date">Số người</label>
                                                </div>
                                                <div class="form-booking">
                                                    <input required id="amount-people" type="number" min="1"
                                                        value="1" placeholder="Số người" name="adult" />
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12 col-12 margin-bottom-5">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 text-left no-padding">
                                                    <label class="title-date">Chọn phòng</label>
                                                </div>
                                                <div class="form-booking">
    
                                                    <input style="display:none;" placeholder="Chọn phòng" type="text"
                                                        autocomplete="off" class="form-control name-room form-control-lg"
                                                        required="" value=" Phòng đơn tiêu chuẩn      "
                                                        name="room">
                                                    <select id="nameroom" name="adulteresa" class="bf_select-adults">
                                                       @foreach($rooms as $room)
                                                        <option value="{{$room->title}}">{{$room->title}}
                                                        </option>                                                      
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <textarea placeholder="Nội dung *" name="contact[body]" id="comment"
                                                    class="form-control content-area form-control-lg hidden" rows="5" Required>Nội dung mặc định</textarea>
                                            </div>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                                <div class="div-tem-price">
                                                    <button type="submit" class="a-btn a-dat-phong">Ðặt phòng</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            $(document).ready(function() {
                var bindDateRangeValidation = function(f, s, e) {
                    if (!(f instanceof jQuery)) {}
                    var jqForm = f,
                        startDateId = s,
                        endDateId = e;
                    var checkDateRange = function(startDate, endDate) {
                        var isValid = (startDate != "" && endDate != "") ? startDate <= endDate : true;
                        return isValid;
                    }
                    var bindValidator = function() {
                        var bstpValidate = jqForm.data('bootstrapValidator');
                        var validateFields = {
                            startDate: {
                                validators: {
                                    notEmpty: {
                                        message: 'Trường này là bắt buộc.'
                                    },
                                    callback: {
                                        message: 'Ngày bắt đầu phải nhỏ hơn hoặc bằng Ngày kết thúc.',
                                        callback: function(startDate, validator, $field) {
                                            return checkDateRange(startDate, $('#' + endDateId).val())
                                        }
                                    }
                                }
                            },
                            endDate: {
                                validators: {
                                    notEmpty: {
                                        message: 'Trường này là bắt buộc.'
                                    },
                                    callback: {
                                        message: 'Ngày kết thúc phải lớn hơn hoặc bằng Ngày bắt đầu.',
                                        callback: function(endDate, validator, $field) {
                                            return checkDateRange($('#' + startDateId).val(), endDate);
                                        }
                                    }
                                }
                            },
                            customize: {
                                validators: {
                                    customize: {
                                        message: 'customize.'
                                    }
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
                    var hookValidatorEvt = function() {
                        var dateBlur = function(e, bundleDateId, action) {
                            jqForm.bootstrapValidator('revalidateField', e.target.id);
                        }
                        $('#' + startDateId).on("dp.change dp.update blur", function(e) {
                            $('#' + endDateId).data("DateTimePicker").setMinDate(e.date);
                            dateBlur(e, endDateId);
                        });
                        $('#' + endDateId).on("dp.change dp.update blur", function(e) {
                            $('#' + startDateId).data("DateTimePicker").setMaxDate(e.date);
                            dateBlur(e, startDateId);
                        });
                    }
                    bindValidator();
                    hookValidatorEvt();
                };
    
                $('#nameroom').on('change', function() {
                    $('.name-room').attr('value', this.value);
                });
                $(function() {
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
                $(document).ready(function() {
                    $('.callmeback-form form#contact').submit(function(e) {
                        var fromDate = $('#fromDate').val();
                        var toDate = $('#toDate').val();
                        if ($(".g-recaptcha").size()) {
                            if (grecaptcha.getResponse() == "") {
                                e.preventDefault();
                                alert("Câu trả lời của bạn chưa đúng. Hãy thử lại.");
                            } else {
                                if (fromDate == '') {
                                    alert("Chọn ngày đến");
                                    return false;
                                }
                                if (toDate == '') {
                                    alert("Chọn ngày trả");
                                    return false;
                                }
                                if (toDate < fromDate) {
                                    alert("Ngày trả phải lớn hơn hoặc bằng ngày đến");
                                    return false;
                                }
                                var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                                var mobile = $('#phone').val();
                                if (mobile !== '') {
                                    if (vnf_regex.test(mobile) == false) {
                                        alert(
                                            'Số điện thoại của bạn chưa hợp lệ. Hãy nhập lại số điện thoại chính xác!');
                                        return false;
                                    }
                                }
                            }
                        } else {
                            if (fromDate == '') {
                                alert("Chọn ngày đến");
                                return false;
                            }
                            if (toDate == '') {
                                alert("Chọn ngày trả");
                                return false;
                            }
                            if (toDate < fromDate) {
                                alert("Ngày trả phải lớn hơn hoặc bằng ngày đến");
                                return false;
                            }
                            var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                            var mobile = $('#phone').val();
                            if (mobile !== '') {
                                if (vnf_regex.test(mobile) == false) {
                                    alert(
                                        'Số điện thoại của bạn chưa hợp lệ. Hãy nhập lại số điện thoại chính xác!');
                                    return false;
                                }
                            }
                        }
                    });
                });
    
            });
        </script>
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
  <!-- Main JS File -->
  
  <script src="{{ asset('/assets/js/demo-3.js') }}"></script>
  @stack('js')
  @yield('js')
  @include('components.alert')
</body>

</html>
