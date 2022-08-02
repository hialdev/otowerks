$('.big-news').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    items:1,
    autoplay:true,
    dots:true,
});

$('.featured-news').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    autoplay:true,
    dots:true,
    responsive:{
        0:{
            items:1,
        },
        600:{
            items:2,
        },
        1000:{
            items:2,
        }
    }
});

var review = $('.review-card');

review.owlCarousel({
    margin:10,
    loop:true,
    autoWidth:true,
    items:4,
    dots:false,
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
    autoWidth:true,
    items:4,
    dots:false,
})

$('.race #next').click(function() {
    race.trigger('next.owl.carousel');
})
// Go to the previous item
$('.race #prev').click(function() {
    race.trigger('prev.owl.carousel', [300]);
})