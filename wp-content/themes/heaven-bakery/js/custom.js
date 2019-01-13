jQuery('#toggle').click(function() {
   jQuery(this).toggleClass('active');
   jQuery('#overlay').toggleClass('open');
});

jQuery('.owl-carousel').owlCarousel({
    loop:true,
    nav:false,
    dots:true,
    loop:true,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
});

jQuery(window).scroll(function() {
    if (jQuery(this).scrollTop()) {
        jQuery('#toTop').fadeIn();
    } else {
        jQuery('#toTop').fadeOut();
    }
});

jQuery("#toTop").click(function () {
   //1 second of animation time
   //html works for FFX but not Chrome
   //body works for Chrome but not FFX
   //This strange selector seems to work universally
   jQuery("html, body").animate({scrollTop: 0}, 1000);
});