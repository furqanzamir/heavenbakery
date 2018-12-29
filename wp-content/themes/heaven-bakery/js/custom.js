jQuery('#toggle').click(function() {
   jQuery(this).toggleClass('active');
   jQuery('#overlay').toggleClass('open');
});

jQuery('.owl-carousel').owlCarousel({
    loop:true,
    nav:false,
    dots:true,
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