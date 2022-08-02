//Header
var check = $('input#check');
var menu = $('header .menu');

check.change(function(){
    if(this.checked){
        menu.addClass('active');
    }else{
        menu.removeClass('active');
    }
});

$('#btn-oto-menu-open').click(function() {
  $('.oto-menu').css('transform','translateX(0)');
})
$('#btn-oto-menu-close').click(function() {
  $('.oto-menu').css('transform','translateX(-100%)');
})