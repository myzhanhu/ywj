$(function() {
    $('#slider').sliders({
        imgArr: ['../img/a1.png', '../img/a2.png', '../img/a3.png'],
        autoLoop: true,
        current: 1,
        time: 3000,
        vWidth: 990
    })
});
$(function() {
    $.ajax({
        type: "get",
        url: "../lib/getproduct.php",
        dataType: "json",
        success: function(response) {
            var prolist = $('.item>ul');
            var template = '';
            var j = 0;
            response.forEach(function(elm, i) {
                var pic = JSON.parse(elm.pic);
                template = `
                    <li>
                        <span class="sp-img">
                        <a href="../html/commodity.html?id=${elm.id}">
                            <img class="lazy" data-original="${pic[0].one}">
                        </a>
                    </span>
                        <span class="sp-name"><a href="../html/commodity.html"><img data-original="../img/zhuanmai.png">
                            ${elm.title}
                        </a></span>
                        <span class="p-introduce">${elm.details}</span>
                        <span class="jiage"><i>¥</i>${elm.price}</span>
                    </li>
                    `;
                prolist.eq(parseInt(j / 3)).append(template);
                j++;

                $(function() {
                    $("img").lazyload({
                        threshold: 0,
                        effect: "fadeIn",
                    });
                });
            });

        }
    });
});