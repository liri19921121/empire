<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>I LOVE YOU</title>
    <link type="text/css" rel="stylesheet" href="/resource/index/love/renxi/default.css">
    <script type="text/javascript" src="/resource/index/love/renxi/jquery.min.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/jscex.min.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/jscex-parser.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/jscex-jit.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/jscex-builderbase.min.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/jscex-async.min.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/jscex-async-powerpack.min.js"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/functions.js" charset="utf-8"></script>
    <script type="text/javascript" src="/resource/index/love/renxi/love.js" charset="utf-8"></script>
    <style type="text/css">
        <!--

        .STYLE1 {
            color: #666666
        }

        -->

    </style>
    <embed src="/resource/index/love/renxi.mp3" hidden=true autostart=true loop=true>
    </embed>
</head>

<body>
<div id="main">

    <div id="error">本页面采用HTML5编辑，目前您的浏览器无法显示，请换成谷歌(<a
            href="http://www.google.cn/chrome/intl/zh-CN/landing_chrome.html?hl=zh-CN&brand=CHMI">Chrome</a>)或者火狐(<a
            href="http://firefox.com.cn/download/">Firefox</a>)浏览器，或者其他游览器的最新版本。
    </div>

    <div id="wrap">

        <div id="text">
            <div id="code">
                <font color="#FF0000">
                    <span class="say">我是个俗气至顶的人，见山是山，</span><br>
                    <span class="say">见海是海，见花便是花。</span><br>
                    <span class="say">唯独见了你，云海开始翻涌，</span><br>
                    <span class="say">江潮开始澎湃，昆虫的小触须挠着全世界的痒。</span><br>
                    <span class="say">从前，我见山是大地峻冷的脊背，</span><br>
                    <span class="say">见水是星象的眼泪，见雪是世纪的白象。</span><br>
                    <span class="say">直到见了你，我踏过土地，捧起泉水，</span><br>
                    <span class="say">接过下落的雪花，万物都于我有了生灵。</span><br>
                    <span class="say">你无需开口，就让我从虚空下坠，落地开花。</span><br>
                </font></p>
                <img src="/resource/index/love/love.jpg" width="35%" height="80%" style="margin-left: 17%">
            </div>


        </div>

        <div id="clock-box">

            <span class="STYLE1"></span><font color="#33CC00">亲爱的嘉敏，我喜欢你</font>

            <span class="STYLE1">已经是……</span>
            <button style="float:right;margin-right:-300px;margin-top:65px;clo" id="addMessage">添加寄语</button>
            <button style="float:right;margin-right:-300px;margin-top:95px;clo"
                    onclick="window.location.href='/welcome/lovePictureWall'">爱情相册
            </button>
            <div id="clock"></div>

        </div>
        <canvas id="canvas" width="1100" height="680"></canvas>
        <span id="message" style="display: none;margin-top: 20px">寄语：<input id="mes" style="width: 600px;"/>&nbsp;&nbsp;署名：<input
                id="name" style="width: 50px;"/>&nbsp;&nbsp;<button id="but">提交</button></span>
    </div>
    <div class="box" id="demo" style="overflow:auto">
        <ul>
            <c:forEach items="${messageList}" var="message" varStatus="status">
                <li><h4>${message.message}&nbsp;&nbsp;
                    <span style="margin-left: 50px;">${message.time}</span>&nbsp;&nbsp;&nbsp;<span
                            style="margin-left: 20px;">from:${message.writer}</span></h4><br/></li>
            </c:forEach>
        </ul>
    </div>
</div>
</div>


<style type="text/css">
    .box {
        line-height: 25px;
        overflow: hidden;
        text-align: left;
        margin-left: 10%;
        margin-top: 60px;
        border: 1px solid black;
        width: 80%;
        height: 300px;
        margin-bottom: 30px;
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
    }

    .box ul {
        margin: 0;
        padding: 0
    }

    .box li {
        height: 25px;
        line-height: 25px;
        font-size: 12px;
        text-align: center;
        list-style-type: none;
    }
</style>


<script>
    $(function () {
        $('#addMessage').click(function () {
            $("#message").css("display", "block");
        });
        $('#but').click(function () {
            var mes = $("#mes").val();
            var name = $("#name").val();
            $.ajax({
                url: "/welcome/love-add-message",
                data: {"message": mes, "name": name},
                type: "post",
                dataType: "json",
                async: false,
                success: function (data) {
                    if (data.msg = "success") {
                        alert("添加成功");
                        parent.location.reload();
                    } else {
                        alert("添加失败，请重新添加！");
                    }
                }
            });
        });
    });

    (function () {

        var canvas = $('#canvas');


        if (!canvas[0].getContext) {

            $("#error").show();

            return false;
        }


        var width = canvas.width();

        var height = canvas.height();

        canvas.attr("width", width);

        canvas.attr("height", height);

        var opts = {

            seed: {

                x: width / 2 - 20,

                color: "rgb(190, 26, 37)",

                scale: 2

            },

            branch: [

                [535, 680, 570, 250, 500, 200, 30, 100, [

                    [540, 500, 455, 417, 340, 400, 13, 100, [

                        [450, 435, 434, 430, 394, 395, 2, 40]

                    ]],

                    [550, 445, 600, 356, 680, 345, 12, 100, [

                        [578, 400, 648, 409, 661, 426, 3, 80]

                    ]],

                    [539, 281, 537, 248, 534, 217, 3, 40],

                    [546, 397, 413, 247, 328, 244, 9, 80, [

                        [427, 286, 383, 253, 371, 205, 2, 40],

                        [498, 345, 435, 315, 395, 330, 4, 60]

                    ]],

                    [546, 357, 608, 252, 678, 221, 6, 100, [

                        [590, 293, 646, 277, 648, 271, 2, 80]

                    ]]

                ]]

            ],

            bloom: {

                num: 700,

                width: 1080,

                height: 650,

            },

            footer: {

                width: 1200,

                height: 5,

                speed: 10,

            }

        }


        var tree = new Tree(canvas[0], width, height, opts);

        var seed = tree.seed;

        var foot = tree.footer;

        var hold = 1;


        canvas.click(function (e) {

            var offset = canvas.offset(), x, y;

            x = e.pageX - offset.left;

            y = e.pageY - offset.top;

            if (seed.hover(x, y)) {

                hold = 0;

                canvas.unbind("click");

                canvas.unbind("mousemove");

                canvas.removeClass('hand');

            }

        }).mousemove(function (e) {

            var offset = canvas.offset(), x, y;

            x = e.pageX - offset.left;

            y = e.pageY - offset.top;

            canvas.toggleClass('hand', seed.hover(x, y));

        });


        var seedAnimate = eval(Jscex.compile("async", function () {

            seed.draw();

            while (hold) {

                $await(Jscex.Async.sleep(10));

            }

            while (seed.canScale()) {

                seed.scale(0.95);

                $await(Jscex.Async.sleep(10));

            }

            while (seed.canMove()) {

                seed.move(0, 2);

                foot.draw();

                $await(Jscex.Async.sleep(10));

            }

        }));


        var growAnimate = eval(Jscex.compile("async", function () {

            do {

                tree.grow();

                $await(Jscex.Async.sleep(10));

            } while (tree.canGrow());

        }));


        var flowAnimate = eval(Jscex.compile("async", function () {

            do {

                tree.flower(2);

                $await(Jscex.Async.sleep(10));

            } while (tree.canFlower());

        }));


        var moveAnimate = eval(Jscex.compile("async", function () {

            tree.snapshot("p1", 240, 0, 610, 680);

            while (tree.move("p1", 500, 0)) {

                foot.draw();

                $await(Jscex.Async.sleep(10));

            }

            foot.draw();

            tree.snapshot("p2", 500, 0, 610, 680);


            // 会有闪烁不得意这样做, (＞﹏＜)

            canvas.parent().css("background", "url(" + tree.toDataURL('image/png') + ")");

            canvas.css("background", "#ffe");

            $await(Jscex.Async.sleep(300));

            canvas.css("background", "none");

        }));


        var jumpAnimate = eval(Jscex.compile("async", function () {

            var ctx = tree.ctx;

            while (true) {

                tree.ctx.clearRect(0, 0, width, height);

                tree.jump();

                foot.draw();

                $await(Jscex.Async.sleep(25));
            }
        }));
        var textAnimate = eval(Jscex.compile("async", function () {
            var together = new Date("January 07,2018 23:20:00");
            $("#code").show().typewriter();
            $("#clock-box").fadeIn(500);
            while (true) {
                timeElapse(together);
                $await(Jscex.Async.sleep(1000));
            }
        }));
        var runAsync = eval(Jscex.compile("async", function () {
            $await(seedAnimate());
            $await(growAnimate());
            $await(flowAnimate());
            $await(moveAnimate());
            textAnimate().start();
            $await(jumpAnimate());
        }));
        runAsync().start();

    })();

</script>


</body>
</html>