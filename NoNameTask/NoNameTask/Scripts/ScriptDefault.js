
let itemsHead = document.querySelectorAll(".itemHead");
let itemsMain = document.querySelectorAll(".itemMain");
let windowInnerWidth = $(window).innerWidth();
window.addEventListener("resize", function () {

    function resize() {
        windowInnerWidth = $(window).innerWidth();
    }
    resize();
})
/*--------sidebar start--------------- */
let g = true
for (let i = 0; i < itemsHead.length; i++) {
    $(document).ready(function () {
        $(itemsHead[i]).val("1");
        $(itemsHead[i]).click(() => {

            yoxla($(itemsHead[i]).val());
            if (g) {
                $(itemsHead[i]).addClass("select");
                $(itemsHead[i]).val("2");
            }
            else {
                $(itemsHead[i]).val("1");

            }

            if (g) {
                $(itemsMain[i]).slideToggle("fast")
            }
            if (g && windowInnerWidth > 751) {
                setTimeout(() => {
                    let pos = itemsHead[i].offsetTop;
                    let k = 0;
                    let h = setInterval(() => {
                        document.documentElement.scrollTo(0, pos - k)
                        k++;
                        if (k == 100) {
                            clearInterval(h);
                        }
                    }, 5)

                }, 500)
            }
            g = true;
        })
    })
}
function yoxla(clickVal) {
    for (let k of itemsHead) {
        if ($(k).val() == "2") {
            if ($(k).val() == clickVal) {
                g = false;
            }
            $(k).next().slideToggle();
            $(k).val("1")
        }
    }
    for (let k of itemsHead) {
        $(k).removeClass("select")
    }
}
let h = true
for (let i = 0; i < itemsDevelopHead.length; i++) {
    $(document).ready(function () {
        $(itemsDevelopHead[i]).val("1");
        $(itemsDevelopHead[i]).click(() => {
            yoxla2($(itemsDevelopHead[i]).val());
            if (h) {
                $(itemsDevelopHead[i]).addClass("select2");
                $(itemsDevelopHead[i]).val("2");
            }
            else {
                $(itemsDevelopHead[i]).val("1");

            }

            if (h) {
                $(itemsDevelopMain[i]).slideToggle("fast")
            }
            h = true;
        })
    })
}


