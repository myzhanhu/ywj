$(function() {
    var shop = cookie.get('shop');
    if (shop) {
        shop = JSON.parse(shop);
        // console.log(shop.map(elm => elm.id).join())
        var idList = shop.map(elm => elm.id).join();
        // console.log(idList);
        $.ajax({
            type: "get",
            url: "../lib/shop.php",
            data: {
                "idList": idList
            },
            dataType: "json",
            success: function(response) {

                // console.log(response);
                var template = "";
                response.forEach(function(elm) {
                    // console.log(elm);
                    var pic = JSON.parse(elm.pic);
                    var arr = shop.filter((val, i) => {
                        return val.id === elm.id;
                    });
                    template = `
                                <div class="dhz">
                                <div class="inp"><input type="checkbox" class="${elm.id}" id="p-${elm.id}"></div>
                                <div class="jd-img">
                                    <span class="sp-img">
                                <a href="#">
                                    <img src="${pic[0].one}">
                                </a>
                            </span>
                                </div>
                                <div class="kk">
                                    <div class="jd-con">
                                        <span class="sp-name"><a href="#"><img src="../img/zhuanmai.png">${elm.title}</a></span>
                                        <span class="p-introduce">
                                        ${elm.details}</span>
                                    </div>
                                    <div class="jd-dj"><span class="jiage"><i>¥</i>${elm.price}</span></div>
                                    <div class="jd-sl">
                                        <input class="text" disabled placeholder="1">
                                    </div>
                                    <div class="sc">
                                        <p id="${elm.id}">删除</p>
                                    </div>
                                </div>
                            </div>`;

                    $('.ranks').append(template);
                    $('#' + elm.id).on('click', function() {
                        var id = elm.id;
                        var b = JSON.parse(cookie.get('shop')).filter(function(elm, i) {
                            return elm.id != id
                        });
                        var c = JSON.stringify(b);
                        cookie.set("shop", c, 1);
                        $(this)[0].parentNode.parentNode.parentNode.remove();
                    });
                    $("." + elm.id).on('change', function() {
                        var zongjia = $('#zongjia').html();
                        if ($("." + elm.id).prop("checked")) {
                            zongjia = zongjia - 0 + arr[0].num * elm.price;
                        } else {
                            zongjia = zongjia - arr[0].num * elm.price;
                        }
                        $('#zongjia').html(zongjia);
                    })
                });
            }
        });
    }
});