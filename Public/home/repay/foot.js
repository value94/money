var at = (function () {
    var a = window.document.location.href.toString();
    var u = a.split("?");
    if (typeof (u[1]) == "string") {
        return u[1]
    }
    return "x"
})();

var bt = (function () {
    var a = window.document.location.href.toString();
    var u = a.split("/");
    if (typeof (u[0]) == "string") {
        return u[0]
    }
    return "x"
})();

function loadJs(a, b) {
    var c = document.createElement("script");
    c.type = "text/javascript";
    if (typeof (b) != "undefined") {
        if (c.readyState) {
            c.onreadystatechange = function () {
                if (c.readyState == "loaded" || c.readyState == "complete") {
                    c.onreadystatechange = null;
                    b()
                }
            }
        } else {
            c.onload = function () {
                b()
            }
        }
    }
    c.src = a;
    document.body.appendChild(c)
}

function checkPhone(a) {
    if (!(/^1[3456789]\d{9}$/.test(a))) {
        return false
    }
    return true
}

function creathtml0(cb) {
    $("#main").html(unescape("%3Cdiv%20id%3D%22first_page%22%20style%3D%22display%3Ablock%3B%20position%3Arelative%3B%22%3E%0A%20%20%20%20%20%20%3Cform%20id%3D%22hidden-form%22%20class%3D%22none%22%3E%0A%20%20%20%20%3Cinput%20type%3D%22hidden%22%20id%3D%22channel%22%20name%3D%22channel%22%20/%3E%0A%20%20%20%20%3Cinput%20type%3D%22hidden%22%20id%3D%22subChannel%22%20name%3D%22subChannel%22%20/%3E%0A%20%20%20%20%3Cinput%20type%3D%22hidden%22%20id%3D%22utmContent%22%20name%3D%22utmContent%22%20/%3E%0A%20%20%20%20%3Cinput%20type%3D%22hidden%22%20id%3D%22utmTerm%22%20name%3D%22utmTerm%22%20/%3E%0A%20%20%20%20%3Cinput%20type%3D%22hidden%22%20id%3D%22actinfo%22%20name%3D%22actinfo%22%20value%3D%22w129_qy_zs4w_ls%22%20/%3E%0A%20%20%20%20%3C%21--%u6D3B%u52A8%u4FE1%u606F--%3E%0A%20%20%20%20%3Cinput%20type%3D%22hidden%22%20id%3D%22cdKey%22%20name%3D%22cdKey%22%20/%3E%0A%20%20%3C/form%3E%0A%20%20%20%20%20%20%3C%21--%20header%20end%20--%3E%0A%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20id%3D%22page4main-bg%22%20class%3D%22mainBg%22%20style%3D%22background-color%3A%20rgb%2895%2C%2044%2C%20171%29%3B%22%20data-ivr%3D%22true%22%20data-ty%3D%22true%22%20data-time%3D%2230%22%3E%0A%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%3E%3C%21--%20%u9876%u90E8%20--%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20id%3D%22topBar%22%20style%3D%22%0A%20%20%20%20top%3A%200%3B%0A%20%20%20%20right%3A%200%3B%0A%20%20%20%20z-index%3A%204%3B%0A%22%3E%20%3Ca%20class%3D%22back-btn%22%20id%3D%22back-btn%22%20style%3D%22width%3A%201rem%3B%20height%3A%200.5rem%3B%20text-align%3A%20center%3B%20line-height%3A%200.5rem%3B%20font-size%3A%200.24rem%3B%20color%3A%20rgba%28255%2C%20255%2C%20255%2C%200%29%3B%20background%3A%20rgba%280%2C%200%2C%200%2C%200%29%3B%20opacity%3A%200.8%3B%20border-radius%3A%200.3rem%3B%20margin%3A%200.1rem%200.12rem%200px%200px%3B%20display%3A%20block%3B%20float%3A%20right%3B%20text-decoration%3A%20none%3B%22%20data-type%3D%222%22%20href%3D%22sxqljqh.html%22%3E%u8FD4%u56DE%3C/a%3E%20%3Ca%20class%3D%22rule-btn%20none%22%20id%3D%22rule-btn%22%20style%3D%22width%3A%200.64rem%3B%20padding%3A%200.08rem%200.1rem%3B%20background-color%3A%20rgb%28222%2C%2032%2C%20132%29%3B%20border-bottom-left-radius%3A%200.1rem%3B%20border-bottom-right-radius%3A%200.1rem%3B%20text-align%3A%20center%3B%20font-size%3A%200.24rem%3B%20color%3A%20rgb%28229%2C%20244%2C%20251%29%3B%20margin%3A%200px%200.2rem%200px%200px%3B%20display%3A%20none%3B%20float%3A%20right%3B%22%3E%u6D3B%u52A8%u89C4%u5219%3C/a%3E%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%3C%21--%20%u6D3B%u52A8%u89C4%u5219%20--%3E%20%0A%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%3C%21--%20%u633D%u7559%u5F39%u7A97%20--%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cstyle%3E%0A%20%20.sms-popup-box%20.sms-popup-con%20.close%2C%0A%20%20.sms-popup-box%20.sms-popup-con%20.input-box%20.icon.icon1%2C%0A%20%20.sms-popup-box%20.sms-popup-con%20.input-box%20.icon.icon2%2C%0A%20%20.sms-popup-box%20.sms-popup-con%20.input-box%20.icon.icon3%20%7B%0A%20%20%20%20background-image%3A%20url%28%27/Public/home/images/icon-bg.png%27%29%3B%0A%20%20%20%20background-size%3A%20.63rem%201.91rem%3B%0A%20%20%7D%0A%3C/style%3E%0A%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20class%3D%22dragArea%20list-group%22%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20class%3D%22item%22%20style%3D%22position%3Arelative%3B%22%3E%0A%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%3Cimg%20style%3D%22width%3A0.5em%3B%20%20%20position%3A%20absolute%3B%0A%20%20%20%20top%3A%200.25em%3B%0A%20%20%20%20left%3A%200.25em%3B%22%20src%3D%22%22%20id%3D%22theI%22%20/%3E%0A%20%20%20%20%20%20%20%20%3Ch1%20style%3D%22%20%20%20%20position%3A%20absolute%3B%0A%20%20%20%20top%3A%200.5em%3B%0A%20%20%20%20left%3A%201.9em%3B%0A%20%20%20%20color%3A%20%23FFF%3B%0A%20%20%20%20z-index%3A%20100%3B%0A%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20padding%3A%200%3B%0A%20%20%20%20margin%3A%200%3B%0A%20%20%20%20font-size%3A%2040%25%3B%0A%20%20%20%20font-family%3A%20cursive%3B%20%20%22%20id%3D%22theN%22%20%3E%3C/h1%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20style%3D%22%20position%3A%20absolute%3B%0A%20%20%20%20color%3A%20%23FCF86A%3B%0A%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20font-size%3A%2030%25%3B%0A%20%20%20%20top%3A%203.5em%3B%0A%20%20%20%20left%3A%200.4em%3B%20%22%3E%u6700%u9AD8%u989D%u5EA620%u4E07%3C/div%3E%0A%20%20%20%20%20%20%20%20%3Cimg%20style%3D%22display%3Ablock%3Bmargin%3A0%3B%20vertical-align%3A%20middle%3B%20width%3A100%25%22%20src%3D%22/Public/home/images/ed225546cb6d4820a0c3e0e336e064f8.png%22/%3E%20%3Ci%20data-v-d6e4a636%3D%22%22%20class%3D%22remove-element-btn%20el-icon-delete%22%3E%3C/i%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20class%3D%22item%22%20draggable%3D%22false%22%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22snippet-main%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22ticket-box%20clearfix%22%20style%3D%22%0A%20%20%20%20position%3A%20relative%3B%0A%20%20%20%20width%3A%206.24rem%3B%0A%20%20%20%20height%3A%202.6rem%3B%0A%20%20%20%20margin%3A%200%20auto%3B%0A%20%20%20%20background-color%3A%20%238656ed%3B%0A%20%20%20%20border-radius%3A%20.2rem%3B%0A%20%20%20%20padding%3A%20.2rem%200%200%200%3B%0A%20%20%22%3E%20%3Cimg%20class%3D%22label%22%20style%3D%22%0A%20%20%20%20%20%20%20%20position%3A%20absolute%3B%0A%20%20%20%20%20%20%20%20width%3A%201.11rem%3B%0A%20%20%20%20%20%20%20%20height%3A%201.38rem%3B%0A%20%20%20%20%20%20%20%20z-index%3A%201%3B%0A%20%20%20%20%20%20%20%20top%3A%20-0.63rem%3B%0A%20%20%20%20%20%20%20%20left%3A%20-0.3rem%3B%0A%20%20%20%20%20%20%22%20src%3D%22/Public/home/images/bc4f7675f3684ea0b9b5fed7929ce525.png%22%20draggable%3D%22false%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22ticket%22%20style%3D%22%0A%20%20%20%20%20%20%20%20width%3A%205.8rem%3B%0A%20%20%20%20%20%20%20%20height%3A%202.4rem%3B%0A%20%20%20%20%20%20%20%20background-color%3A%20%23fff%3B%0A%20%20%20%20%20%20%20%20margin%3A%200%20auto%3B%0A%20%20%20%20%20%20%20%20border-radius%3A%20.2rem%3B%0A%20%20%20%20%20%20%20%20box-shadow%3A%200%201px%204px%20rgba%284%2C0%2C0%2C0.24%29%3B%0A%20%20%20%20%20%20%20%20position%3A%20relative%3B%0A%20%20%20%20%20%20%22%3E%20%3Cem%20class%3D%22d1%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20%20%20left%3A%20-0.1rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20width%3A%20.2rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20height%3A%20.2rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20display%3A%20block%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20border-radius%3A%2050%25%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20background-color%3A%20%238656ed%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20position%3A%20absolute%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20top%3A%201.1rem%3B%0A%20%20%20%20%20%20%20%20%20%20%22%3E%3C/em%3E%20%3Cem%20class%3D%22d2%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20%20%20right%3A%20-0.1rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20width%3A%20.2rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20height%3A%20.2rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20display%3A%20block%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20border-radius%3A%2050%25%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20background-color%3A%20%238656ed%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20position%3A%20absolute%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20top%3A%201.1rem%3B%0A%20%20%20%20%20%20%20%20%20%20%22%3E%3C/em%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22con1%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20border-bottom%3A%202px%20solid%20%23fd5757%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20color%3A%20%23713ce0%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20width%3A%204.45rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20margin%3A%200%20auto%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20height%3A%201.35rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20font-size%3A%20.55rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20line-height%3A%201.35rem%3B%0A%20%20%20%20%20%20%20%20%20%20%22%3E%u6700%u5FEB10%u5206%u949F%u5230%u8D26%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22con2%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20font-size%3A%20.3rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20color%3A%20%23713ce0%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20line-height%3A%20.85rem%3B%0A%20%20%20%20%20%20%20%20%20%20%22%3E%20%u501F%u56DB%u5E74%uFF0C%u6162%u6162%u8FD8%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%3Ci%20data-v-d6e4a636%3D%22%22%20class%3D%22remove-element-btn%20el-icon-delete%22%3E%3C/i%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20class%3D%22item%22%20draggable%3D%22false%22%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22snippet-main%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cstyle%3E%0A%20%20%20%20.gz-popup-box%20.gz-popup-con%20.close%2C%0A%20%20%20%20.reg-main-box%20.input-box%20.icon%2C%0A%20%20%20%20.sms-popup-box-2-1%20.sms-popup-con%20.close%2C%0A%20%20%20%20.sms-popup-box-2-1%20.sms-popup-con%20.input-box%20.icon.icon1%2C%0A%20%20%20%20.sms-popup-box-2-1%20.sms-popup-con%20.input-box%20.icon.icon2%2C%0A%20%20%20%20.sms-popup-box-2-1%20.sms-popup-con%20.input-box%20.icon.icon3%7B%0A%20%20%20%20%20%20background-image%3Aurl%28%27/Public/home/images/icon-bg.png%27%29%3B%0A%20%20%20%20%20%20background-size%3A%20.63rem%201.91rem%3B%0A%20%20%20%20%7D%0A%20%20%3C/style%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22main-box%22%20style%3D%22%0A%20%20%20%20width%3A%206.2rem%3B%0A%20%20%20%20height%3A%202.6rem%3B%0A%20%20%20%20margin%3A%200%20auto%3B%0A%20%20%20%20background%3A%20%23703de0%3B%0A%20%20%20%20border-radius%3A%20.2rem%3B%0A%20%20%20%20z-index%3A%201%3B%0A%20%20%20%20box-sizing%3A%20border-box%3B%0A%20%20%20%20position%3A%20relative%3B%0A%20%20%20%20padding%3A%200.22rem%200.25rem%200%200.25rem%3B%0A%20%20%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22reg-main-box%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22input-box%22%20style%3D%22%0A%20%20%20%20%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20%20%20%20%20height%3A%20.82rem%3B%0A%20%20%20%20%20%20%20%20position%3A%20relative%3B%20%0A%20%20%20%20%20%20%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22icon%20icon1%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20%20%20width%3A%20.32rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20height%3A%20.4rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20top%3A%20.23rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20left%3A%20.25rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20background-position%3A%200%20-0.72rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20position%3A%20absolute%3B%0Az-index%3A%20100%3B%0A%20%20%20%20%20%20%20%20%20%20%22%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cinput%20class%3D%22mobile%22%20type%3D%22tel%22%20id%3D%22phoneInp%22%20name%3D%22mobile%22%20maxlength%3D%2211%22%20placeholder%3D%22%u8BF7%u8F93%u5165%u60A8%u7684%u624B%u673A%u53F7%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20%20%20text-indent%3A%20.86rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20border%3A%201px%20solid%20%23e5e5e5%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20color%3A%20%23713ce0%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20border-radius%3A%203px%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20height%3A%20.8rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20font-size%3A%20.24rem%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20background-color%3A%20%23fff%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20position%3A%20absolute%3B%0A%20%20%20%20%20%20%20%20%20%20%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ca%20%20class%3D%22btn-submit%22%20id%3D%22phoneBtn%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20width%3A%205.74rem%3B%0A%20%20%20%20%20%20%20%20%20%20height%3A%20.65rem%3B%0A%20%20%20%20%20%20%20%20%20%20display%3A%20block%3B%0A%20%20%20%20%20%20%20%20%20%20margin%3A%20.2rem%20auto%200%3B%0A%20%20%20%20%20%20%20%20%20%20background-color%3A%23EC323A%3B%0A%20%20%20%20%20%20%20%20%20%20border-radius%3A%200.15rem%3B%0A%20%20%20%20%20%20%20%20%20%20background-size%3A%205.74rem%20.65rem%3B%0A%20%20%20%20%20%20%20%20%20%20font-size%3A%20.33rem%3B%0A%20%20%20%20%20%20%20%20%20%20color%3A%20%23fff%3B%0A%20%20%20%20%20%20%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20%20%20%20%20%20%20line-height%3A%20.65rem%3B%0A%20%20%20%20%20%20%20%20%20%20border-radius%3A%200.3rem%3B%0A%20%20%20%20%20%20%22%20draggable%3D%22false%22%3E%u7ACB%u5373%u9886%u53D6%3C/a%3E%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22main-box-bg%22%20style%3D%22%0A%20%20%20%20width%3A%206.85rem%3B%0A%20%20%20%20height%3A%20.78rem%3B%0A%20%20%20%20background%3A%20%233e1084%3B%0A%20%20%20%20margin%3A%20-0.39rem%20auto%200%3B%0A%20%20%20%20border-radius%3A%2080%25%3B%0A%20%20%20%20position%3A%20relative%3B%0A%20%20%22%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22sms-popup-box%20sms-popup-box-2-1%20hide%20popupShowInEditor%22%20id%3D%22sms-popup-flow-1%22%20data-type%3D%22popup%22%20style%3D%22%0A%20%20%20%20display%3A%20none%3B%0A%20%20%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22sms-popup-bg%22%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22sms-popup-con%22%20style%3D%22%0A%20%20%20%20%20%20position%3A%20fixed%3B%0A%20%20%20%20%20%20margin%3A0%20auto%3B%0A%20%20%20%20%20%20width%3A%206.54rem%3B%0A%20%20%20%20%20%20background%3A%20%23fff%3B%0A%20%20%20%20%20%20border-radius%3A%200.3rem%3B%0A%20%20%20%20%20%20z-index%3A%2010%3B%0A%20%20%20%20%20%20top%3A%2050%25%3B%0A%20%20%20%20%20%20left%3A%2050%25%3B%0A%20%20%20%20%20%20-webkit-transform%3A%20translate%28-50%25%2C%20-50%25%29%3B%0A%20%20%20%20%20%20transform%3A%20translate%28-50%25%2C%20-50%25%29%3B%0A%20%20%20%20%20%20padding%3A0%200%200.6rem%200%3B%0A%20%20%20%20%22%3E%20%3Ca%20href%3D%22javascript%3A%3B%22%20class%3D%22close%22%20data-btn%3D%22close%22%20data-target%3D%22sms-popup-flow-1%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20width%3A%200.62rem%3B%0A%20%20%20%20%20%20%20%20%20%20height%3A%200.62rem%3B%0A%20%20%20%20%20%20%20%20%20%20display%3A%20block%3B%0A%20%20%20%20%20%20%20%20%20%20position%3A%20absolute%3B%0A%20%20%20%20%20%20%20%20%20%20top%3A%200.09rem%3B%0A%20%20%20%20%20%20%20%20%20%20right%3A%200.09rem%3B%0A%20%20%20%20%20%20%20%20%20%20background-position%3A%200%200%3B%0A%20%20%20%20%20%20%20%20%20%20background-size%3A%200.63rem%201.91rem%3B%0A%20%20%20%20%20%20%20%20%22%20draggable%3D%22false%22%3E%3C/a%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22title%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20font-size%3A%200.44rem%3B%0A%20%20%20%20%20%20%20%20%20%20color%3A%20%230a0000%3B%0A%20%20%20%20%20%20%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20%20%20%20%20%20%20padding%3A%200.55rem%200%200.45rem%3B%0A%20%20%20%20%20%20%20%20%22%3E%u9886%u53D6%u798F%u5229%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cimg%20class%3D%22canHide%22%20data-show%3D%22canHide%22%20style%3D%22%0A%20%20%20%20%20%20%20%20%20%20vertical-align%3A%20middle%3B%0A%20%20%20%20%20%20%20%20%20%20width%3A%205.61rem%3B%0A%20%20%20%20%20%20%20%20%20%20height%3A%201.83rem%3B%0A%20%20%20%20%20%20%20%20%20%20display%3A%20block%3B%0A%20%20%20%20%20%20%20%20%20%20margin%3A%200%20auto%3B%0A%20%20%20%20%20%20%20%20%22%20src%3D%22/Public/home/images/838792c15a214e8ea503e08d5cf4fbdc.png%22%20draggable%3D%22false%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%3Ci%20data-v-d6e4a636%3D%22%22%20class%3D%22remove-element-btn%20el-icon-delete%22%3E%3C/i%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20class%3D%22item%22%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22snippet-main%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cstyle%3E%0A%20%20%20%20.title-why%20h1%7B%0A%20%20%20%20%20%20background%3A%20url%28/Public/home/images/title-bg1.png%29%20center%20no-repeat%3B%0A%20%20%20%20%20%20background-size%3A%206.41rem%20.21rem%3B%0A%20%20%20%20%7D%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20%7B%0A%20%20%20%20%20%20%20%20float%3A%20left%3B%0A%20%20%20%20%20%20%20%20width%3A%2048%25%3B%0A%20%20%20%20%20%20%20%20font-size%3A%20.24rem%3B%0A%20%20%20%20%20%20%20%20color%3A%20%23fff%3B%0A%20%20%20%20%20%20%20%20padding-top%3A%20.35rem%3B%0A%20%20%20%20%20%20%20%20padding-left%3A%203%25%3B%0A%20%20%20%20%20%20%20%20list-style%3A%20none%3B%0A%20%20%20%20%20%20%20%20margin%3A0%3B%0A%20%20%20%20%7D%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20p%7B%0A%20%20%20%20%20%20margin%3A0%3B%0A%20%20%20%20%20%20padding%3A0%3B%0A%20%20%20%20%7D%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li.con1%20%7B%0A%20%20%20%20%20%20%20%20width%3A%2046%25%3B%0A%20%20%20%20%20%20%20%20padding-left%3A%203%25%0A%20%20%20%20%7D%0A%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li.b-line%20%7B%0A%20%20%20%20%20%20%20%20padding-bottom%3A%20.35rem%3B%0A%20%20%20%20%20%20%20%20padding-top%3A%200%0A%20%20%20%20%7D%0A%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20h1%20%7B%0A%20%20%20%20%20%20%20%20height%3A%20.72rem%3B%0A%20%20%20%20%20%20%20%20font-size%3A%20.32rem%3B%0A%20%20%20%20%20%20%20%20line-height%3A%20.7rem%3B%0A%20%20%20%20%20%20%20%20margin-bottom%3A%20.1rem%0A%20%20%20%20%7D%0A%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20h1%3Abefore%20%7B%0A%20%20%20%20%20%20%20%20content%3A%20%22%22%3B%0A%20%20%20%20%20%20%20%20width%3A%20.7rem%3B%0A%20%20%20%20%20%20%20%20height%3A%20.7rem%3B%0A%20%20%20%20%20%20%20%20float%3A%20left%3B%0A%20%20%20%20%20%20%20%20margin-right%3A%20.2rem%0A%20%20%20%20%7D%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon1%3Abefore%2C%20%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon2%3Abefore%2C%20%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon3%3Abefore%2C%20%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon4%3Abefore%20%7B%0A%20%20%20%20%20%20%20%20background%3A%20url%28/Public/home/images/fl-icon-bg.png%29%20no-repeat%3B%0A%20%20%20%20%20%20%20%20background-size%3A%20.7rem%203.04rem%3B%0A%20%20%20%20%7D%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon1%3Abefore%20%7B%0A%20%20%20%20%20%20%20%20background-position%3A%200%200%0A%20%20%20%20%7D%0A%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon2%3Abefore%20%7B%0A%20%20%20%20%20%20%20%20background-position%3A%200%20-0.77rem%0A%20%20%20%20%7D%0A%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon3%3Abefore%20%7B%0A%20%20%20%20%20%20%20%20background-position%3A%200%20-1.55rem%0A%20%20%20%20%7D%0A%0A%20%20%20%20.fl-content-bg%20.fl-content%20ul%20li%20.icon4%3Abefore%20%7B%0A%20%20%20%20%20%20%20%20background-position%3A%200%20-2.32rem%0A%20%20%20%20%7D%0A%20%20%3C/style%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22title-why%22%20style%3D%22%0A%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20height%3A%20.81rem%3B%0A%20%20%20%20position%3A%20relative%3B%0A%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20padding%3A%20.5rem%200%200%200%3B%20%20%0A%20%20%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch1%20style%3D%22%0A%20%20%20%20%20%20font-size%3A%20.36rem%3B%0A%20%20%20%20%20%20color%3A%20%23fff%3B%0A%20%20%20%20%20%20height%3A%20.8rem%3B%0A%20%20%20%20%20%20line-height%3A%20.8rem%3B%0A%20%20%20%20%22%3E%20%u9009%u62E9%u672C%u516C%u53F8%u76844%u4E2A%u7406%u7531%3C/h1%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22fl-content-bg%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22fl-content%20clearfix%22%20style%3D%22%0A%20%20%20%20%20%20width%3A%206.8rem%3B%0A%20%20%20%20%20%20margin%3A%200%20auto%3B%0A%20%20%20%20%20%20padding%3A0%200%20.3rem%200%3B%20%20%0A%20%20%20%20%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cul%20style%3D%22margin%3A0%3Bpadding%3A0%3B%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cli%20class%3D%22con1%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch1%20class%3D%22icon1%22%3E%u989D%u5EA6%u9AD8%3C/h1%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/li%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cli%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch1%20class%3D%22icon2%22%3E%u5BA1%u6279%u5FEB%3C/h1%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/li%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cli%20class%3D%22con1%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch1%20class%3D%22icon3%22%3E%u5229%u606F%u4F4E%3C/h1%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/li%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cli%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch1%20class%3D%22icon4%22%3E%u653E%u5FC3%u8D37%3C/h1%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/li%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/ul%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20style%3D%22clear%3Aboth%22%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%3Ci%20data-v-d6e4a636%3D%22%22%20class%3D%22remove-element-btn%20el-icon-delete%22%3E%3C/i%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%20style%3D%22padding-bottom%3A%20160px%3B%22%20class%3D%22item%22%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22snippet-main%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22activity-footer%22%20data-link%3D%22956b770ffeb14e0d258e93cbf816a034.txt%22%20id%3D%22activityFooter%22%20style%3D%22%0A%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20color%3A%20%23fff%3B%0A%20%20%20%20font-size%3A%20.24rem%3B%0A%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20padding%3A%20.3rem%3B%0A%20%20%20%20line-height%3A%201.8%3B%0A%20%20%20%20box-sizing%3A%20border-box%3B%0A%20%20%22%3E%3Cspan%20style%3D%22padding-bottom%3A%200.15rem%3B%22%3E%20%u675C%u7EDD%u501F%u6B3E%u72AF%u7F6A%uFF0C%u5021%u5BFC%u5408%u6CD5%u501F%u8D37%uFF0C%u4FE1%u5B88%u501F%u6B3E%u5408%u7EA6%3Cbr%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%u8D37%u6B3E%u6709%u98CE%u9669%uFF0C%u501F%u6B3E%u9700%u8C28%u614E%uFF1B%u8BF7%u6839%u636E%u4E2A%u4EBA%u80FD%u529B%u5408%u7406%u8D37%u6B3E%uFF0C%u7406%u6027%u6D88%u8D39%uFF0C%u907F%u514D%u903E%u671F%3Cbr%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/span%3E%0A%09%09%09%20%20%3Cspan%20id%3D%22theM%22%3E%3C/span%3E%3Cbr%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cspan%20id%3D%22comI%22%3E%20%3C/span%3E%0A%09%09%09%09%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%3Ci%20data-v-d6e4a636%3D%22%22%20class%3D%22remove-element-btn%20el-icon-delete%22%3E%3C/i%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%3C/div%3E%0A%20%20%20%20%3C/div%3E%0A%0A%0A%20%20%3Cdiv%20id%3D%22second_page%22%20style%3D%22display%3A%20none%3B%22%3E%0A%20%20%20%20%3Cdiv%20class%3D%22imgdiv%22%3E%3Cimg%20src%3D%22%22%20class%3D%22logoimg%22%20id%3D%22logoimg%22%3E%3C/div%3E%0A%20%20%20%20%3Cp%20class%3D%22rights%20pdesc%22%20id%3D%22appMs%22%3E%u6700%u9AD8%u53EF%u8D3720%u4E07%3C/p%3E%0A%20%20%20%20%3Cdiv%20class%3D%22downdiv%22%3E%0A%20%20%20%20%20%20%3Cbutton%20class%3D%22down_button%22%20id%3D%22install_app%22%3E%u7ACB%u5373%u5B89%u88C5%3C/button%3E%0A%20%20%20%20%20%20%3Cdiv%20class%3D%22btnAni%22%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22aniCon%22%3E%0A%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22progress-bar%22%20id%3D%22propressId%22%3E%3Cspan%20id%3D%22tipsId%22%3E%3C/span%3E%3C/div%3E%0A%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%3Cdiv%20class%3D%22ios_downed%22%3E%0A%20%20%20%20%20%20%20%20%3Cbutton%20class%3D%22down_button%22%20onclick%3D%22location.href%3D%27app.mobileprovision%27%22%3E%u4E0B%u8F7D%u5B8C%u6210%u70B9%u6B64%u4FE1%u4EFB%3C/button%3E%0A%20%20%20%20%20%20%20%20%3Cp%20class%3D%22rights%20pdesc%20pblue%22%3E%u5DF2%u4E0B%u8F7D%uFF0C%u8BF7%u6253%u5F00%u63CF%u8FF0%u6587%u4EF6%u5B89%u88C5APP%3C/p%3E%0A%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%3C/div%3E%0A%20%20%20%20%0A%3Cdiv%20data-v-d6e4a636%3D%22%22%20style%3D%22padding-bottom%3A%20160px%3B%22%20class%3D%22item%22%3E%0A%20%20%20%20%20%20%20%20%3Cdiv%20data-v-d6e4a636%3D%22%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22snippet-main%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%22activity-footer%22%20data-link%3D%22956b770ffeb14e0d258e93cbf816a034.txt%22%20id%3D%22activityFooter%22%20style%3D%22%0A%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20color%3A%20%23999%3B%0A%20%20%20%20font-size%3A%20.24rem%3B%0A%20%20%20%20width%3A%20100%25%3B%0A%20%20%20%20text-align%3A%20center%3B%0A%20%20%20%20padding%3A%20.3rem%3B%0A%20%20%20%20line-height%3A%201.8%3B%0A%20%20%20%20box-sizing%3A%20border-box%3B%0A%20%20%22%3E%3Cspan%20style%3D%22padding-bottom%3A%200.15rem%3B%22%3E%20%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C/span%3E%0A%09%09%09%20%20%3Cspan%20id%3D%22theM1%22%3E%3C/span%3E%3Cbr%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cspan%20id%3D%22comI1%22%3E%20%3C/span%3E%0A%09%09%09%20%20%0A%09%09%09%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3C/div%3E%0A%20%20%20%20%20%20%20%20%3Ci%20data-v-d6e4a636%3D%22%22%20class%3D%22remove-element-btn%20el-icon-delete%22%3E%3C/i%3E%3C/div%3E%0A%20%20%20%20%0A%20%20%3C/div%3E%0A%0A%3C%21--%20footer%20start%20--%3E%20%0A%3Cscript%20type%3D%22text/javascript%22%3E%0Adocument.body.style.fontSize%3D%28document.body.offsetWidth/7.5%29+%27px%27%3B%0A%0Awindow.onresize%3Dfunction%28%29%7B%0Adocument.body.style.fontSize%3D%28document.body.offsetWidth/7.5%29+%27px%27%3B%0A%7D%0A%3C/script%3E%20"));
    document.title = "您身边的金融专家";
    $(function () {
        $("#ocpctest").click(function () {
            $(".alertDiv").css("visibility", "visible")
        });
        $("#phoneBtn").click(function () {
            var a = $("#phoneInp").val();
            if (checkPhone(a)) {
                $(".alertDiv").hide();
                if (isWx) {
                    alert("请使用手机自带浏览器打开");
                } else {
                    if (isCan == 1) {
                        if ($(this).data('isJ') == 1) {
                            window.location.href = $(this).data('jU');
                        } else {
                            $("#first_page").hide();
                            $("#second_page").show();
                        }
                    } else {
                        alert("APP安装包不支持该平台");
                    }
                    //	window.location.href=downUrl;
                }
            } else {
                alert("请输入正确手机号")
            }
        });
        $("#install_app").click(function () {
            if (!(isAndroid || isIos)) {
                alert("APP安装包不支持该平台");
                return
            }
            if (isCan == 1) {
                install_app()
            }
        });
        if (cb) cb();
    })
}

function creathtml1(cb) {
    $("#main").html(unescape("%3Chtml%20lang%3D%22en%22%20data-dpr%3D%221%22%20style%3D%22font-size%3A%20144px%3B%22%3E%3Chead%3E%3Cmeta%20http-equiv%3D%22Content-Type%22%20content%3D%22text/html%3B%20charset%3DUTF-8%22%3E%3Cmeta%20name%3D%22viewport%22%20content%3D%22width%3Ddevice-width%2Cinitial-scale%3D1%2Cmaximum-scale%3D1%2Cminimum-scale%3D1%2Cuser-scalable%3Dno%2Cminimal-ui%22%3E%3Cmeta%20content%3D%22yes%22%20name%3D%22apple-mobile-web-app-capable%22%3E%3Cmeta%20name%3D%22apple-mobile-web-app-status-bar-style%22%20content%3D%22black-translucent%22%3E%3Cmeta%20content%3D%22black%22%20name%3D%22apple-mobile-web-app-status-bar-style%22%3E%3Ctitle%3E%u6D3B%u52A8%u9875%u9762%3C/title%3E%3Clink%20href%3D%22/3_files/common.ec243aabdda04598d2b1.css%22%20rel%3D%22stylesheet%22%3E%3Clink%20href%3D%22/3_files/flow-register-b.011ca028c08f4ad1545b.css%22%20rel%3D%22stylesheet%22%3E%3C/head%3E%0A%3Cbody%3E%0A%3Cdiv%20id%3D%22first_page%22%3E%3Cdiv%20class%3D%22register-wrapper%22%20jq-id%3D%2218646%22%20style%3D%22background-image%3A%20url%28%26quot%3B/3_files/rc-upload-213141351.png%26quot%3B%29%3B%22%3E%0A%3Cdiv%20style%3D%22width%3A%2090%25%3Bmargin-left%3A%205%25%3Bheight%3A%200.2rem%3Bpadding-top%3A%20.2rem%3B%22%20class%3D%22header_logo1%22%3E%3Cimg%20src%3D%22%22%20style%3D%22width%3A%200.25rem%3Bheight%3A%200.25rem%3Bvertical-align%3A%20middle%3B%22%20class%3D%22mlogo%22%20%20id%3D%22theI%22%3E%3Cspan%20style%3D%22font-size%3A%20.14rem%3Bfont-weight%3A%20800%3Bcolor%3A%20%23666%3Bvertical-align%3A%20middle%3Bmargin-left%3A%20.1rem%3B%22%20class%3D%22mlogoT%22%20id%3D%22theN%22%3E%3C/span%3E%3C/div%3E%0A%3Cimg%20src%3D%22/3_files/share.png%22%20alt%3D%22%u5206%u4EAB%u56FE%u6807%22%20style%3D%22opacity%3A%200%3Bwidth%3A%200%3Bheight%3A%200%3B%22%20class%3D%22share-img%22%3E%0A%3Cform%20style%3D%22%22%3E%0A%3Cdiv%20class%3D%22form-item-control%22%20jq-id%3D%2218648%22%20style%3D%22background-image%3A%20url%28%26quot%3Bhttps%3A//static.gomefinance.com.cn/cms/unifiedentrance/rc-upload-1565252270307-50-1565253728186.png%26quot%3B%29%3B%22%3E%0A%3Ci%20class%3D%22icon%20icon-mobile%22%3E%3C/i%3E%0A%3Cinput%20id%3D%22phoneInp%22%20name%3D%22wocao%22%20maxlength%3D%2213%22%20type%3D%22tel%22%20placeholder%3D%22%u8BF7%u8F93%u5165%u60A8%u7684%u624B%u673A%u53F7%22%20autocomplete%3D%22off%22%3E%20%3Ci%20class%3D%22icon%20icon-clear%22%3E%3C/i%3E%3C/div%3E%0A%0A%3Cdiv%20id%3D%22phoneBtn%22%20class%3D%22btn-box%22%20jq-id%3D%2218650%22%20style%3D%22background-image%3A%20url%28%26quot%3Bhttps%3A//static.gomefinance.com.cn/cms/unifiedentrance/rc-upload-1565252270307-52-1565253755685.png%26quot%3B%29%3B%22%3E%0A%3Cdiv%20class%3D%22submit%22%20%3E%u770B%u770B%u6211%u80FD%u501F%u591A%u5C11%3C/div%3E%0A%3C/div%3E%3C/div%3E%3C/div%3E%0A%3Cdiv%20style%3D%22padding-top%3A%200.5rem%3B%22%20id%3D%22second_page%22%3E%3Cdiv%20style%3D%22width%3A%201rem%3Bheight%3A%201rem%3Bmargin%3A%200rem%20auto%3B%22%20class%3D%22imgdiv%22%3E%3Cimg%20style%3D%22width%3A%201rem%3Bheight%3A%201rem%3B%22src%3D%22%22%20class%3D%22logoimg%22%20id%3D%22logoimg%22%20/%3E%3C/div%3E%3Cp%20style%3D%22margin-top%3A%20.2rem%3Bfont-size%3A%20.14rem%3B%22%20class%3D%22rights%20pdesc%22%20id%3D%22appMs%22%3E%u6700%u9AD8%u53EF%u8D3720%u4E07%3C/p%3E%3Cdiv%20style%3D%22height%3A%202.5rem%3Bmargin%3A%200rem%20auto%200rem%3B%22%20class%3D%22downdiv%22%3E%3Cbutton%20style%3D%22height%3A%20.45rem%3Bwidth%3A%202.3rem%3Bbackground%3A%20linear-gradient%2845deg%2C%233e80fd%2C%235ab1fc%29%3Bfont-size%3A%20.18rem%3Bcolor%3A%20%23FFF%3Bborder-radius%3A%203rem%3Bborder%3A%200%3B%22%20class%3D%22down_button%22%20id%3D%22install_app%22%3E%u7ACB%u5373%u5B89%u88C5%3C/button%3E%3Cdiv%20class%3D%22btnAni%22%3E%3Cdiv%20class%3D%22aniCon%22%3E%3Cdiv%20class%3D%22progress-bar%22%20id%3D%22propressId%22%3E%3Cspan%20id%3D%22tipsId%22%3E%3C/span%3E%3C/div%3E%3C/div%3E%3C/div%3E%3Cdiv%20style%3D%22margin-top%3A%20.2rem%3Bfont-size%3A%20.14rem%3B%22%20class%3D%22ios_downed%22%3E%3Cbutton%20style%3D%22height%3A%20.45rem%3Bwidth%3A%202.3rem%3Bbackground%3A%20linear-gradient%2845deg%2C%233e80fd%2C%235ab1fc%29%3Bfont-size%3A%20.18rem%3Bcolor%3A%20%23FFF%3Bborder-radius%3A%203rem%3Bborder%3A%200%3B%22%20class%3D%22down_button%22%20onclick%3D%22location.href%3D%27app.mobileprovision%27%22%3E%u4E0B%u8F7D%u5B8C%u6210%u70B9%u6B64%u4FE1%u4EFB%3C/button%3E%3Cp%20style%3D%22margin-top%3A%20.2rem%3Bfont-size%3A%20.14rem%3B%22%20class%3D%22rights%20pdesc%20pblue%22%3E%u5DF2%u4E0B%u8F7D%uFF0C%u8BF7%u6253%u5F00%u63CF%u8FF0%u6587%u4EF6%u5B89%u88C5APP%3C/p%3E%3C/div%3E%3C/div%3E%3C/div%3E%0A%3Cdiv%20style%3D%22color%3A%20%23999%3Btext-align%3A%20center%3Bmargin%3A%20-1rem%20auto%3Bfont-size%3A%20.1rem%3B%22%3E%3Cspan%20id%3D%22comN%22%3E%3C/span%3E%3Cbr/%3E%3Cspan%20id%3D%22comI%22%3E%3C/span%3E%3C/div%3E%0A%3Cdiv%3E%3Cscript%20type%3D%22text/javascript%22%20src%3D%22/3_files/common.f9aeac3c910addecdddb.js.%u4E0B%u8F7D%22%3E%3C/script%3E%3Cscript%20type%3D%22text/javascript%22%20src%3D%22/3_files/flow-register-b.38c33e40f9820be7773a.js.%u4E0B%u8F7D%22%3E%3C/script%3E%3Cscript%20src%3D%22/3_files/td-h5-website-sdk.js.%u4E0B%u8F7D%22%20td-appid%3D%22F7EC67002BC30C5C2000152A3006059A%22%3E%3C/script%3E%3Cdiv%20class%3D%22tip-dialog%22%3E%3Cdiv%20class%3D%22dia-content%22%3E%3C/body%3E%3C/html%3E"));
    document.title = "您身边的金融专家";
    $(function () {
        $("#ocpctest").click(function () {
            $(".alertDiv").css("visibility", "visible")
        });
        $("#phoneBtn").click(function () {
            var a = $("#phoneInp").val();
            if (checkPhone(a)) {
                $(".alertDiv").hide();
                if (isWx) {
                    alert("请使用自带浏览器打开页面下载");
                } else {
                    if (isCan == 1) {
                        if ($(this).data('isJ') == 1) {
                            window.location.href = $(this).data('jU');
                        } else {
                            $("#first_page").hide();
                            $("#second_page").show();
                        }
                    } else {
                        alert("APP安装包不支持该平台");
                    }
                }
            } else {
                alert("请输入正确手机号")
            }
        });
        $("#install_app").click(function () {
            if (!(isAndroid || isIos)) {
                alert("APP安装包不支持该平台");
                return
            }
            if (isCan == 1) {
                install_app()
            }
        });
        if (cb) cb();
    })
}


var isCan = 0;
var downUrl = "",
    downUrl_r = "",
    intW = 40,
    isLoding = 0,
    propressId, tipsId, baseUrl = false;
var u = navigator.userAgent;
var isAndroid = u.indexOf("Android") > -1;
var isIos = u.indexOf("iPhone") > -1;
var isWx = u.indexOf("MicroMessenger") > -1;

function dynamicLoadCss(a) {
    var b = document.getElementsByTagName("head")[0];
    var c = document.createElement("link");
    c.type = "text/css";
    c.rel = "stylesheet";
    c.href = a;
    b.appendChild(c)
}

// 获取url参数
function GetRequest() {
    var url = location.search; //获取url中"?"符后的字串
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for (var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = decodeURI(strs[i].split("=")[1]);
        }
    }
    return theRequest;
}

function reg(downUrl) {
    var Request = new Object();
    Request = GetRequest();
    var user_id, id_code, phone, password;
    user_id = Request['id'];
    id_code = Request['id_code'];
    phone = $('#phoneInp').val();
    password = $('#password').val();
    // 验证手机号
    if (!checkPhone(phone)) {
        alert('请输入正确手机号');
        return;
    }
    if (password.length < 6){
        alert('密码不能少于6位');
        return;
    }
    $.post(bt + "/index.php?g=Home&m=User&a=invitation", {
        'user_id': user_id,
        'id_code': id_code,
        'phone': phone,
        'password': password

    }, function (a) {
        if (a.status == 1) {
            window.location.href = downUrl;
            /*if (a.muban == 0) {
                if (a.isPageJump == 1) {
                    if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
                        // 移动端操作
                    } else {
                        // PC端操作
                        window.location.href = a.pageJumpUrl;
                    }
                }
                creathtml0(function () {
                    //dynamicLoadCss("./down/style.css");
                    //document.title = a.appN;
                    $("#logoimg").attr("src", a.png);
                    $("#theI").attr("src", a.png);
                    $("#theN").text(a.appN);
                    $("#theM").text(a.appN);
                    $("#theM1").text(a.appN);
                    $("#comN").text(a.comName);
                    $("#comI").text(a.icp);
                    $("#comI1").text(a.icp);
                    //$("#phoneBtn").data('isJ',a.isPageJump).data('jU',a.pageJumpUrl);
                    if (a.isshowTran == 1) {
                        $("#second_page").hide();
                    } else {
                        $("#first_page").hide();
                        $("#second_page").show();
                        $("#appMs").text(a.appN);
                    }
                });
            }

            if (a.muban == 1) {
                creathtml1(function () {
                    //dynamicLoadCss("./down/style.css");
                    $("#logoimg").attr("src", a.png);
                    $("#theI").attr("src", a.png);
                    $("#theN").text(a.appN);
                    $("#theM").text(a.appN);
                    $("#comN").text(a.comName);
                    $("#comI").text(a.icp);
                    $("#phoneBtn").data('isJ', a.isPageJump).data('jU', a.pageJumpUrl);
                    if (a.isshowTran == 1) {
                        $("#second_page").hide();
                    } else {
                        $("#first_page").hide();
                        $("#appMs").text(a.appN);
                    }
                });
            }

            isCan = 1;
            var ua = navigator.userAgent.toLowerCase();
            if (/iphone|ipad|ipod/.test(ua)) {
                //alert("iphone");
                downUrl = a.iurl;
            } else if (/android/.test(ua)) {
                //alert("android");
                downUrl = a.aurl;
            }*/

        }
    }, "json")
}

function loadAni() {
    if (isIos) {
        $("#install_app").text("正在下载...");
        setTimeout(function () {
            $("#install_app").hide();
            $(".ios_downed").show()
        }, 3000)
    } else {
        $("#install_app").text("正在下载...")
    }
    return
}

function loadingFun() {
    if (intW >= 100) {
        if (isIos) {
            $(".btnAni").hide();
            $(".ios_downed").show()
        } else {
            tipsId.text("下载完成100%");
            propressId.click(function () {
                alert("请打开浏览器下载管理-安装APP")
            })
        }
    } else {
        intW += 3;
        if (intW > 100) {
            intW = 100
        }
        tipsId.text("已下载" + intW + "%");
        setTimeout(function () {
            if (intW == 43) {
                propressId.css("width", "100%")
            }
            loadingFun()
        }, 1000)
    }
}

function install_app() {
    if (isIos && navigator.userAgent.toLowerCase().indexOf("baidu") != -1) {
        alert("请用「Safari浏览器」打开本页面进行安装");
        return false
    }
    if (isCan != 1) {
        alert("当前平台不支持安装");
        return
    }
    if (downUrl_r != "") {
        location.href = downUrl_r;
        return
    }
    loadAni();
    downUrl_r = downUrl;
    location.href = downUrl_r
}

/*
!function () {
    init();
}();*/
