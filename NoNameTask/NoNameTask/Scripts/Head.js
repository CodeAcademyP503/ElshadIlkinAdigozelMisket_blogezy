let windowInnerHeight;
(function () {
    let windowInnerWidth = $(window).innerWidth();
    let scrollHeader = $(window).innerHeight();
    windowInnerHeight = document.getElementById('wraper').offsetHeight;
    $('.scroll').css("height", `${windowInnerHeight}px`);
    $(".bar").click(() => {
        if ($(".scroll").css('z-index')=="1")
            $(".scroll").css('z-index', '5');
        else
            $(".scroll").css('z-index', '1');
    })

    if (windowInnerWidth < 751) {
        $(".page-wrapper").css('margin-left', '0px');
        $(".nav").css('display', 'grid');
            $('.scroll').css("position",'fixed');
            $('.scroll').css("height", `${scrollHeader}px`);
    }
    else {
        $(".page-wrapper").css('margin-left', '280px');
        $(".nav").css('display', 'none');
        $('.scroll').css("position", 'absolute');
        windowInnerHeight = document.getElementById('wraper').offsetHeight;
        $('.scroll').css("height", `${windowInnerHeight}px`);
    }
})();

window.addEventListener("resize", function () {

    function resize() {
        windowInnerWidth = $(window).innerWidth();

         windowInnerHeight = document.getElementById('wraper').offsetHeight;

        if (windowInnerWidth < 751) {
            $(".page-wrapper").css('margin-left', '0px');
            $(".nav").css('display', 'grid');
            $('.scroll').css("position", 'fixed');
            scrollHeader = $(window).innerHeight();
            $('.scroll').css("height", `${scrollHeader}px`);
        }
        else {
            $(".page-wrapper").css('margin-left', '280px');
            $(".nav").css('display', 'none');
            $('.scroll').css("height", `${windowInnerHeight}px`);
            $('.scroll').css("position",'absolute');
        }
    }
    resize();
})