<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test WebSocket</title>
    <script type="text/javascript" src="/resource/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //服务器地址
            var url = "ws://localhost:8080/websocket";
            var ws = "";
            var message = {"id": "", "msg": "", "form": "", "to": ""};

            function connection() {
                //创建WebSocket对象
                ws = new WebSocket(url);
                console.log("connection.......");
                //收到服务器消息，e.data提取
                ws.onmessage = function (e) {
                    var json = eval('(' + e.data.toString() + ')');
                    showMessage(json.from + ":" + json.msg);
                }
                //已经关闭连接
                ws.onclose = function () {
                    showMessage("close");
                }
                //产生异常
                ws.onerror = function (e) {
                    showMessage("error");
                }
                //已经建立连接
                ws.onopen = function () {
                    showMessage("链接成功")
                    message.id = $(".identity").val();
                    message.msg = "newUser";
                    console.log(JSON.stringify(message));
                    //向服务器发送消息
                    ws.send(JSON.stringify(message));
                    message.msg = "";
                }
                //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
                window.onbeforeunload = function(){
                    ws.close();
                }

            }


            $(".start-conn-btn").click(function () {
                connection();
            });
            $(".send-btn").click(function () {//send message
                message.to = $(".to-user").val();
                message.msg = $(".msg-context").val();
                $(".msg-context").val("");
                ws.send(JSON.stringify(message));
                showMessage("我:" + message.msg);
                message.msg = "";

            });

            function showMessage(msg) {
                $(".show-message").append(msg + "<br/>");

            }


        });

    </script>
</head>
<body>
<div class="container">
    <div calss="item">
        <span>ID:</span>
        <input type="text" class="identity">
        <button class="start-conn-btn">链接</button>
        <span>toUser:</span>
        <input type="text" class="to-user">
    </div>
    <div class="show-message">

    </div>
    <div calss="item">
        <span>内容:</span>
        <textarea class="msg-context"></textarea>
    </div>
    <div>
        <button class="send-btn">send</button>
    </div>
</div>
</body>

</html>
