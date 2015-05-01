$(document).ready(function(){
	function slider() {
    if (document.body.scrollTop > 19) //Show the slider after scrolling down 100px
        $('.nav-main').stop().animate({width: '15%'},500)
    else
        $('.nav-main').stop().animate({width: '100%'},500)
}
$(window).scroll(function () {
    slider();
});
})

