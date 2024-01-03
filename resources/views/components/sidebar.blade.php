<div class="col-xs-12 col-sm-3 r_layout">       
    <div class="sidebar sidebar_right_project " style="margin-top: 50px">
        <div id="custom_html-3" class="widget_text visible-all-devices widget">
            <div class="title_widget"><span>Tin tức mới</span></div>
            <div class="textwidget custom-html-widget">
                <div class="new_sidebar_template ">
                    @foreach ($posts as $post)
                    <div class=" post_item">
                        <div class="content_item">
                            <figure class="featured-thumbnail thumbnail">
                                <a
                                    href="{{ route('posts.show', $post->slug) }}">
                                    <img alt="{{$post->title}}"
                                        src="{{ Voyager::image($post->image) }}" />
                                </a>
                            </figure>
                            <div class="post_meta">
                                <div class="title">
                                    <a href="{{ route('posts.show', $post->slug) }}"
                                        title="{{$post->title}}">{{$post->title}}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div id="custom_html-2" class="widget_text visible-all-devices widget">
            <div class="title_widget"><span>Videos</span></div>
            <div class="textwidget custom-html-widget">
                <div class="video_home_template row">
                    @foreach ($videos as $video)  
                    <div class=" video_item">
                        <div class="content_item">
                            <figure class="featured-thumbnail thumbnail">
                                <a
                                    href="{{ route('events.show', $video->slug) }}">
                                    <img alt="{{$video->title}}"
                                        src="{{ Voyager::image($video->image) }}"
                                        width="370" height="260" />
                                    <div class="icon_video"></div>
                                </a>
                            </figure>
                            <div class="post_meta">
                                <div class="content_meta">
                                    <div class="title">
                                        <a href="{{ route('events.show', $video->slug) }}"
                                            title="{{$video->title}}">{{$video->title}}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>