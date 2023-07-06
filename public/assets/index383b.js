$(document).ready(function ($) {
	$(".pro-tabs").each( function(){
		$(this).find('.tabs-title li:first-child').addClass('current');
		$(this).find('.tab-content').first().addClass('current');
		$(this).find('.tabs-title li').click(function(){
			var tab_id = $(this).attr('data-tab');
			var url = $(this).attr('data-url');
			$(this).closest('.e-tabs').find('.tab-viewall').attr('href',url);
			$(this).closest('.e-tabs').find('.tabs-title li').removeClass('current');
			$(this).closest('.e-tabs').find('.tab-content').removeClass('current');
			$(this).addClass('current');
			$(this).closest('.e-tabs').find("#"+tab_id).addClass('current');
		});    
	});
});
$(".not-dqtab").each( function(e){
	var $this1 = $(this);
	var $this2 = $(this);
	var datasection = $this1.closest('.not-dqtab').attr('data-section');
	$this1.find('.tabs-title .item:first-child').addClass('current');
	$this1.find('.tab-content').first().addClass('current');
	var _this = $(this).find('.wrap_tab_index .title_module_main');
	var droptab = $(this).find('.link_tab_check_click');
	$this1.find('.tabtitle1.ajax .item').click(function(){
		var $this2 = $(this),
			tab_id = $this2.attr('data-tab'),
			url = $this2.attr('data-url');
		var etabs = $this2.closest('.e-tabs');
		etabs.find('.tab-viewall').attr('href',url);
		etabs.find('.tabs-title .item').removeClass('current');
		etabs.find('.tab-content').removeClass('current');
		$this2.addClass('current');
		etabs.find("."+tab_id).addClass('current');
		if(!$this2.hasClass('has-content')){
			$this2.addClass('has-content');		
			getContentTab(url,"."+ datasection+" ."+tab_id);
		}
	});
});
$('.add_to_cart').click(function(e){	
	e.preventDefault();		
	var $this = $(this);
	var form = $this.parents('form');	
	$.ajax({
		type: 'POST',
		url: '/cart/add.js',
		async: false,
		data: form.serialize(),
		dataType: 'json',
		beforeSend: function() { },
		success: function(line_item) {
			ajaxCart.load();
			$('.popup-cart-mobile, .backdrop__body-backdrop___1rvky').addClass('active');
			AddCartMobile(line_item);
		},
		cache: false
	});
});

function getContentTab(url,selector){
	url = url+"?view=ajaxload";
	var loading = '<div class="a-center"><img src="https://bizweb.dktcdn.net/100/472/947/themes/888072/assets/rolling.svg?1671239087510" alt="loading"/></div>';
	$.ajax({
		type: 'GET',
		url: url,
		beforeSend: function() {
			$(selector).html(loading);
		},
		success: function(data) {
			var content = $(data);
			setTimeout(function(){
				$(selector).html(content.html());
				awe_lazyloadImage();
				
				$(document).ready(function () {
					var modal = $('.quickview-product');
					var btn = $('.quick-view');
					var span = $('.quickview-close');
					btn.click(function () {
						modal.show();
					});
					span.click(function () {
						modal.hide();
					});
					$(window).on('click', function (e) {
						if ($(e.target).is('.modal')) {
							modal.hide();
						}
					});
				});
				
				$(selector+' .add_to_cart').click(function(e){	
					e.preventDefault();		
					var $this = $(this);
					var form = $this.parents('form');	
					$.ajax({
						type: 'POST',
						url: '/cart/add.js',
						async: false,
						data: form.serialize(),
						dataType: 'json',
						beforeSend: function() { },
						success: function(line_item) {
							ajaxCart.load();
							$('.popup-cart-mobile, .backdrop__body-backdrop___1rvky').addClass('active');
							AddCartMobile(line_item);
						},
						cache: false
					});
				});
			},100);
		},
		dataType: "html"
	});
}