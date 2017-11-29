$(document).ready(function(){   
     
     
     if ($('#ybc-mnf-block-ul').length > 0)
    	$("#ybc-mnf-block-ul").owlCarousel({            
            items : 5,
            responsive : {
                // breakpoint from 0 up
                0 : {
                    items : 2
                },
                // breakpoint from 480 up
                480 : {
                    items : 3
                },
                // breakpoint from 768 up
                768 : {
                    items : 4
                },
                992 : {
                    items : 5
                }
            },
            nav : true,  
            navRewind : false,
            dots : false,          
            margin: 30,
            loop: true,
            autoplay: true,
            autoplayTimeout: 7000,
            navText: ['', ''],  
        }); 
});