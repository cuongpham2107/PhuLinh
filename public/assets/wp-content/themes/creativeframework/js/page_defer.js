!function(a,b){var c=b(a,a.document);a.lazySizes=c,"object"==typeof module&&module.exports&&(module.exports=c)}(window,function(a,b){"use strict";if(b.getElementsByClassName){var c,d,e=b.documentElement,f=a.Date,g=a.HTMLPictureElement,h="addEventListener",i="getAttribute",j=a[h],k=a.setTimeout,l=a.requestAnimationFrame||k,m=a.requestIdleCallback,n=/^picture$/i,o=["load","error","lazyincluded","_lazyloaded"],p={},q=Array.prototype.forEach,r=function(a,b){return p[b]||(p[b]=new RegExp("(\\s|^)"+b+"(\\s|$)")),p[b].test(a[i]("class")||"")&&p[b]},s=function(a,b){r(a,b)||a.setAttribute("class",(a[i]("class")||"").trim()+" "+b)},t=function(a,b){var c;(c=r(a,b))&&a.setAttribute("class",(a[i]("class")||"").replace(c," "))},u=function(a,b,c){var d=c?h:"removeEventListener";c&&u(a,b),o.forEach(function(c){a[d](c,b)})},v=function(a,d,e,f,g){var h=b.createEvent("Event");return e||(e={}),e.instance=c,h.initEvent(d,!f,!g),h.detail=e,a.dispatchEvent(h),h},w=function(b,c){var e;!g&&(e=a.picturefill||d.pf)?(c&&c.src&&!b[i]("srcset")&&b.setAttribute("srcset",c.src),e({reevaluate:!0,elements:[b]})):c&&c.src&&(b.src=c.src)},x=function(a,b){return(getComputedStyle(a,null)||{})[b]},y=function(a,b,c){for(c=c||a.offsetWidth;c<d.minSize&&b&&!a._lazysizesWidth;)c=b.offsetWidth,b=b.parentNode;return c},z=function(){var a,c,d=[],e=[],f=d,g=function(){var b=f;for(f=d.length?e:d,a=!0,c=!1;b.length;)b.shift()();a=!1},h=function(d,e){a&&!e?d.apply(this,arguments):(f.push(d),c||(c=!0,(b.hidden?k:l)(g)))};return h._lsFlush=g,h}(),A=function(a,b){return b?function(){z(a)}:function(){var b=this,c=arguments;z(function(){a.apply(b,c)})}},B=function(a){var b,c=0,e=d.throttleDelay,g=d.ricTimeout,h=function(){b=!1,c=f.now(),a()},i=m&&g>49?function(){m(h,{timeout:g}),g!==d.ricTimeout&&(g=d.ricTimeout)}:A(function(){k(h)},!0);return function(a){var d;(a=!0===a)&&(g=33),b||(b=!0,d=e-(f.now()-c),d<0&&(d=0),a||d<9?i():k(i,d))}},C=function(a){var b,c,d=99,e=function(){b=null,a()},g=function(){var a=f.now()-c;a<d?k(g,d-a):(m||e)(e)};return function(){c=f.now(),b||(b=k(g,d))}};!function(){var b,c={lazyClass:"lazyload",loadedClass:"lazyloaded",loadingClass:"lazyloading",preloadClass:"lazypreload",errorClass:"lazyerror",autosizesClass:"lazyautosizes",srcAttr:"data-src",srcsetAttr:"data-srcset",sizesAttr:"data-sizes",minSize:40,customMedia:{},init:!0,expFactor:1.5,hFac:.8,loadMode:2,loadHidden:!0,ricTimeout:0,throttleDelay:125};d=a.lazySizesConfig||a.lazysizesConfig||{};for(b in c)b in d||(d[b]=c[b]);a.lazySizesConfig=d,k(function(){d.init&&F()})}();var D=function(){var g,l,m,o,p,y,D,F,G,H,I,J=/^img$/i,K=/^iframe$/i,L="onscroll"in a&&!/(gle|ing)bot/.test(navigator.userAgent),M=0,N=0,O=0,P=-1,Q=function(a){O--,a&&a.target&&u(a.target,Q),(!a||O<0||!a.target)&&(O=0)},R=function(a,c){var d,f=a,g="hidden"==x(b.body,"visibility")||"hidden"!=x(a.parentNode,"visibility")&&"hidden"!=x(a,"visibility");for(F-=c,I+=c,G-=c,H+=c;g&&(f=f.offsetParent)&&f!=b.body&&f!=e;)(g=(x(f,"opacity")||1)>0)&&"visible"!=x(f,"overflow")&&(d=f.getBoundingClientRect(),g=H>d.left&&G<d.right&&I>d.top-1&&F<d.bottom+1);return g},S=function(){var a,f,h,j,k,m,n,p,q,r,s,t,u=c.elements;if((o=d.loadMode)&&O<8&&(a=u.length)){for(f=0,P++,r=!d.expand||d.expand<1?e.clientHeight>500&&e.clientWidth>500?500:370:d.expand,s=r*d.expFactor,t=d.hFac,N<s&&O<1&&P>2&&o>2&&!b.hidden?(N=s,P=0):N=o>1&&P>1&&O<6?r:M;f<a;f++)if(u[f]&&!u[f]._lazyRace)if(L)if((p=u[f][i]("data-expand"))&&(m=1*p)||(m=N),q!==m&&(y=innerWidth+m*t,D=innerHeight+m,n=-1*m,q=m),h=u[f].getBoundingClientRect(),(I=h.bottom)>=n&&(F=h.top)<=D&&(H=h.right)>=n*t&&(G=h.left)<=y&&(I||H||G||F)&&(d.loadHidden||"hidden"!=x(u[f],"visibility"))&&(l&&O<3&&!p&&(o<3||P<4)||R(u[f],m))){if($(u[f]),k=!0,O>9)break}else!k&&l&&!j&&O<4&&P<4&&o>2&&(g[0]||d.preloadAfterLoad)&&(g[0]||!p&&(I||H||G||F||"auto"!=u[f][i](d.sizesAttr)))&&(j=g[0]||u[f]);else $(u[f]);j&&!k&&$(j)}},T=B(S),U=function(a){s(a.target,d.loadedClass),t(a.target,d.loadingClass),u(a.target,W),v(a.target,"lazyloaded")},V=A(U),W=function(a){V({target:a.target})},X=function(a,b){try{a.contentWindow.location.replace(b)}catch(c){a.src=b}},Y=function(a){var b,c=a[i](d.srcsetAttr);(b=d.customMedia[a[i]("data-media")||a[i]("media")])&&a.setAttribute("media",b),c&&a.setAttribute("srcset",c)},Z=A(function(a,b,c,e,f){var g,h,j,l,o,p;(o=v(a,"lazybeforeunveil",b)).defaultPrevented||(e&&(c?s(a,d.autosizesClass):a.setAttribute("sizes",e)),h=a[i](d.srcsetAttr),g=a[i](d.srcAttr),f&&(j=a.parentNode,l=j&&n.test(j.nodeName||"")),p=b.firesLoad||"src"in a&&(h||g||l),o={target:a},p&&(u(a,Q,!0),clearTimeout(m),m=k(Q,2500),s(a,d.loadingClass),u(a,W,!0)),l&&q.call(j.getElementsByTagName("source"),Y),h?a.setAttribute("srcset",h):g&&!l&&(K.test(a.nodeName)?X(a,g):a.src=g),f&&(h||l)&&w(a,{src:g})),a._lazyRace&&delete a._lazyRace,t(a,d.lazyClass),z(function(){(!p||a.complete&&a.naturalWidth>1)&&(p?Q(o):O--,U(o))},!0)}),$=function(a){var b,c=J.test(a.nodeName),e=c&&(a[i](d.sizesAttr)||a[i]("sizes")),f="auto"==e;(!f&&l||!c||!a[i]("src")&&!a.srcset||a.complete||r(a,d.errorClass)||!r(a,d.lazyClass))&&(b=v(a,"lazyunveilread").detail,f&&E.updateElem(a,!0,a.offsetWidth),a._lazyRace=!0,O++,Z(a,b,f,e,c))},_=function(){if(!l){if(f.now()-p<999)return void k(_,999);var a=C(function(){d.loadMode=3,T()});l=!0,d.loadMode=3,T(),j("scroll",function(){3==d.loadMode&&(d.loadMode=2),a()},!0)}};return{_:function(){p=f.now(),c.elements=b.getElementsByClassName(d.lazyClass),g=b.getElementsByClassName(d.lazyClass+" "+d.preloadClass),j("scroll",T,!0),j("resize",T,!0),a.MutationObserver?new MutationObserver(T).observe(e,{childList:!0,subtree:!0,attributes:!0}):(e[h]("DOMNodeInserted",T,!0),e[h]("DOMAttrModified",T,!0),setInterval(T,999)),j("hashchange",T,!0),["focus","mouseover","click","load","transitionend","animationend","webkitAnimationEnd"].forEach(function(a){b[h](a,T,!0)}),/d$|^c/.test(b.readyState)?_():(j("load",_),b[h]("DOMContentLoaded",T),k(_,2e4)),c.elements.length?(S(),z._lsFlush()):T()},checkElems:T,unveil:$}}(),E=function(){var a,c=A(function(a,b,c,d){var e,f,g;if(a._lazysizesWidth=d,d+="px",a.setAttribute("sizes",d),n.test(b.nodeName||""))for(e=b.getElementsByTagName("source"),f=0,g=e.length;f<g;f++)e[f].setAttribute("sizes",d);c.detail.dataAttr||w(a,c.detail)}),e=function(a,b,d){var e,f=a.parentNode;f&&(d=y(a,f,d),e=v(a,"lazybeforesizes",{width:d,dataAttr:!!b}),e.defaultPrevented||(d=e.detail.width)&&d!==a._lazysizesWidth&&c(a,f,e,d))},f=function(){var b,c=a.length;if(c)for(b=0;b<c;b++)e(a[b])},g=C(f);return{_:function(){a=b.getElementsByClassName(d.autosizesClass),j("resize",g)},checkElems:g,updateElem:e}}(),F=function(){F.i||(F.i=!0,E._(),D._())};return c={cfg:d,autoSizer:E,loader:D,init:F,uP:w,aC:s,rC:t,hC:r,fire:v,gW:y,rAF:z}}});
var load_js = true;
if(load_js){
  //setTimeout(aio_facebook, 2000);
document.addEventListener('scroll', initGTMOnEvent);
document.addEventListener('mousemove', initGTMOnEvent);
document.addEventListener('touchstart', initGTMOnEvent);
  load_js = false;
}
function initGTMOnEvent (event) {
  initGTM();
  event.currentTarget.removeEventListener(event.type, initGTMOnEvent);
}
//document.addEventListener('DOMContentLoaded', () => { setTimeout(initGTM, 2000); });
function initGTM () {
  if (window.gtmDidInit) {
    return false;
  }
  window.gtmDidInit = true;
  // Create the script
  const script = document.createElement('script');
  script.type = 'text/javascript';
  script.onload = () => { 
    window.dataLayer = window.dataLayer || [];
    function gtag(){ 
      dataLayer.push(arguments); }
      gtag('js', new Date());
      gtag('config', 'G-7SNR13R660');
    }
  script.src = 'https://www.googletagmanager.com/gtag/js?id=G-7SNR13R660';
  script.defer = true;
  //document.getElementsByTagName('body')[0].appendChild(script);
  document.head.appendChild(script);
}
function aio_facebook(){
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=1555679781315768&autoLogAppEvents=1';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
}
jQuery('.video_warper i').click(function(){
  var data_video = jQuery(this).closest('.video_warper').attr('data-video');
  jQuery(this).closest('.video_warper').html('<iframe width="100%" height="470" src="'+data_video+'?rel=0&autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>');
});
jQuery('.ajax_voting').bind('click', voitng);
  function voitng(){
    var item= jQuery(this),
      item_parent = item.parents('[class*="meta_type"]'),
      type = item.attr('date-type'),
      item_class='user_'+type,
      count = parseInt(jQuery('.voting_count', item).text()),
      top_position = (type==='like') ? -18 : 18 ,
      mark = (type==='like') ? '+' : '-', 
      post_url = item.attr('href');

    jQuery('.post_like>a, .post_dislike>a', item_parent).unbind('click', voitng).removeAttr('href date-type').removeClass('ajax_voting').addClass('user_voting');
    item.removeClass('user_voting').addClass(item_class).find('.voting_count').text(++count).append('<span class="animation_item">'+mark+'1</span>');
    jQuery('.animation_item', item).stop(true).animate({'top':top_position, opacity:'0'}, 500, function(){jQuery(this).remove()});

    jQuery.post(post_url);
    return false;
  }
  jQuery(window).scroll(function () {
  if (jQuery(this).scrollTop() >0) {
    jQuery('.header').addClass('fixed_header');
  } else {
    jQuery('.header').removeClass('fixed_header').removeClass('swingOutX').removeClass('no_top').addClass('swingInX');
  }
});
jQuery('[id*="creativeslider_"]').slick({
  dots: false,
  arrows: true,
  infinite: true,
  speed: 500,
  slidesToShow: 1,
  slidesToScroll: 1,
  fade: true,
  cssEase: 'linear',
  autoplay: true,
  autoplaySpeed: 3000,
  adaptiveHeight: true,
});
jQuery('.newhome_template.row').slick({
  arrows: false,
  dots: true,
  infinite: false,
  speed: 300,
  adaptiveHeight: true,
  slidesToShow: 2,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 401,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    },
  ]
});
jQuery('.sanpham_home .sanpham_template.row').slick({
  arrows: false,
  dots: true,
  infinite: false,
  speed: 300,
  adaptiveHeight: true,
  slidesToShow: 3,
  slidesToScroll: 3,
  responsive: [
    {
      breakpoint: 781,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 350,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    },
  ]
});

jQuery('.partner ul').slick({
  arrows: true,
  dots: false,
  infinite: true,
  speed: 300,
  autoplay: true,
  autoplaySpeed: 2000,
  adaptiveHeight: true,
  slidesToShow: 8,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1025,
      settings: {
        slidesToShow: 6,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 781,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 481,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      }
    },
  ]
});
jQuery('.doitac ul').slick({
  arrows: true,
  dots: false,
  infinite: false,
  speed: 300,
  adaptiveHeight: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 781,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      }
    },{
      breakpoint: 481,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
      }
    },
  ]
});
jQuery('.home .project_template').slick({
  arrows: true,
  dots: true,
  infinite: true,
  speed: 300,
  adaptiveHeight: true,
  slidesToShow: 5,
  slidesToScroll: 1,
  centerMode: true,
  centerPadding: '95px',
  responsive: [
    {
      breakpoint: 1401,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 601,
      settings: {
        slidesToShow: 1,
        slidesToScroll:  1,
      }
    },
    {
      breakpoint: 376,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      }
    },
  ]
});
jQuery('.nhanxet_template ul').slick({
  arrows: false,
  dots: true,
  infinite: true,
  speed: 300,
  adaptiveHeight: true,
  slidesToShow: 1,
  slidesToScroll: 1,
});
jQuery('.baivietlienquan .row.list_post_category, .baivietlienquan .row.list_project').slick({
  arrows: true,
  dots: false,
  infinite: true,
  speed: 300,
  adaptiveHeight: true,
  slidesToShow: 3,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1025,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 781,
      settings: {
        slidesToShow: 2,
        slidesToScroll:  1,
      }
    },
    {
      breakpoint: 376,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      }
    },
  ]
});
jQuery('.slide_single').slick({
  centerMode: true,
  centerPadding: '530px',
  slidesToShow: 1,
  responsive: [
    {
      breakpoint: 1601,
      settings: {
        centerMode: true,
        centerPadding: '330px',
        slidesToShow: 1
      }
    },
    {
      breakpoint: 1401,
      settings: {
        centerMode: true,
        centerPadding: '260px',
        slidesToShow: 1
      }
    },
    {
      breakpoint: 1025,
      settings: {
        arrows: false,
        dots: true,
        centerMode: true,
        centerPadding: '150px',
        slidesToShow: 1
      }
    },
    {
      breakpoint: 781,
      settings: {
        arrows: false,
        dots: true,
        centerMode: true,
        centerPadding: '100px',
        slidesToShow: 1
      }
    },
    {
      breakpoint: 481,
      settings: {
        arrows: false,
        dots: true,
        centerMode: true,
        centerPadding: '50px',
        slidesToShow: 1
      }
    },
  ]
});
jQuery(function(){
  jQuery('.sidebar li.menu-item-has-children').append("<span><i class='fas fa-chevron-down'></i></span>");
  jQuery('.sidebar li.menu-item-has-children span').click(function(){
  if (jQuery(this).closest("li.menu-item-has-children").hasClass('active')==true) {
    jQuery(this).closest("li.menu-item-has-children").removeClass('active');
    jQuery(this).html("<i class='fas fa-chevron-down'></i>");
    jQuery(this).closest("li.menu-item-has-children").find('ul:first').stop().slideUp(300);
  }
  else{
    jQuery(this).html("<i class='fas fa-chevron-up'></i>");
    jQuery(this).closest("li.menu-item-has-children").find('ul:first').slideDown(300);
    jQuery(this).closest("li.menu-item-has-children").addClass('active');
  }
      
  });
});
jQuery('.click_search').click(function () {
  if(jQuery('.search-form.search-form__h').hasClass('active')==true){
    jQuery('.search-form.search-form__h').removeClass('active');
    jQuery(this).html('<i class="far fa-search"></i>');
  }
  else{
    jQuery('.search-form.search-form__h').addClass('active');
    jQuery(this).html('<i class="fal fa-times"></i>');
  }
});
jQuery('.ajax_load_more a').click(function(e) {
    e.preventDefault();
    var data_offset = parseInt(jQuery(this).attr('data-offset'));
    var data_load = jQuery(this).attr('data-load');
    var data_text = jQuery(this).attr('data-text');
    var number_load = parseInt(jQuery(this).attr('number-load'));
    var max_post = parseInt(jQuery(this).attr('max-post'));
    var post_type = jQuery(this).attr('post-type');
    var taxonomy = jQuery(this).attr('taxonomy');
    var category_name = jQuery(this).attr('category_name');
    var check_number_offset = data_offset+number_load;
    jQuery(this).html(data_load);
  jQuery.post(creative_ajax, {
    action:'creative_loadmore',data_offset:data_offset,number_load:number_load,max_post:max_post,post_type:post_type,taxonomy:taxonomy,category_name:category_name}, function(response) {
        jQuery('.ajax_load_more a').html(data_text);
        jQuery('.ajax_load_more a').attr('data-offset',check_number_offset);
        jQuery('.list_post_category').append(response);
        if(parseInt(check_number_offset)>=max_post){
        jQuery('.ajax_load_more').html('');
      }
    });
    return false;
})
jQuery('.ungtuyen_click').click(function(){
  jQuery('.vitri_ungtuyen').val(jQuery(this).attr('data-title'));
  jQuery('.width_form .title span').html(jQuery(this).attr('data-title'));
  jQuery('html').addClass('no_scroll');
  jQuery('#form_content_ungtuyen').stop(true,true).fadeIn(300).addClass('active');
  jQuery("#form_content_ungtuyen .bg_form_click_poup").click(function(){
    jQuery("#form_content_ungtuyen").stop(true,true).fadeOut(300).removeClass('active');
    jQuery('html').removeClass('no_scroll');
  });
  jQuery(".close_form_poup").click(function(){
    jQuery("#form_content_ungtuyen").stop(true,true).fadeOut(300).removeClass('active');
    jQuery('html').removeClass('no_scroll');
  });
});
jQuery(".tabcontent_container .tab_content:not(:first)").addClass('not_show');
jQuery(".tabcontainer ul li:first").addClass("active");
jQuery(".tabcontainer ul li").click(function(){
  var activeTab = jQuery(this).find('a').attr("data-tab"); 
  jQuery(".tabcontainer ul li").removeClass("active"); 
  jQuery(this).addClass("active"); 
  jQuery(".tabcontent_container .tab_content").addClass('not_show'); 
  jQuery(activeTab).stop().removeClass('not_show');
});