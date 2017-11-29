
/*floating header*/

$(function() {
         if ($('.header_bottom.ybc_float_header').length > 0)
         {
            if ( $('#header.layout_2').length > 0 || ('#header.layout_3').length > 0 ){
                if ( $('.ybc-menu-wrapper').length > 0){
                    var sticky_navigation_offset_top = $('.ybc-menu-wrapper').offset().top;
                }
            }else{
                var sticky_navigation_offset_top = $('.main-menu').offset().top;
            }
            var headerFloatingHeight = $('.main-menu').height();
            var sticky_navigation = function(){
                var scroll_top = $(window).scrollTop(); 
                if (scroll_top > sticky_navigation_offset_top) {
                    if ($(window).width() >= 992){
                        $('.main-menu').addClass('scroll_heading').css({ 'position': 'fixed','z-index':'10'});
                        $('#header').css({'margin-bottom':''+headerFloatingHeight+'px'});
                        $('.main-menu').addClass('has_fixed');
                        $('.header_style_1 .ybc-menu-main-content').slideUp(0);
                    }
                } else {
                    $('.main-menu').removeClass('scroll_heading').css({ 'position': 'relative','z-index':'0' });
                    $('#header').css({'margin-bottom':'0px'});
                    $('.main-menu').removeClass('has_fixed');
                    if ($(window).width() > 1199){
                        $('#index .header_style_1 .ybc-menu-main-content').slideDown(0);
                    } else {
                        $('#index .header_style_1 .ybc-menu-main-content').slideUp(0);
                    }
                } 
            };
            
            sticky_navigation();
             
            $(window).scroll(function() {
                 sticky_navigation();
            });
         }
    });

$(window).resize(function(){
    if ($(window).width() < 768){
        $('.ybc_custom_float_header').addClass('no_scroll_heading');
        $('#header').addClass('no_scroll_header');
    } else {
        $('.ybc_custom_float_header').removeClass('no_scroll_heading');
        $('#header').removeClass('no_scroll_header');
    }
});


$(document).ready(function(){
   $(document).on('click','.header_bottom.scroll_heading .ybc-menu-toggle',function(){
        if ( $(window).width() > 767 && $(window).width() < 992){
            $(this).parent().find('#ybc-menu-main-content').toggleClass('floating_active');
        }
        return false;
   }); 
   if ($(window).width() < 768){
        $('.ybc_custom_float_header').addClass('no_scroll_heading');
        $('#header').addClass('no_scroll_header');
    } else {
        $('.ybc_custom_float_header').removeClass('no_scroll_heading');
        $('#header').removeClass('no_scroll_header');
    }
});

$(document).ready(function() {    
    if(YBC_TC_FLOAT_CSS3)
    {  
       var wow = new WOW(
          {
            boxClass:     'wow',      // animated element css class (default is wow)
            animateClass: 'animated', // animation css class (default is animated)
            offset:       0,          // distance to the element when triggering the animation (default is 0)
            mobile:       false        // trigger animations on mobile devices (true is default)
          }
        );
        wow.init();
        
        $(document).on('click','#home-page-tabs a', function(){
            var datahref = $(this).attr('href');
            $('.tab-content .tab-pane:not(.active) .wow').removeClass('animated').css({'visibility':'hidden','animation-name':'none'});
            $(datahref+' .wow').delay(200).addClass('animated').css({'visibility':'visible','animation-name':'zoomIn'});                 
            
        });
        
    } else
    {
        $('.animated').removeClass('animated');
        $('.animation').removeClass('animation');        
    }    
});

