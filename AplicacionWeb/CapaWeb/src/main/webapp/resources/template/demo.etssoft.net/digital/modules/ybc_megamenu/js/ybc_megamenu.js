$(document).ready(function(){
    $('.ybc-mm-control').click(function(){
        var wrapper = $(this).next('.ybc-mm-control-content');
        if($(this).hasClass('closed'))
        {
            var btnObj = $(this); 
            btnObj.removeClass('closed');
            btnObj.addClass('opened');
            //btnObj.text('-');
            wrapper.stop(true,true).addClass('active');
        }
        else
        {
            var btnObj = $(this); 
            btnObj.removeClass('opened');
            btnObj.addClass('closed');
            //btnObj.text('+');           
            wrapper.stop(true,true).removeClass('active');
        }        
    });
    
/**/
$('.ybc-menu-blinder').on('click',function(){
    if($(this).hasClass('active'))
            {
                $('.ybc-menu-btn').removeClass('active');
                $('#ybc-menu-main-content').removeClass('active');
                $(this).removeClass('active');
                $('.nav').removeClass('no-index');
                if($('.ybc-mm-mobile-type-default').length <=0)
                    $('body').removeClass('ybc_menu_opened');
            }
});


/*---------effect ybc-mm-mobile-type-default-----------------*/
    $('.ybc-menu-btn').click(function(){
        if($('.ybc-menu-btn').length > 0 && $(window).width() <= 767)
        {
            if($(this).hasClass('active'))
            {
                $('.ybc-menu-btn').removeClass('active');
                $('#ybc-menu-main-content').removeClass('active');
                $('.ybc-menu-blinder').removeClass('active');
                $('.nav').removeClass('no-index');
                if($('.ybc-mm-mobile-type-default').length <=0)
                    $('body').removeClass('ybc_menu_opened');
            }                
            else   
            {
                $('.ybc-menu-btn').addClass('active');
                $('#ybc-menu-main-content').addClass('active');
                $('.ybc-menu-blinder').addClass('active');
                $('.ybc-menu-wrapper').removeClass('animated animation');
                $('.nav').addClass('no-index');
                if($('.ybc-mm-mobile-type-default').length <=0)
                    $('body').addClass('ybc_menu_opened');
                
            }                 
        }
        
        if ($('.ybc-menu-btn').length > 0 && $(window).width() > 767 && $(window).width() < 992){
            if ($('.ybc_custom_float_header').hasClass('scroll_heading')){
               if($(this).hasClass('active'))
                {
                    $('.ybc-menu-btn').removeClass('active');
                    $('#ybc-menu-main-content').removeClass('active');
                    $('.ybc-menu-blinder').removeClass('active');
                    if($('.ybc-mm-mobile-type-default').length <=0)
                        $('body').removeClass('ybc_menu_opened');
                }                
                else   
                {
                    $('.ybc-menu-btn').addClass('active');
                    $('#ybc-menu-main-content').addClass('active');
                    $('.ybc-menu-blinder').addClass('active');
                    if($('.ybc-mm-mobile-type-default').length <=0)
                        $('body').addClass('ybc_menu_opened');
                }     
            }
        }
    });

/*---------end of effect ybc-mm-mobile-type-default-----------------*/     
  
    //Add active class to current menu
    ybcMMCurentUrl = window.location;
    $('.ybc-menu-item-link').each(function(){
        if($(this).attr('href') == ybcMMCurentUrl)
            $(this).addClass('active');
    });
    
    //fixed menu
    $(function() {
        if ($('.ybc-menu-wrapper.position-fixed').length > 0)
        {
            var sticky_navigation_offset_top = $('.ybc-menu-wrapper.position-fixed').offset().top;
            
            var sticky_navigation = function(){
                var scroll_top = $(window).scrollTop(); 
                 
                if (scroll_top > sticky_navigation_offset_top) {
                    if ($(window).width() >= 768){
                        $('.position-fixed').css({ 'position': 'fixed', 'top':0, 'left':0 });
                        $('#header').addClass('header_fixed');
                        $('.position-fixed').addClass('position-fixed-scroll');
                    }
                } else {
                    $('.position-fixed').css({ 'position': 'relative' });
                    $('#header').removeClass('header_fixed');
                    $('.position-fixed').removeClass('position-fixed-scroll');
                }  
            };
             
            sticky_navigation();
             
            $(window).scroll(function() {
                 sticky_navigation();
            });
        }
    });
    
    //drop down menu when hover
    $('.ybc-menu-drop_down li').hover(function(){
        if($(window).width() >= 768){
            $(this).find('.ybc-menu-columns-wrapper').stop(true,true).slideDown(800);
        }
    }, function(){
        if($(window).width() >= 768){
            $(this).find('.ybc-menu-columns-wrapper').stop(true,true).slideUp(400);
        }
    });
    

        var wh = $(window).height() - 60;
        $('.ybc_custom_float_header .ybc-menu-main-content').css({'max-height':wh+'px'});
    $(window).resize(function(){
        var wh = $(window).height() - 60;
        $('.ybc_custom_float_header .ybc-menu-main-content').css({'max-height':wh+'px'});
    });
    
    
});