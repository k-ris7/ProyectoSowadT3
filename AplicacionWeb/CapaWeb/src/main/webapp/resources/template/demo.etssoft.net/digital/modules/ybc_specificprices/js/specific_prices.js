$(document).ready(function(){
    var $owl = $('.countdown-content .discount_slider');

    
    $owl.owlCarousel({
        items : 1,
        nav : false,  
        loop: $(".countdown-content .discount_slider li").length > 1,
        rewindNav : false,
        dots : false, 
        margin: 5,        
        navText: ['', ''],  
        callbacks: true,
    });
});