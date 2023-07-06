@extends('layouts.main')

@section('content')
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

                <li><strong><span>Thư viện ảnh</span></strong></li>

            </ul>
        </div>
    </section>
    <section class="page">
        <div class="container">
            <div class="wrap_background_aside padding-top-15 margin-bottom-40">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <div class="page-title category-title">
                            <h1 class="title-head d-none">Thư viện ảnh</h1>
                            <div class="title_module_index">
                                <h2 class="h2">
                                    Thư viện ảnh
                                </h2>
                            </div>
                        </div>
                        <div class="content-page rte page_thu_vien_anh">
                            <div class="row" id="lightgallery">
                                @foreach($galleries as $gallery)
                                <a class="cl-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-6"
                                    href="{{ Voyager::image($gallery->image) }}"
                                    title="Bean Hotel">
                                    <div class="img-tva">
                                        <img src="{{ Voyager::image($gallery->image) }}"
                                            alt="Bean Hotel" />
                                    </div>
                                </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function() {
            $("#lightgallery").lightGallery({
                thumbnail: false
            });
        });
    </script>
@stop
