/***************************************************************************************************************
||||||||||||||||||||||||||||        CUSTOM SCRIPT FOR ASSURANCE            |||||||||||||||||||||||||||||||||||||
****************************************************************************************************************
||||||||||||||||||||||||||||              TABLE OF CONTENT                  ||||||||||||||||||||||||||||||||||||
****************************************************************************************************************
****************************************************************************************************************
01. Revolution slider
02. Sticky header
03. scoll to Top
04. Project Masonary
06. Testimonial Slider
07. magnificPopup
08. Fact counter 
09. Prealoder
10. ContactFormValidation
11. services-select


****************************************************************************************************************
||||||||||||||||||||||||||||            End TABLE OF CONTENT                ||||||||||||||||||||||||||||||||||||
****************************************************************************************************************/


"use strict";


//===RevolutionSliderActiver===
function revolutionSliderActiver () {
    if ($('.rev_slider_wrapper #slider1').length) {
        $("#slider1").revolution({
            sliderType:"standard",
            sliderLayout:"auto",
            delay:500,
            stopAtSlide: -1,
            stopAfterLoops: -1,
            stopLoop: 'off',
            navigationType:"bullet",
            navigationArrows:"0",
            navigationStyle:"preview3",
            dottedOverlay:'yes',
            spinner:'spinner3',
            hideTimerBar:"off",
            onHoverStop:"off",
            navigation: {
                arrows: {
                    enable: true, style: 'zeus',
                    tmp: '<div class="tp-title-wrap"><div class="tp-arr-imgholder"></div></div>'}
            }, 
            responsiveLevels:[1920,1280,975,600,300],
            gridwidth: [1170, 720, 500, 500, 300],
            gridheight: [650, 600, 550, 450, 400]
        });
    };
}


//====Main menu===
function mainmenu() {
    //Submenu Dropdown Toggle
    if($('.main-menu li.dropdown ul').length){
        $('.main-menu li.dropdown').append('<div class="dropdown-btn"></div>');
        
        //Dropdown Button
        $('.main-menu li.dropdown .dropdown-btn').click(function() {
            $(this).prev('ul').slideToggle(500);
        });
        //$('.main-menu li.dropdown').mouseenter(function () { $(this).addClass('open') });
    }

}


//===Header Sticky===
function stickyHeader() {
    if ($('.stricky').length) {
        var strickyScrollPos = 100;
        if ($(window).scrollTop() > strickyScrollPos) {
            $('.stricky').addClass('stricky-fixed');
            $('.scroll-to-top').fadeIn(1500);
        } else if ($(this).scrollTop() <= strickyScrollPos) {
            $('.stricky').removeClass('stricky-fixed');
            $('.scroll-to-top').fadeOut(1500);
        }
    };
}


//===scoll to Top===
function scrollToTop() {
    if ($('.scroll-to-target').length) {
        $(".scroll-to-target").click(function() {
            var target = $(this).attr('data-target');
            // animate
            $('html, body').animate({
                scrollTop: $(target).offset().top
            }, 1000);

        });
    }
}



// ===Project===
function projectMasonaryLayout() {
    if ($('.masonary-layout').length) {
        $('.masonary-layout').isotope({
            layoutMode: 'masonry'
        });
    }

    if ($('.post-filter').length) {
        $('.post-filter li').children('span').click(function() {
            var Self = $(this);
            var selector = Self.parent().attr('data-filter');
            $('.post-filter li').children('span').parent().removeClass('active');
            Self.parent().addClass('active');


            $('.filter-layout').isotope({
                filter: selector,
                animationOptions: {
                    duration: 500,
                    easing: 'linear',
                    queue: false
                }
            });
            return false;
        });
    }

    if ($('.post-filter.has-dynamic-filter-counter').length) {
        // var allItem = $('.single-filter-item').length;

        var activeFilterItem = $('.post-filter.has-dynamic-filter-counter').find('li');

        activeFilterItem.each(function() {
            var filterElement = $(this).data('filter');
            console.log(filterElement);
            var count = $('.gallery-content').find(filterElement).length;

            $(this).children('span').append('<span class="count"><b>' + count + '</b></span>');
        });
    };
}


//===Testimonial Slider===
function testimonialSlider() {
    if ($('.testimonial-carousel').length) {
        $('.testimonial-carousel').owlCarousel({
            loop:true,
            margin:30,
            nav:false,
            dots: false,
            autoplayHoverPause:true,
            autoplay: 6000,
            smartSpeed: 700,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:1
                },
                800:{
                    items:2
                },
                1024:{
                    items:3
                },
                1100:{
                    items:3
                },
                1200:{
                    items:3
                }
            }
        })
    }
}

/*--------------------magnificPopup------------------*/
        if($(".video").is("#video")){

          var videoPlay = $('.video-play');
          videoPlay.magnificPopup({
              type: 'iframe',
              closeBtnInside: false,
              closeOnContentClick: true,
              tLoading: '', // remove text from preloader


          });
        }


//=== Fact counter ===
function CounterNumberChanger () {
    var timer = $('.timer');
    if(timer.length) {
        timer.appear(function () {
            timer.countTo();
        })
    }
}


//=== Select menu === 
function selectDropdown () {
    if($(".selectmenu").length) {
        $( ".selectmenu" ).selectmenu();
    };
}


//=== Prealoder===
function prealoader() {
    if($('.preloader').length){
        $('.preloader').delay(2000).fadeOut(500);
    }
}
 

//=== Thm scroll anim===
function thmScrollAnim() {
    if ($('.wow').length) {
        var wow = new WOW({
            mobile: false
        });
        wow.init();
    };
}


//=== Contact Form Validation ===
if($("#contact-form").length){
    $("#contact-form").validate({
        submitHandler: function(form) {
            var form_btn = $(form).find('button[type="submit"]');
            var form_result_div = '#form-result';
            $(form_result_div).remove();
            form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
            var form_btn_old_msg = form_btn.html();
            form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
            $(form).ajaxSubmit({
                dataType:  'json',
                success: function(data) {
                    if( data.status == 'true' ) {
                        $(form).find('.form-control').val('');
                    }
                    form_btn.prop('disabled', false).html(form_btn_old_msg);
                    $(form_result_div).html(data.message).fadeIn('slow');
                    setTimeout(function(){ 
                        $(form_result_div).fadeOut('slow') 
                    }, 6000);
                }
            });
        }
    });
}


//=== Add comment Form Validation ===
if($("#add-comment-form").length){
    $("#add-comment-form").validate({
        submitHandler: function(form) {
            var form_btn = $(form).find('button[type="submit"]');
            var form_result_div = '#form-result';
            $(form_result_div).remove();
            form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
            var form_btn_old_msg = form_btn.html();
            form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
            $(form).ajaxSubmit({
                dataType:  'json',
                success: function(data) {
                    if( data.status == 'true' ) {
                        $(form).find('.form-control').val('');
                    }
                    form_btn.prop('disabled', false).html(form_btn_old_msg);
                    $(form_result_div).html(data.message).fadeIn('slow');
                    setTimeout(function(){ 
                        $(form_result_div).fadeOut('slow') 
                    }, 6000);
                }
            });
        }
    });
}


//=== Review Form Validation ===
if($("#review-form").length){
    $("#review-form").validate({
        submitHandler: function(form) {
            var form_btn = $(form).find('button[type="submit"]');
            var form_result_div = '#form-result';
            $(form_result_div).remove();
            form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
            var form_btn_old_msg = form_btn.html();
            form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
            $(form).ajaxSubmit({
                dataType:  'json',
                success: function(data) {
                    if( data.status == 'true' ) {
                        $(form).find('.form-control').val('');
                    }
                    form_btn.prop('disabled', false).html(form_btn_old_msg);
                    $(form_result_div).html(data.message).fadeIn('slow');
                    setTimeout(function(){ $(form_result_div).fadeOut('slow')},
                6000);
                }
            });
        }
    });

    // In your Javascript (external .js resource or <script> tag)
    $('.services-select').select2();
}


// Dom Ready Function
jQuery(document).ready(function () {
    (function ($) {
        // add your functions
        revolutionSliderActiver ();
        mainmenu ();
        testimonialSlider ();
        scrollToTop ();
        CounterNumberChanger ();
        selectDropdown ();
        thmScrollAnim();
 
    })(jQuery);
});


// Scroll Function
jQuery(window).scroll(function(){
    (function ($) {
    stickyHeader()
    
    })(jQuery);
});



// Instance Of Fuction while Window Load event
jQuery(window).load(function() {
    (function($) {
        projectMasonaryLayout ();
        prealoader ()
        
    })(jQuery);
});



