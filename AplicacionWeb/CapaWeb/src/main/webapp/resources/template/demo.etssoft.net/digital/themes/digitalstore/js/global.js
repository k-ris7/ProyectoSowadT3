/*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/
//global variables
var responsiveflag = false;
$(document).ready(function(){
    $('.toogle_user').on('click', function(e){
        if($(window).width() <= 767) {
            e.preventDefault();
             $(this).parent().find('.header_user_info').toggleClass('active');    
        }
    });
    $('.toogle_nav').on('click', function(e){
        if($(window).width() <= 767) {
            e.preventDefault();
             $(this).next().toggleClass('active');    
        }
    });

	initfb(document, 'script', 'facebook-jssdk');
    
    function initfb(d, s, id)
    {
    	var js, fjs = d.getElementsByTagName(s)[0];
    	if (d.getElementById(id)) 
    		return;
    	js = d.createElement(s); js.id = id;
    	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=334341610034299";
    	fjs.parentNode.insertBefore(js, fjs);
    }
    
    
   $(document).on('click','.allway_show.ybc-menu-toggle',function(e){
        if ($(window).width() > 767)
        $(this).next().slideToggle(0);
   });
   $(window).on('resize',function(){
        if ($(window).width() > 1199){
            $('#index .header_style_1 .ybc-menu-main-content').slideDown();
        } else {
            $('.header_style_1 .ybc-menu-main-content').slideUp();
        }
   });
   $(document).on('click','.info_toggle',function(e){
        if ($(window).width() < 768)
        $(this).next().toggleClass('active');
        return false;
   });
    /** end dola **/
        
	highdpiInit();
	responsiveResize();
	$(window).resize(responsiveResize);
	if (navigator.userAgent.match(/Android/i))
	{
		var viewport = document.querySelector('meta[name="viewport"]');
		viewport.setAttribute('content', 'initial-scale=1.0,maximum-scale=1.0,user-scalable=0,width=device-width,height=device-height');
		window.scrollTo(0, 1);
	}
	if (typeof quickView !== 'undefined' && quickView)
		quick_view();
	dropDown();
    dropDown1();
	if (typeof page_name != 'undefined' && !in_array(page_name, ['index', 'product']))
	{
		bindGrid();

		$(document).on('change', '.selectProductSort', function(e){
			if (typeof request != 'undefined' && request)
				var requestSortProducts = request;
			var splitData = $(this).val().split(':');
			var url = '';
			if (typeof requestSortProducts != 'undefined' && requestSortProducts)
			{
				url += requestSortProducts ;
				if (typeof splitData[0] !== 'undefined' && splitData[0])
				{
					url += ( requestSortProducts.indexOf('?') < 0 ? '?' : '&') + 'orderby=' + splitData[0] + (splitData[1] ? '&orderway=' + splitData[1] : '');
					if (typeof splitData[1] !== 'undefined' && splitData[1])
						url += '&orderway=' + splitData[1];
				}
				document.location.href = url;
			}
		});

		$(document).on('change', 'select[name="n"]', function(){
			$(this.form).submit();
		});

		$(document).on('change', 'select[name="currency_payment"]', function(){
			setCurrency($(this).val());
		});
	}

	$(document).on('change', 'select[name="manufacturer_list"], select[name="supplier_list"]', function(){
		if (this.value != '')
			location.href = this.value;
	});

	$(document).on('click', '.back', function(e){
		e.preventDefault();
		history.back();
	});

	jQuery.curCSS = jQuery.css;
	if (!!$.prototype.cluetip)
		$('a.cluetip').cluetip({
			local:true,
			cursor: 'pointer',
			dropShadow: false,
			dropShadowSteps: 0,
			showTitle: false,
			tracking: true,
			sticky: false,
			mouseOutClose: true,
			fx: {
				open:       'fadeIn',
				openSpeed:  'fast'
			}
		}).css('opacity', 0.8);

	if (typeof(FancyboxI18nClose) !== 'undefined' && typeof(FancyboxI18nNext) !== 'undefined' && typeof(FancyboxI18nPrev) !== 'undefined' && !!$.prototype.fancybox)
		$.extend($.fancybox.defaults.tpl, {
			closeBtn : '<a title="' + FancyboxI18nClose + '" class="fancybox-item fancybox-close" href="javascript:;"></a>',
			next     : '<a title="' + FancyboxI18nNext + '" class="fancybox-nav fancybox-next" href="javascript:;"><span></span></a>',
			prev     : '<a title="' + FancyboxI18nPrev + '" class="fancybox-nav fancybox-prev" href="javascript:;"><span></span></a>'
		});

	// Close Alert messages
	$(".alert.alert-danger").on('click', this, function(e){
		if (e.offsetX >= 16 && e.offsetX <= 39 && e.offsetY >= 16 && e.offsetY <= 34)
			$(this).fadeOut();
	});
});

function highdpiInit()
{
	if (typeof highDPI === 'undefined')
		return;
	if(highDPI && $('.replace-2x').css('font-size') == "1px")
	{
		var els = $("img.replace-2x").get();
		for(var i = 0; i < els.length; i++)
		{
			src = els[i].src;
			extension = src.substr( (src.lastIndexOf('.') +1) );
			src = src.replace("." + extension, "2x." + extension);

			var img = new Image();
			img.src = src;
			img.height != 0 ? els[i].src = src : els[i].src = els[i].src;
		}
	}
}


// Used to compensante Chrome/Safari bug (they don't care about scroll bar for width)
function scrollCompensate()
{
	var inner = document.createElement('p');
	inner.style.width = "100%";
	inner.style.height = "200px";

	var outer = document.createElement('div');
	outer.style.position = "absolute";
	outer.style.top = "0px";
	outer.style.left = "0px";
	outer.style.visibility = "hidden";
	outer.style.width = "200px";
	outer.style.height = "150px";
	outer.style.overflow = "hidden";
	outer.appendChild(inner);

	document.body.appendChild(outer);
	var w1 = inner.offsetWidth;
	outer.style.overflow = 'scroll';
	var w2 = inner.offsetWidth;
	if (w1 == w2) w2 = outer.clientWidth;

	document.body.removeChild(outer);

	return (w1 - w2);
}

function responsiveResize()
{
	compensante = scrollCompensate();
	if (($(window).width()+scrollCompensate()) <= 767 && responsiveflag == false)
	{
		accordion('enable');
		accordionFooter('enable');
		responsiveflag = true;
	}
	else if (($(window).width()+scrollCompensate()) >= 768)
	{
		accordion('disable');
		accordionFooter('disable');
		responsiveflag = false;
		if (typeof bindUniform !=='undefined')
			bindUniform();
	}
	blockHover();
}

function blockHover(status)
{
	var screenLg = $('body').find('.container').width() == 1170;

	if ($('.product_list').is('.grid'))
		if (screenLg)
			$('.product_list .button-container').hide();
		else
			$('.product_list .button-container').show();

	$(document).off('mouseenter').on('mouseenter', '.product_list.grid li.ajax_block_product .product-container', function(e){
		if (screenLg)
		{
			var pcHeight = $(this).parent().outerHeight();
			var pcPHeight = $(this).parent().find('.button-container').outerHeight() + $(this).parent().find('.comments_note').outerHeight() + $(this).parent().find('.functional-buttons').outerHeight();
			$(this).parent().addClass('hovered');//.css({'height':pcHeight + pcPHeight, 'margin-bottom':pcPHeight * (-1)});
			$(this).find('.button-container').show();
		}
	});

	$(document).off('mouseleave').on('mouseleave', '.product_list.grid li.ajax_block_product .product-container', function(e){
		if (screenLg)
		{
			$(this).parent().removeClass('hovered');//.css({'height':'auto', 'margin-bottom':'0'});
			$(this).find('.button-container').hide();
		}
	});
}

function quick_view()
{
	$(document).on('click', '.quick-view:visible, .quick-view-mobile:visible', function(e){
		e.preventDefault();
		var url = $(this).data('url');
		var anchor = '';

		if (url.indexOf('#') != -1)
		{
			anchor = url.substring(url.indexOf('#'), url.length);
			url = url.substring(0, url.indexOf('#'));
		}

		if (url.indexOf('?') != -1)
			url += '&';
		else
			url += '?';

		if (!!$.prototype.fancybox)
			$.fancybox({
				'padding':  0,
				'width':    1087,
				'height':   610,
				'type':     'iframe',
				'href':     url + 'content_only=1' + anchor
			});
	});
}

function bindGrid()
{
	var storage = false;
	if (typeof(getStorageAvailable) !== 'undefined') {
		storage = getStorageAvailable();
	}
	if (!storage) {
		return;
	}

	var view = $.totalStorage('display');

	if (!view && (typeof displayList != 'undefined') && displayList)
		view = 'list';

	if (view && view != 'grid')
		display(view);
	else
		$('.display').find('li#grid').addClass('selected');

	$(document).on('click', '#grid', function(e){
		e.preventDefault();
		display('grid');
	});

	$(document).on('click', '#list', function(e){
		e.preventDefault();
		display('list');
	});
}

function display(view)
{
	if (view == 'list')
	{
		$('ul.product_list').removeClass('grid').addClass('list row');
		$('.product_list > li').removeClass('col-xs-12 col-sm-6 col-md-4').addClass('col-xs-12');
		$('.product_list > li').each(function(index, element) {
			var html = '';
			html = '<div class="product-container"><div class="row">';
			html += '<div class="left-block col-xs-5 col-sm-5 col-md-4">' + $(element).find('.left-block').html() + '</div>';
			html += '<div class="center-block col-xs-7 col-sm-7">';
                html += '<h5 itemprop="name">'+ $(element).find('h5').html() + '</h5>';
    			var price = $(element).find('.content_price').html();
    			if (price != null) {
    				html += '<div class="content_price col-xs-12 col-md-12">'+ price + '</div>';
    			}
                html += '<p class="product-desc">'+ $(element).find('.product-desc').html() + '</p>';
                html += '<div class="button_addtocart">'+ $(element).find('.button_addtocart').html() + '</div>';
			html += '</div></div></div>';
			$(element).html(html);
		});
		$('.display').find('li#list').addClass('selected');
		$('.display').find('li#grid').removeAttr('class');
		$.totalStorage('display', 'list');
	}
	else
	{
		$('ul.product_list').removeClass('list').addClass('grid row');
		$('.product_list > li').removeClass('col-xs-12').addClass('col-xs-12 col-sm-6 col-md-4');
		$('.product_list > li').each(function(index, element) {
			var html = '';
			html += '<div class="product-container">';
			html += '<div class="left-block">' + $(element).find('.left-block').html() + '</div>';
			html += '<div class="right-block">';
			html += '<div class="product-flags">'+ $(element).find('.product-flags').html() + '</div>';
			html += '<h5 itemprop="name">'+ $(element).find('h5').html() + '</h5>';
			
			html += '<p itemprop="description" class="product-desc">'+ $(element).find('.product-desc').html() + '</p>';
			var price = $(element).find('.content_price').html(); // check : catalog mode is enabled
			if (price != null) {
				html += '<div class="content_price">'+ price + '</div>';
			}
			html += '<div class="button_addtocart">'+ $(element).find('.button_addtocart').html() + '</div>';
			html += '</div>';
			//html += '<div class="functional-buttons clearfix">' + $(element).find('.functional-buttons').html() + '</div>';
			html += '</div>';
			$(element).html(html);
		});
		$('.display').find('li#grid').addClass('selected');
		$('.display').find('li#list').removeAttr('class');
		$.totalStorage('display', 'grid');
	}
}

function dropDown()
{
	elementClick = '#header .current';
	elementSlide =  'ul.toogle_content';
	activeClass = 'active';

	$(elementClick).on('click', function(e){
		e.stopPropagation();
		var subUl = $(this).next(elementSlide);
		if(subUl.is(':hidden'))
		{
			subUl.slideDown();
			$(this).addClass(activeClass);
		}
		else
		{
			subUl.slideUp();
			$(this).removeClass(activeClass);
		}
		$(elementClick).not(this).next(elementSlide).slideUp();
		$(elementClick).not(this).removeClass(activeClass);
		e.preventDefault();
	});

	$(elementSlide).on('click', function(e){
		e.stopPropagation();
	});

	$(document).on('click', function(e){
		e.stopPropagation();
		var elementHide = $(elementClick).next(elementSlide);
		$(elementHide).slideUp();
		$(elementClick).removeClass('active');
	});
}


function dropDown1()
{
	elementClick = '.ybc-layout-layout6 #main_right .current';
	elementSlide =  'ul.toogle_content';
	activeClass = 'active';

	$(elementClick).on('click', function(e){
		e.stopPropagation();
		var subUl = $(this).next(elementSlide);
		if(subUl.is(':hidden'))
		{
			subUl.slideDown();
			$(this).addClass(activeClass);
		}
		else
		{
			subUl.slideUp();
			$(this).removeClass(activeClass);
		}
		$(elementClick).not(this).next(elementSlide).slideUp();
		$(elementClick).not(this).removeClass(activeClass);
		e.preventDefault();
	});

	$(elementSlide).on('click', function(e){
		e.stopPropagation();
	});

	$(document).on('click', function(e){
		e.stopPropagation();
		var elementHide = $(elementClick).next(elementSlide);
		$(elementHide).slideUp();
		$(elementClick).removeClass('active');
	});
}

function accordionFooter(status)
{
	if(status == 'enable')
	{
		$('#footer .footer-block h4').on('click', function(e){
			$(this).toggleClass('active').parent().find('.toggle-footer').stop().slideToggle('medium');
			e.preventDefault();
		})
		$('#footer').addClass('accordion').find('.toggle-footer').slideUp('fast');
	}
	else
	{
		$('.footer-block h4').removeClass('active').off().parent().find('.toggle-footer').removeAttr('style').slideDown('fast');
		$('#footer').removeClass('accordion');
	}
}

function accordion(status)
{
	if(status == 'enable')
	{
		var accordion_selector = '#right_column .block .title_block, #left_column .block .title_block, #left_column #newsletter_block_left h4,' +
								'#left_column .shopping_cart > a:first-child, #right_column .shopping_cart > a:first-child';

		$(accordion_selector).on('click', function(e){
			$(this).toggleClass('active').parent().find('.block_content').stop().slideToggle('medium');
		});
		$('#right_column, #left_column').addClass('accordion').find('.block .block_content').slideUp('fast');
		if (typeof(ajaxCart) !== 'undefined')
			ajaxCart.collapse();
	}
	else
	{
		$('#right_column .block .title_block, #left_column .block .title_block, #left_column #newsletter_block_left h4').removeClass('active').off().parent().find('.block_content').removeAttr('style').slideDown('fast');
		$('#left_column, #right_column').removeClass('accordion');
	}
}

function bindUniform()
{
	if (!!$.prototype.uniform)
		$("select.form-control,input[type='radio'],input[type='checkbox']").not(".not_uniform").uniform();
}

$(document).ready(function(){
$(function() {
            var sticky_navigation_offset_top = 300;                
            var sticky_navigation = function(){
                var scroll_top = $(window).scrollTop(); 
                if (scroll_top > sticky_navigation_offset_top) {
                    $('.scroll_top').addClass('show_scroll');
                } else {
                    $('.scroll_top').removeClass('show_scroll');
                }  

            };
            
            sticky_navigation();
             
            $(window).scroll(function() {
                 sticky_navigation();
            });
    });

});

function widthblog(){
    if ($(window).width() >=992 ){
        var widthmain = $('#columns.container').width() + 30;
        var blogfirst = parseInt(widthmain/3);
        var blogsecond = parseInt(widthmain/3*2);
        $('.ybc-blog-posts-home-list-item.smallwidth').css({'width':blogfirst+'px'});
        $('.ybc-blog-posts-home-list-item.largeblog').css({'width':blogsecond+'px'});
    }
}

function autohideNavbestsell(){
    var viewport = $(window).width();
    var itemCount = $('#blockbestsellers .ajax_block_product.item').length;
    if(
        (viewport >= 992 && itemCount > 4) //desktop
        || ((viewport >= 768 && viewport < 992) && itemCount > 3) //desktopsmall
        || ((viewport >= 480 && viewport < 768) && itemCount > 2) //tablet
        || (viewport < 479 && itemCount > 2) //mobile
    ){
         $('#blockbestsellers .owl-nav').show();
    }
    else
    {
         $('#blockbestsellers .owl-nav').hide();
    }
}
function autohideNavrelated(){
    var viewport = $(window).width();
    var itemCount = $('.blockproductscategory .product-box.item').length;
    if(
        (viewport >= 992 && itemCount > 4) //desktop
        || ((viewport >= 768 && viewport < 992) && itemCount > 3) //desktopsmall
        || ((viewport >= 480 && viewport < 768) && itemCount > 2) //tablet
        || (viewport < 479 && itemCount > 2) //mobile
    ){
         $('.blockproductscategory .owl-nav').show();
    }
    else
    {
         $('.blockproductscategory .owl-nav').hide();
    }
}
function autohideNavnew(){
    var viewport = $(window).width();
    var itemCount = $('#blocknewproducts .ajax_block_product.item').length;
    
    if(
        (viewport >= 992 && itemCount > 4) //desktop
        || ((viewport >= 768 && viewport < 992) && itemCount > 3) //desktopsmall
        || ((viewport >= 480 && viewport < 768) && itemCount > 2) //tablet
        || (viewport < 479 && itemCount > 2) //mobile
    ){
         $('#blocknewproducts .owl-nav').show();
    }
    else
    {
         $('#blocknewproducts .owl-nav').hide();
    }
}

function autohideNavpopular(){
    var viewport = $(window).width();
    var itemCount = $('#homefeatured .ajax_block_product.item').length;
    if(
        (viewport >= 992 && itemCount > 4) //desktop
        || ((viewport >= 768 && viewport < 992) && itemCount > 3) //desktopsmall
        || ((viewport >= 480 && viewport < 768) && itemCount > 2) //tablet
        || (viewport < 479 && itemCount > 2) //mobile
    ){
         $('#homefeatured .owl-nav').show();
    }
    else
    {
         $('#homefeatured .owl-nav').hide();
    }
}

function autohideNavspecial(){
    var viewport = $(window).width();
    var itemCount = $('#blockspecials .ajax_block_product.item').length;
    if(
        (viewport >= 992 && itemCount > 4) //desktop
        || ((viewport >= 768 && viewport < 992) && itemCount > 3) //desktopsmall
        || ((viewport >= 480 && viewport < 768) && itemCount > 2) //tablet
        || (viewport < 479 && itemCount > 2) //mobile
    ){
         $('#blockspecials .owl-nav').show();
    }
    else
    {
         $('#blockspecials .owl-nav').hide();
    }
}

$(document).ready(function(){
    /*widthblog();
    $(window).resize(function(e){
        widthblog();
    });*/
    
    $(document).on('click','.header_content_left .ybc-menu-toggle',function(e){
        if ($(window).width() >= 768){
            $('.main-menu').toggleClass('active');
            $('.main-menu .ybc-menu-wrapper').slideToggle(300);
            $('.main-menu .close_menu').slideToggle(300);
            $('.menu_style_toogle').toggleClass('active');
        }
    });
    
    $(document).on('click','.close_menu',function(e){
        if ($(window).width() >= 768){
            $('.main-menu').toggleClass('active');
            $('.main-menu .ybc-menu-wrapper').slideToggle(300);
            $('.main-menu .close_menu').slideToggle(300);
            $('.menu_style_toogle').toggleClass('active');
        }
    });
    
    $(document).on('click','.show_mobile.ybc-menu-toggle',function(e){
        if ($(window).width() < 768){
            $('.main-menu').toggleClass('active');
            $('.ybc-menu-wrapper').toggleClass('active');
            $('.main-menu .ybc-menu-wrapper').slideToggle(300);
        }
    });
    
    if($('.product_list').length > 0)
        $('.product_list').each(function(){ 
            if($(this).find('li').length <= 6)
                $(this).find('.view_more_products').remove();
        });
    $(document).on('click', '.product_list .view_more_products', function(e){
       $(this).parent().find('.ajax_block_product').addClass('active');
       $(this).parent().find('.view_less_products').fadeIn(500);
       $(this).hide();
       
    });
    
    $(document).on('click', '.product_list .view_less_products', function(e){
       $(this).parent().find('.ajax_block_product').removeClass('active');
       $(this).parent().find('.view_more_products').fadeIn(500);
       $(this).hide();
       $('html, body').animate({
            scrollTop: $("#home-page-tabs").offset().top
        }, 1000);
    });
    
    
    $(document).on('click', '.ybc-menu .view_more_menu', function(e){
        e.preventDefault();
       $(this).parent().find('.ybc-menu-item-not-show').addClass('active');
       $(this).parent().find('.view_less_menu').fadeIn(500);
       $(this).hide();
    });
    $(document).on('click', '.ybc-menu .view_less_menu', function(e){
        e.preventDefault();
       $(this).parent().find('.ybc-menu-item-not-show').removeClass('active');
       $(this).parent().find('.view_more_menu').fadeIn(500);
       $(this).hide();
    });
    
    
    
    $(document).on('click', '.scroll_top > span',function(e) {
         $("html, body").animate({ scrollTop: 0 }, "slow");
         return false;
    });
    
    $(document).on('click', '.button_toggle_nav', function(e){
        $(this).next().toggleClass('active');
        
    });
    $(document).on('click','.toogle_search_top', function(e){
        $(this).toggleClass('open').next().toggleClass('open');
        $('.nav').toggleClass('no-zindex');
        $(this).parent().addClass('open');
        $('body').addClass('no-scroll');
    });
    $(document).on('click','.search_block_top_close',function(e){
       $('.toogle_search_top').removeClass('open'); 
       $('.search_block_top_fixed').removeClass('open');
       $('.nav').removeClass('no-zindex');
       $('#search_block_top').removeClass('open');
       $('body').removeClass('no-scroll');
    });
    
    
    
    autohideNavbestsell();
    autohideNavnew();
    autohideNavpopular();
    autohideNavspecial();
    autohideNavrelated();
    $(window).on('resize',function(){
        autohideNavbestsell();
        autohideNavnew();
        autohideNavpopular();
        autohideNavspecial();
        autohideNavrelated();
    });
    
    var $owl = $('.home-block-section .product_list');
        /*$('#home-page-tabs li a').on('click',function(){
            $owl.trigger('destroy.owl.product_list.tab-pane');
        });*/
        
        $owl.owlCarousel({
            items : 4,
            responsive : {
                    // breakpoint from 0 up
                    0 : {
                        items : 1
                    },
                    // breakpoint from 480 up
                    480 : {
                        items : 2
                    },
                    // breakpoint from 768 up
                    768 : {
                        items : 3
                    },
                    992 : {
                        items : 4
                    }
                },
            nav : true,  
            loop: $(".home-block-section .product_list li").length > 1,
            rewindNav : false,
            margin:30,
            dots : false,         
            navText: ['', ''],  
            callbacks: true,
        });
        
        
        $('.ybc-widget-ybc-custom-5').owlCarousel({
            responsive : {
                    // breakpoint from 0 up
                    0 : {
                        items : 1
                    },
                    // breakpoint from 480 up
                    450 : {
                        items : 2,
                        margin:15
                    },

                    // breakpoint from 768 up
                    550 : {
                        items : 2
                    },
                    768 : {
                        item : 3  
                    },
                },
            nav : false,  
            loop: $(".ybc-widget-ybc-custom-5 li").length > 2,
            rewindNav : false,
            margin:30,
            autoplay:true,
            autoplayTimeout:5000,
            autoplayHoverPause:true,
            dots : false,         
            navText: ['', ''],  
            callbacks: true,
        });

});


