(function () {
    let windowInnerHeight = document.getElementById('wraper').offsetHeight;
    $('#sidebar').css("height", `${windowInnerHeight}px`);
    let windowInnerWidth = $(window).innerWidth();
    if (windowInnerWidth < 992) {
        $(".page-wrapper").css('margin-left', '0px');
    }
    else {
        $(".page-wrapper").css('margin-left', '280px');
    }
})();

window.addEventListener("resize", function () {

    function resize() {
        windowInnerWidth = $(window).innerWidth();

        windowInnerHeight = document.getElementById('wraper').offsetHeight;
        $('#sidebar').css("height", `${windowInnerHeight}px`);
        if (windowInnerWidth < 992) {
            $(".page-wrapper").css('margin-left', '0px');
        }
        else {
            $(".page-wrapper").css('margin-left', '280px');
        }
    }
    resize();
})