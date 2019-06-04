$(function() {
    var id = location.search.split('=')[1];
    $.ajax({
        type: "get",
        url: "../lib/getItem.php",
        data: {
            id: id
        },
        dataType: "json",

        success: function(response) {
            // console.log(response);
            var pic = JSON.parse(response.pic);
            var template = `'
                    <div class="img-box">
                        <img src="${pic[0].one}">
                    </div>
                    <div class="content-box">
                        <div class="headline">${response.title}</div>
                        <div class="money">
                            <div class="sales-price">
                                <span>售卖价:</span>
                                <span>¥</span>
                                <span>${response.price}</span>
                            </div>
                            <div class="sales-price1">
                                <lable>数量:</lable>
                                <input type="number" value="1" min="1" max="1" id="num">
                            </div>
                            <div class="sales-price2">
                                <span>发布地:</span>
                                <span>新余市</span>
                                <span>渝水区</span>
                            </div>
                            <div class="label">
                                <span>几乎全新</span>
                                <span>无发票</span>
                            </div>
                        </div>

                    <div class="seller">
                        <div class="seller-img"><img src="../img/maimai.png"></div>
                        <div class="personal">
                            <div class="head-count clearfix">
                                <img src="../img/avatar@2x.png">
                                <span class="user">用户:叶××</span>
                                <span class="autonym"><i></i>已实名</span>
                                <span class="credit "><i></i>信用优秀</span>
                                <div class="hour">24小时之内来过</div>
                            </div>
                        </div>
                        <div class="shopping">
                            <input type="button" class="shopping-car1" value="加入购物车"></input>
                            <span class="shopping-car2"><a href="../html/Shopping-Cart.html">我的购物车</a></span>
                        </div>
                    </div>
                </div>
                    `;
            var templates = `'
                <div class="particulars-img">
                    <img src="../img/title.8dfb8a8.png">
                </div>
                <div>
                    <p> ${response.details}</p>
                    <p> <img src="${pic[0].one}"></p>
                </div>
                    `;
            $('.details-box').append(template);
            $('.left-particulars').append(templates);
            $('body').find('.shopping-car1').on('click', function() {
                addShopCar(response.id, response.price, $('#num').val());
            });
        }
    });

    function addShopCar(id, price, num) {
        var shop = cookie.get('shop'); //从cookie获取shop

        var product = {
            "id": id,
            "price": price,
            "num": num
        };

        if (shop) {
            shop = JSON.parse(shop); // cookie中如果有数据 这个数据是json字符串 转成对象
            if (shop.some(elm => elm.id == id)) {
                shop.forEach(function(elm, i) {
                    elm.id == id ? elm.num = num : null;
                });
            } else {
                shop.push(product);
            }
            cookie.set('shop', JSON.stringify(shop), 1);
        } else {
            shop = [];
            shop.push(product);
            cookie.set('shop', JSON.stringify(shop), 1);
        }
    }
})