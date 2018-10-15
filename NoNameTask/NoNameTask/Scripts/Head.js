(function () {
    let windowInnerHeight = document.getElementById('wraper').offsetHeight;
    $('#sidebar').css("height", `${windowInnerHeight}px`);
    let windowInnerWidth = $(window).innerWidth();
    
    $(".bar").click(() => {
        if ($("#sidebar").css('z-index')=="1")
            $("#sidebar").css('z-index', '5');
        else
            $("#sidebar").css('z-index', '1');



    })

    if (windowInnerWidth < 992) {
        $(".page-wrapper").css('margin-left', '0px');
        $(".nav").css('display', 'grid');
        $(".body-content").css('padding', '0px');
    }
    else {
        $(".page-wrapper").css('margin-left', '280px');
        $(".nav").css('display', 'none');
        $(".body-content").css('padding', '35px');
    }
})();

window.addEventListener("resize", function () {

    function resize() {
        windowInnerWidth = $(window).innerWidth();

        windowInnerHeight = document.getElementById('wraper').offsetHeight;
        $('#sidebar').css("height", `${windowInnerHeight}px`);
        if (windowInnerWidth < 992) {
            $(".page-wrapper").css('margin-left', '0px');
            $(".nav").css('display', 'grid');
        }
        else {
            $(".page-wrapper").css('margin-left', '280px');
            $(".nav").css('display', 'none');

        }
    }
    resize();
})