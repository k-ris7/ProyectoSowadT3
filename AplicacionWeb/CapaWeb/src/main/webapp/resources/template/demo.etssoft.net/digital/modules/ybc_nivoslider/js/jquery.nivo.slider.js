/*
 * Nivo slider with nice caption effect
 * Copyright: yourbestcode.com
 * Email: support@yourbestcode.com
 */

(function($) {
    var NivoSlider = function(element, options){
        // Defaults are below
        var settings = $.extend({}, $.fn.nivoSlider.defaults, options);

        // Useful variables. Play carefully.
        var vars = {
            currentSlide: 0,
            currentImage: '',
            totalSlides: 0,
            running: false,
            paused: false,
            stop: false,
            controlNavEl: false
        };
        settings.pauseTime += 4000;
        // Get this slider
        var slider = $(element);
        slider.data('nivo:vars', vars).addClass('nivoSlider');

        // Find our slider children
        var kids = slider.children();
        kids.each(function() {
            var child = $(this);
            var link = '';
            if(!child.is('img')){
                if(child.is('a')){
                    child.addClass('nivo-imageLink');
                    link = child;
                }
                child = child.find('img:first');
            }
            // Get img width & height
            var childWidth = (childWidth === 0) ? child.attr('width') : child.width(),
                childHeight = (childHeight === 0) ? child.attr('height') : child.height();

            if(link !== ''){
                link.css('display','none');
            }
            child.css('display','none');
            vars.totalSlides++;
        });
         
        // If randomStart
        if(settings.randomStart){
            settings.startSlide = Math.floor(Math.random() * vars.totalSlides);
        }
        
        // Set startSlide
        if(settings.startSlide > 0){
            if(settings.startSlide >= vars.totalSlides) { settings.startSlide = vars.totalSlides - 1; }
            vars.currentSlide = settings.startSlide;
        }
        
        // Get initial image
        if($(kids[vars.currentSlide]).is('img')){
            vars.currentImage = $(kids[vars.currentSlide]);
        } else {
            vars.currentImage = $(kids[vars.currentSlide]).find('img:first');
        }
        
        // Show initial link
        if($(kids[vars.currentSlide]).is('a')){
            $(kids[vars.currentSlide]).css('display','block');
        }
        
        // Set first background
        var sliderImg = $('<img/>').addClass('nivo-main-image');
        sliderImg.attr('src', vars.currentImage.attr('src')).show();
        slider.append(sliderImg);

        // Detect Window Resize
        $(window).resize(function() {
            slider.children('img').width(slider.width());
            sliderImg.attr('src', vars.currentImage.attr('src'));
            sliderImg.stop().height('auto');
            $('.nivo-slice').remove();
            $('.nivo-box').remove();
            processFontSize();
        });

        /**
         * YourBestCode caption, support@yourbestcode.com 
         */
        //Create caption        
        slider.append($('<div class="ybc-caption-wrapper"></div>'));
        
        // Process caption function
        var processCaption = function(settings){
            var captionAnimation = (vars.currentImage.attr('data-caption-animate') != undefined && vars.currentImage.attr('data-caption-animate') != '') ? vars.currentImage.attr('data-caption-animate') : 'random';      
            var buttonLink = (vars.currentImage.attr('data-button_link') != undefined && vars.currentImage.attr('data-button_link') != '') ? vars.currentImage.attr('data-button_link') : '#';            
            var caption1 = vars.currentImage.attr('data-caption1') != undefined && vars.currentImage.attr('data-caption1') != '' ? '<div class="caption1 ybc-caption-type"><span class="caption-span">'+(captionAnimation == 'type4' ? splitString(vars.currentImage.attr('data-caption1'),true) : splitString(vars.currentImage.attr('data-caption1'),false))+'</span></div>' : '';
            var caption2 = vars.currentImage.attr('data-caption2') != undefined && vars.currentImage.attr('data-caption2') != '' ? '<div class="caption2 ybc-caption-type"><span class="caption-span">'+(captionAnimation == 'type4' ? splitString(vars.currentImage.attr('data-caption2'),true) : splitString(vars.currentImage.attr('data-caption2'),false))+'</span></div>' : '';
            if ($('.ybc-nivo-description-'+vars.currentImage.attr('data-id-slide')).html() != ''){
            var caption4 =  '<div class="caption4 ybc-caption-type"><span class="caption-span">'+$('.ybc-nivo-description-'+vars.currentImage.attr('data-id-slide')).html()+'</span></div>';            
            } else {
                var caption4 = '';
            }
            
            var caption3 = vars.currentImage.attr('data-caption3') != undefined && vars.currentImage.attr('data-caption3') != '' ? '<div class="caption3 ybc-caption-type"><a class="btn button_nivo" href="'+buttonLink+'">'+vars.currentImage.attr('data-caption3')+'</a></div>' : '';
            
            var captionTextDirection = (vars.currentImage.attr('data-text-direction') != undefined && vars.currentImage.attr('data-text-direction') != '') ? 'ybc-caption-text-' + vars.currentImage.attr('data-text-direction') : 'ybc-caption-text-left';
            var captionTop = (vars.currentImage.attr('data-caption-top') != undefined && vars.currentImage.attr('data-caption-top') != '') ? vars.currentImage.attr('data-caption-top') : '0';
            var captionLeft = (vars.currentImage.attr('data-caption-left') != undefined && vars.currentImage.attr('data-caption-left') != '') ? vars.currentImage.attr('data-caption-left') : '0';
            var captionRight = (vars.currentImage.attr('data-caption-right') != undefined && vars.currentImage.attr('data-caption-right') != '') ? vars.currentImage.attr('data-caption-right') : '0';
            var captionPosition = (vars.currentImage.attr('data-caption-position') != undefined && vars.currentImage.attr('data-caption-position') != '') ? 'ybc-caption-position-' + vars.currentImage.attr('data-caption-position') : 'ybc-caption-position-left';
            var captionWidth = (vars.currentImage.attr('data-caption-width') != undefined && vars.currentImage.attr('data-caption-width') != '') ?  vars.currentImage.attr('data-caption-width') : '40%';
            
            var customClass = (vars.currentImage.attr('data-custom_class') != undefined && vars.currentImage.attr('data-custom_class') != '') ? vars.currentImage.attr('data-custom_class') : '';
            if(caption1 != '' || caption2 != '' ||  caption3 != '' || caption4 != '')
            {
                var ybcCaption = '<div class="ybc-caption-frame animation-type-'+captionAnimation+' '+customClass+'" style="width:'+settings.textFrameWidth+';"><div class="ybc-caption '+captionPosition+' '+captionTextDirection+'" style="padding-top: '+captionTop+';margin-left: '+captionLeft+';margin-right: '+captionRight+'; width: '+captionWidth+';">' + caption1 + caption2 + caption4 +  caption3 + '</div></div>';
                $('.ybc-caption-wrapper').html(ybcCaption);
                $('.ybc-caption-wrapper').stop().show();                                             
            }
            else
            {
                $('.ybc-caption-wrapper').stop().fadeOut(settings.animSpeed);
            }  
            if($('.ybc-caption-type').length > 0)
            {
                $('.ybc-caption-type').each(function(){
                    $(this).attr('data-font-size',parseInt($(this).css('font-size').replace('px')));
                    $(this).attr('data-padding-top',parseInt($(this).css('padding-top').replace('px')));
                    $(this).attr('data-padding-bottom',parseInt($(this).css('padding-bottom').replace('px')));
                }); 
            }  
            if($('.ybc-caption-type').length > 0)
            {
                $('.ybc-caption-type').each(function(){
                    var isCaption2 = $(this).hasClass('caption2');
                    if($(this).find('.char_class').length > 0)
                    {
                        var ik = 0;
                        $(this).find('.char_class').each(function(){
                            ik++;
                            var charDelay = isCaption2 ? ik*0.2 : ik*0.1;
                            $(this).attr('style','-webkit-animation-delay: '+charDelay+'s;animation-delay: '+charDelay+'s;');
                        });
                    }
                }); 
            }                    
            processFontSize();
        }
        var processFontSize = function()
        {
            if($('.ybc-caption-type').length > 0)
            {    
                var scale = 1;
                if($(window).width() < 1366)
                    scale = parseInt($(window).width())/1366;               
                $('.ybc-caption-type').each(function(){
                    $(this).css('font-size',Math.round(parseInt($(this).data('font-size'))*scale)+'px');
                    $(this).css('padding-top',Math.round(parseInt($(this).data('padding-top'))*scale)+'px');
                    $(this).css('padding-bottom',Math.round(parseInt($(this).data('padding-bottom'))*scale)+'px');
                });
            }
        }
        var splitString = function(str,charSpit)
        {
            var words = str.trim().split(' ');
            var strLength = words.length;
            var newString = '';            
            if(strLength > 0)
            {
                if(strLength > 0)
                {                     
                    for(ik = 0; ik<strLength; ik++)
                    {
                        if(ik==0)
                            newString += '<span class="main_color">';
                        if(charSpit)
                        {
                            var temp = words[ik].trim().split('');
                            if(temp.length > 0)
                            {
                                newString += '<span class="char_class">' + temp.join('</span><span class="char_class">') + '</span>';
                            }
                        }
                        else
                        {
                            newString += words[ik];
                        }
                        if(ik==0)
                            newString += '</span>';
                        newString += ' ';
                    }
                }
                else
                    return str;
            }
            else
                return str;
            return newString;
        }
        var processNextPrevImage = function()
        {
            if($('.nivo-nextNav').length <= 0 || $('.nivo-prevNav').length <= 0 || !settings.buttonImage)
                return;
            //alert(vars.currentSlide);
            var nextImgUrl = $('.nivoSlider .nivo-imageLink').eq(vars.currentSlide >= vars.totalSlides - 1 ? 0 : vars.currentSlide + 1).children('img').attr('src');
            if($('.nivo-nextNav').children('.button_wrapper').length <=0 )
            {
                $('.nivo-nextNav').prepend('<span class="button_wrapper"><img alt="Next image" src="'+nextImgUrl+'"/></span>');
            }
            else
                if(nextImgUrl != $('.nivo-nextNav img').attr('src'))
                    $('.nivo-nextNav img').attr('src',nextImgUrl);
            var prevImgUrl = $('.nivoSlider .nivo-imageLink').eq(vars.currentSlide <= 0 ? vars.totalSlides - 1 : vars.currentSlide - 1).children('img').attr('src');
            if($('.nivo-prevNav').children('.button_wrapper').length <=0 )
            {
                $('.nivo-prevNav').prepend('<span class="button_wrapper"><img alt="Previous image" src="'+prevImgUrl+'"/></span>');
            }
            else
                if(prevImgUrl != $('.nivo-prevNav img').attr('src'))
                    $('.nivo-prevNav img').attr('src',prevImgUrl);
        }
        //Process initial  caption
        processCaption(settings);
        
        if(!settings.manualAdvance && kids.length > 1)
        {
            setTimeout(function(){                
                $('.ybc-caption-frame').addClass('fading-out');                                              
            }, settings.pauseTime - 4000);
        }
        
        // In the words of Super Mario "let's a go!"
        var timer = 0;
        var timerCaption = 0;
        var timerTemp = 0;
        if(!settings.manualAdvance && kids.length > 1){       
            timer = setInterval(function(){ 
                setTimeout(function(){                
                    $('.ybc-caption-frame').addClass('fading-out');                                              
                }, settings.pauseTime - 4000);  
                nivoRun(slider, kids, settings, false); }, 
            settings.pauseTime);                      
        }
        
        // Add Direction nav
        if(settings.directionNav){
            slider.parent().append('<div class="nivo-directionNav"><a class="nivo-prevNav">'+ settings.prevText +'</a><a class="nivo-nextNav">'+ settings.nextText +'</a></div>');
            
            $(slider.parent()).on('click', 'a.nivo-prevNav', function(){
                if(vars.running) { return false; }
                clearInterval(timer);
                timer = '';
                clearInterval(timerCaption);
                timerCaption = '';
                vars.currentSlide -= 2;
                nivoRun(slider, kids, settings, 'prev');
            });
            
            $(slider.parent()).on('click', 'a.nivo-nextNav', function(){
                if(vars.running) { return false; }
                clearInterval(timer);
                timer = '';
                clearInterval(timerCaption);
                timerCaption = '';
                nivoRun(slider, kids, settings, 'next');
            });
        }        
        
        processNextPrevImage();
        
        // Add Control nav
        if(settings.controlNav){
            vars.controlNavEl = $('<div class="nivo-controlNav"></div>');
            slider.after(vars.controlNavEl);
            for(var i = 0; i < kids.length; i++){
                if(settings.controlNavThumbs){
                    vars.controlNavEl.addClass('nivo-thumbs-enabled');
                    var child = kids.eq(i);
                    if(!child.is('img')){
                        child = child.find('img:first');
                    }
                    if(child.attr('data-thumb')) vars.controlNavEl.append('<a class="nivo-control" rel="'+ i +'"><img src="'+ child.attr('data-thumb') +'" alt="" /></a>');
                } else {
                    vars.controlNavEl.append('<a class="nivo-control" rel="'+ i +'">'+ (i + 1) +'</a>');
                }
            }

            //Set initial active link
            $('a:eq('+ vars.currentSlide +')', vars.controlNavEl).addClass('active');
            
            $('a', vars.controlNavEl).bind('click', function(){
                if(vars.running) return false;
                if($(this).hasClass('active')) return false;
                clearInterval(timer);
                timer = '';
                clearInterval(timerCaption);
                timerCaption = '';
                sliderImg.attr('src', vars.currentImage.attr('src'));
                vars.currentSlide = $(this).attr('rel') - 1;
                nivoRun(slider, kids, settings, 'control');
            });
        }
        
        //For pauseOnHover setting
        /*if(settings.pauseOnHover){
            slider.hover(function(){
                vars.paused = true;
                clearInterval(timer);
                timer = '';
                clearInterval(timerCaption);
                timerCaption = '';
            }, function(){
                vars.paused = false;
                // Restart the timer
                if(timer === '' && !settings.manualAdvance){
                    timer = setInterval(function(){ 
                        setTimeout(function(){                
                            $('.ybc-caption-frame').addClass('fading-out');                                              
                        }, settings.pauseTime - 4000); 
                        nivoRun(slider, kids, settings, false); }, settings.pauseTime);
                   
                }
            });
        }*/
        
        
        
        // Event when Animation finishes
        slider.bind('nivo:animFinished', function(){
            sliderImg.attr('src', vars.currentImage.attr('src'));
            vars.running = false; 
            // Hide child links
            $(kids).each(function(){
                if($(this).is('a')){
                   $(this).css('display','none');
                }
            });
            // Show current link
            if($(kids[vars.currentSlide]).is('a')){
                $(kids[vars.currentSlide]).css('display','block');
            }
            // Restart the timer
            if(timer === '' && !vars.paused && !settings.manualAdvance){
                timer = setInterval(function(){ 
                    setTimeout(function(){                
                        $('.ybc-caption-frame').addClass('fading-out');                                              
                    }, settings.pauseTime - 4000); 
                    nivoRun(slider, kids, settings, false); }, settings.pauseTime);                
            }
            // Trigger the afterChange callback 
            settings.afterChange.call(this);
            //ETS
            processCaption(settings);
            processNextPrevImage();
        }); 
        
        // Add slices for slice animations
        var createSlices = function(slider, settings, vars) {
        	if($(vars.currentImage).parent().is('a')) $(vars.currentImage).parent().css('display','block');
            $('img[src="'+ vars.currentImage.attr('src') +'"]', slider).not('.nivo-main-image,.nivo-control img').width(slider.width()).css('visibility', 'hidden').show();
            var sliceHeight = ($('img[src="'+ vars.currentImage.attr('src') +'"]', slider).not('.nivo-main-image,.nivo-control img').parent().is('a')) ? $('img[src="'+ vars.currentImage.attr('src') +'"]', slider).not('.nivo-main-image,.nivo-control img').parent().height() : $('img[src="'+ vars.currentImage.attr('src') +'"]', slider).not('.nivo-main-image,.nivo-control img').height();

            for(var i = 0; i < settings.slices; i++){
                var sliceWidth = Math.round(slider.width()/settings.slices);
                
                if(i === settings.slices-1){
                    slider.append(
                        $('<div class="nivo-slice" name="'+i+'"><img src="'+ vars.currentImage.attr('src') +'" style="position:absolute; width:'+ slider.width() +'px; height:auto; display:block !important; top:0; left:-'+ ((sliceWidth + (i * sliceWidth)) - sliceWidth) +'px;" /></div>').css({ 
                            left:(sliceWidth*i)+'px', 
                            width:(slider.width()-(sliceWidth*i))+'px',
                            height:sliceHeight+'px', 
                            opacity:'0',
                            overflow:'hidden'
                        })
                    );
                } else {
                    slider.append(
                        $('<div class="nivo-slice" name="'+i+'"><img src="'+ vars.currentImage.attr('src') +'" style="position:absolute; width:'+ slider.width() +'px; height:auto; display:block !important; top:0; left:-'+ ((sliceWidth + (i * sliceWidth)) - sliceWidth) +'px;" /></div>').css({ 
                            left:(sliceWidth*i)+'px', 
                            width:sliceWidth+'px',
                            height:sliceHeight+'px',
                            opacity:'0',
                            overflow:'hidden'
                        })
                    );
                }
            }
            
            $('.nivo-slice', slider).height(sliceHeight);
            sliderImg.stop().animate({
                height: $(vars.currentImage).height()
            }, settings.animSpeed);
        };
        
        // Add boxes for box animations
        var createBoxes = function(slider, settings, vars){
        	if($(vars.currentImage).parent().is('a')) $(vars.currentImage).parent().css('display','block');
            $('img[src="'+ vars.currentImage.attr('src') +'"]', slider).not('.nivo-main-image,.nivo-control img').width(slider.width()).css('visibility', 'hidden').show();
            var boxWidth = Math.round(slider.width()/settings.boxCols),
                boxHeight = Math.round($('img[src="'+ vars.currentImage.attr('src') +'"]', slider).not('.nivo-main-image,.nivo-control img').height() / settings.boxRows);
            
                        
            for(var rows = 0; rows < settings.boxRows; rows++){
                for(var cols = 0; cols < settings.boxCols; cols++){
                    if(cols === settings.boxCols-1){
                        slider.append(
                            $('<div class="nivo-box" name="'+ cols +'" rel="'+ rows +'"><img src="'+ vars.currentImage.attr('src') +'" style="position:absolute; width:'+ slider.width() +'px; height:auto; display:block; top:-'+ (boxHeight*rows) +'px; left:-'+ (boxWidth*cols) +'px;" /></div>').css({ 
                                opacity:0,
                                left:(boxWidth*cols)+'px', 
                                top:(boxHeight*rows)+'px',
                                width:(slider.width()-(boxWidth*cols))+'px'
                                
                            })
                        );
                        $('.nivo-box[name="'+ cols +'"]', slider).height($('.nivo-box[name="'+ cols +'"] img', slider).height()+'px');
                    } else {
                        slider.append(
                            $('<div class="nivo-box" name="'+ cols +'" rel="'+ rows +'"><img src="'+ vars.currentImage.attr('src') +'" style="position:absolute; width:'+ slider.width() +'px; height:auto; display:block; top:-'+ (boxHeight*rows) +'px; left:-'+ (boxWidth*cols) +'px;" /></div>').css({ 
                                opacity:0,
                                left:(boxWidth*cols)+'px', 
                                top:(boxHeight*rows)+'px',
                                width:boxWidth+'px'
                            })
                        );
                        $('.nivo-box[name="'+ cols +'"]', slider).height($('.nivo-box[name="'+ cols +'"] img', slider).height()+'px');
                    }
                }
            }
            
            sliderImg.stop().animate({
                height: $(vars.currentImage).height()
            }, settings.animSpeed);
        };

        // Private run method
        var nivoRun = function(slider, kids, settings, nudge){  
            $('.ybc-caption-wrapper').html('');            
            //$('.caption-span').html('Before changing');
            //alert('abc');
            // Get our vars
            var vars = slider.data('nivo:vars');
            
            // Trigger the lastSlide callback
            if(vars && (vars.currentSlide === vars.totalSlides - 1)){ 
                settings.lastSlide.call(this);
            }
            
            // Stop
            if((!vars || vars.stop) && !nudge) { return false; }
            
            // Trigger the beforeChange callback
            settings.beforeChange.call(this);
            
            // Set current background before change
            if(!nudge){
                sliderImg.attr('src', vars.currentImage.attr('src'));
            } else {
                if(nudge === 'prev'){
                    sliderImg.attr('src', vars.currentImage.attr('src'));
                }
                if(nudge === 'next'){
                    sliderImg.attr('src', vars.currentImage.attr('src'));
                }
            }
            
            vars.currentSlide++;
            // Trigger the slideshowEnd callback
            if(vars.currentSlide === vars.totalSlides){ 
                vars.currentSlide = 0;
                settings.slideshowEnd.call(this);
            }
            if(vars.currentSlide < 0) { vars.currentSlide = (vars.totalSlides - 1); }
            // Set vars.currentImage
            if($(kids[vars.currentSlide]).is('img')){
                vars.currentImage = $(kids[vars.currentSlide]);
            } else {
                vars.currentImage = $(kids[vars.currentSlide]).find('img:first');
            }
            
            // Set active links
            if(settings.controlNav){
                $('a', vars.controlNavEl).removeClass('active');
                $('a:eq('+ vars.currentSlide +')', vars.controlNavEl).addClass('active');
            }
            
            // Process caption
            //processCaption(settings);            
            
            // Remove any slices from last transition
            $('.nivo-slice', slider).remove();
            
            // Remove any boxes from last transition
            $('.nivo-box', slider).remove();
            
            var currentEffect = settings.effect,
                anims = '';
                
            // Generate random effect
            if(settings.effect === 'random'){
                anims = new Array('sliceDownRight','sliceDownLeft','sliceUpRight','sliceUpLeft','sliceUpDown','sliceUpDownLeft','fold','fade',
                'boxRandom','boxRain','boxRainReverse','boxRainGrow','boxRainGrowReverse');
                currentEffect = anims[Math.floor(Math.random()*(anims.length + 1))];
                if(currentEffect === undefined) { currentEffect = 'fade'; }
            }
            
            // Run random effect from specified set (eg: effect:'fold,fade')
            if(settings.effect.indexOf(',') !== -1){
                anims = settings.effect.split(',');
                currentEffect = anims[Math.floor(Math.random()*(anims.length))];
                if(currentEffect === undefined) { currentEffect = 'fade'; }
            }
            
            // Custom transition as defined by "data-transition" attribute
            if(vars.currentImage.attr('data-transition')){
                currentEffect = vars.currentImage.attr('data-transition');
            }
        
            // Run effects
            vars.running = true;
            var timeBuff = 0,
                i = 0,
                slices = '',
                firstSlice = '',
                totalBoxes = '',
                boxes = '';
            
            if(currentEffect === 'sliceDown' || currentEffect === 'sliceDownRight' || currentEffect === 'sliceDownLeft'){
                createSlices(slider, settings, vars);
                timeBuff = 0;
                i = 0;
                slices = $('.nivo-slice', slider);
                if(currentEffect === 'sliceDownLeft') { slices = $('.nivo-slice', slider)._reverse(); }
                
                slices.each(function(){
                    var slice = $(this);
                    slice.css({ 'top': '0px' });
                    if(i === settings.slices-1){
                        setTimeout(function(){
                            slice.animate({opacity:'1.0' }, settings.animSpeed, '', function(){ slider.trigger('nivo:animFinished'); });
                        }, (100 + timeBuff));
                    } else {
                        setTimeout(function(){
                            slice.animate({opacity:'1.0' }, settings.animSpeed);
                        }, (100 + timeBuff));
                    }
                    timeBuff += 50;
                    i++;
                });
            } else if(currentEffect === 'sliceUp' || currentEffect === 'sliceUpRight' || currentEffect === 'sliceUpLeft'){
                createSlices(slider, settings, vars);
                timeBuff = 0;
                i = 0;
                slices = $('.nivo-slice', slider);
                if(currentEffect === 'sliceUpLeft') { slices = $('.nivo-slice', slider)._reverse(); }
                
                slices.each(function(){
                    var slice = $(this);
                    slice.css({ 'bottom': '0px' });
                    if(i === settings.slices-1){
                        setTimeout(function(){
                            slice.animate({opacity:'1.0' }, settings.animSpeed, '', function(){ slider.trigger('nivo:animFinished'); });
                        }, (100 + timeBuff));
                    } else {
                        setTimeout(function(){
                            slice.animate({opacity:'1.0' }, settings.animSpeed);
                        }, (100 + timeBuff));
                    }
                    timeBuff += 50;
                    i++;
                });
            } else if(currentEffect === 'sliceUpDown' || currentEffect === 'sliceUpDownRight' || currentEffect === 'sliceUpDownLeft'){
                createSlices(slider, settings, vars);
                timeBuff = 0;
                i = 0;
                var v = 0;
                slices = $('.nivo-slice', slider);
                if(currentEffect === 'sliceUpDownLeft') { slices = $('.nivo-slice', slider)._reverse(); }
                
                slices.each(function(){
                    var slice = $(this);
                    if(i === 0){
                        slice.css('top','0px');
                        i++;
                    } else {
                        slice.css('bottom','0px');
                        i = 0;
                    }
                    
                    if(v === settings.slices-1){
                        setTimeout(function(){
                            slice.animate({opacity:'1.0' }, settings.animSpeed, '', function(){ slider.trigger('nivo:animFinished'); });
                        }, (100 + timeBuff));
                    } else {
                        setTimeout(function(){
                            slice.animate({opacity:'1.0' }, settings.animSpeed);
                        }, (100 + timeBuff));
                    }
                    timeBuff += 50;
                    v++;
                });
            } else if(currentEffect === 'fold'){
                createSlices(slider, settings, vars);
                timeBuff = 0;
                i = 0;
                
                $('.nivo-slice', slider).each(function(){
                    var slice = $(this);
                    var origWidth = slice.width();
                    slice.css({ top:'0px', width:'0px' });
                    if(i === settings.slices-1){
                        setTimeout(function(){
                            slice.animate({ width:origWidth, opacity:'1.0' }, settings.animSpeed, '', function(){ slider.trigger('nivo:animFinished'); });
                        }, (100 + timeBuff));
                    } else {
                        setTimeout(function(){
                            slice.animate({ width:origWidth, opacity:'1.0' }, settings.animSpeed);
                        }, (100 + timeBuff));
                    }
                    timeBuff += 50;
                    i++;
                });
            } else if(currentEffect === 'fade'){
                createSlices(slider, settings, vars);
                
                firstSlice = $('.nivo-slice:first', slider);
                firstSlice.css({
                    'width': slider.width() + 'px'
                });
    
                firstSlice.animate({ opacity:'1.0' }, (settings.animSpeed*2), '', function(){ slider.trigger('nivo:animFinished'); });
            } else if(currentEffect === 'slideInRight'){
                createSlices(slider, settings, vars);
                
                firstSlice = $('.nivo-slice:first', slider);
                firstSlice.css({
                    'width': '0px',
                    'opacity': '1'
                });

                firstSlice.animate({ width: slider.width() + 'px' }, (settings.animSpeed*2), '', function(){ slider.trigger('nivo:animFinished'); });
            } else if(currentEffect === 'slideInLeft'){
                createSlices(slider, settings, vars);
                
                firstSlice = $('.nivo-slice:first', slider);
                firstSlice.css({
                    'width': '0px',
                    'opacity': '1',
                    'left': '',
                    'right': '0px'
                });

                firstSlice.animate({ width: slider.width() + 'px' }, (settings.animSpeed*2), '', function(){ 
                    // Reset positioning
                    firstSlice.css({
                        'left': '0px',
                        'right': ''
                    });
                    slider.trigger('nivo:animFinished'); 
                });
            } else if(currentEffect === 'boxRandom'){
                createBoxes(slider, settings, vars);
                
                totalBoxes = settings.boxCols * settings.boxRows;
                i = 0;
                timeBuff = 0;

                boxes = shuffle($('.nivo-box', slider));
                boxes.each(function(){
                    var box = $(this);
                    if(i === totalBoxes-1){
                        setTimeout(function(){
                            box.animate({ opacity:'1' }, settings.animSpeed, '', function(){ slider.trigger('nivo:animFinished'); });
                        }, (100 + timeBuff));
                    } else {
                        setTimeout(function(){
                            box.animate({ opacity:'1' }, settings.animSpeed);
                        }, (100 + timeBuff));
                    }
                    timeBuff += 20;
                    i++;
                });
            } else if(currentEffect === 'boxRain' || currentEffect === 'boxRainReverse' || currentEffect === 'boxRainGrow' || currentEffect === 'boxRainGrowReverse'){
                createBoxes(slider, settings, vars);
                
                totalBoxes = settings.boxCols * settings.boxRows;
                i = 0;
                timeBuff = 0;
                
                // Split boxes into 2D array
                var rowIndex = 0;
                var colIndex = 0;
                var box2Darr = [];
                box2Darr[rowIndex] = [];
                boxes = $('.nivo-box', slider);
                if(currentEffect === 'boxRainReverse' || currentEffect === 'boxRainGrowReverse'){
                    boxes = $('.nivo-box', slider)._reverse();
                }
                boxes.each(function(){
                    box2Darr[rowIndex][colIndex] = $(this);
                    colIndex++;
                    if(colIndex === settings.boxCols){
                        rowIndex++;
                        colIndex = 0;
                        box2Darr[rowIndex] = [];
                    }
                });
                
                // Run animation
                for(var cols = 0; cols < (settings.boxCols * 2); cols++){
                    var prevCol = cols;
                    for(var rows = 0; rows < settings.boxRows; rows++){
                        if(prevCol >= 0 && prevCol < settings.boxCols){
                            /* Due to some weird JS bug with loop vars 
                            being used in setTimeout, this is wrapped
                            with an anonymous function call */
                            (function(row, col, time, i, totalBoxes) {
                                var box = $(box2Darr[row][col]);
                                var w = box.width();
                                var h = box.height();
                                if(currentEffect === 'boxRainGrow' || currentEffect === 'boxRainGrowReverse'){
                                    box.width(0).height(0);
                                }
                                if(i === totalBoxes-1){
                                    setTimeout(function(){
                                        box.animate({ opacity:'1', width:w, height:h }, settings.animSpeed/1.3, '', function(){ slider.trigger('nivo:animFinished'); });
                                    }, (100 + time));
                                } else {
                                    setTimeout(function(){
                                        box.animate({ opacity:'1', width:w, height:h }, settings.animSpeed/1.3);
                                    }, (100 + time));
                                }
                            })(rows, prevCol, timeBuff, i, totalBoxes);
                            i++;
                        }
                        prevCol--;
                    }
                    timeBuff += 100;
                }
            }           
        };
        
        // Shuffle an array
        var shuffle = function(arr){
            for(var j, x, i = arr.length; i; j = parseInt(Math.random() * i, 10), x = arr[--i], arr[i] = arr[j], arr[j] = x);
            return arr;
        };
        
        // For debugging
        var trace = function(msg){
            if(this.console && typeof console.log !== 'undefined') { console.log(msg); }
        };
        
        // Start / Stop
        this.stop = function(){
            if(!$(element).data('nivo:vars').stop){
                $(element).data('nivo:vars').stop = true;
                trace('Stop Slider');
            }
        };
        
        this.start = function(){
            if($(element).data('nivo:vars').stop){
                $(element).data('nivo:vars').stop = false;
                trace('Start Slider');
            }
        };
        
        // Trigger the afterLoad callback
        settings.afterLoad.call(this);
        
        return this;
    };
        
    $.fn.nivoSlider = function(options) {
        return this.each(function(key, value){
            var element = $(this);
            // Return early if this element already has a plugin instance
            if (element.data('nivoslider')) { return element.data('nivoslider'); }
            // Pass options to plugin constructor
            var nivoslider = new NivoSlider(this, options);
            // Store plugin object in this element's data
            element.data('nivoslider', nivoslider);
        });
    };
    
    //Default settings
    $.fn.nivoSlider.defaults = {
        effect: 'random',
        textFrameWidth: '100%',
        captionDelay : 200,        
        slices: 15,
        boxCols: 8,
        boxRows: 4,
        animSpeed: 500,
        pauseTime: 3000,
        startSlide: 0,
        directionNav: true,
        controlNav: true,
        controlNavThumbs: false,
        pauseOnHover: true,
        manualAdvance: false,
        prevText: 'Prev',
        nextText: 'Next',
        buttonImage: false,
        randomStart: false,
        beforeChange: function(){              
                    
        },
        afterChange: function(){},
        slideshowEnd: function(){},
        lastSlide: function(){},
        afterLoad: function(){}
    };

    $.fn._reverse = [].reverse;
    
})(jQuery);