$('.big-news').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    items:1,
    autoplay:true,
    dots:true,
});

var review = $('.review-card');

review.owlCarousel({
    margin:10,
    loop:true,
    responsive : {
        // breakpoint from 0 up
        0 : {
            autoWidth:false,
            items:1,
        },
        // breakpoint from 480 up
        480 : {
            autoWidth:true,
            items:4,
        },
    }
})

$('.review #next').click(function() {
    review.trigger('next.owl.carousel');
})
// Go to the previous item
$('.review #prev').click(function() {
    review.trigger('prev.owl.carousel', [300]);
})

var race = $('.race-card');

race.owlCarousel({
    margin:10,
    loop:true,
    items:4,
    responsive : {
        // breakpoint from 0 up
        0 : {
            autoWidth:false,
            items:1,
        },
        // breakpoint from 480 up
        480 : {
            autoWidth:true,
        },
    }
})

$('.race #next').click(function() {
    race.trigger('next.owl.carousel');
})
// Go to the previous item
$('.race #prev').click(function() {
    race.trigger('prev.owl.carousel', [300]);
})