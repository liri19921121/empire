<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="/resource/jquery.min.js"></script>
<style>
    .logo{
        position: absolute;
        /*background-position: 0 -96px;*/
        width: 25px;
        height: 25px;
        font-size: 0;
        background-image: url(/resource/assets/logo.jpg);
    }
</style>
<title>Insert title here</title>
</head>
<body>
          <!-- <div style="width:100%;text-align:center;margin-top:100px;"> -->
           <form class="form-signin" method="post" action="/img/doLogin">
                <h2 class="form-signin-heading ">请登录</h2>
                <input type="hidden" name="location" id="location">
                <label >用户名</label>
                <input type="text" id="username" name="username" placeholder="用户名" />
                <label >密码</label>
                <input type="password" id="inputPassword" name="password"  placeholder="密码" />
                <div><label>选中图片中的"<span id="tip">${tip}</span>"</label></div>
                <div style="position:relative" id="png">
                    <img src="/resource/assets/tmp/${name}" alt="" id="images">
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit" id="submitForm">登录</button>
            </form>
            <h2>${msg}</h2>
            <!-- </div> -->
</body>
<script>
    var index=0;
    $(function(){
        $("#png").click(function(event){
            event = event || window.event;
            var x = event.offsetX || event.originalEvent.layerX;
            var y = event.offsetY || event.originalEvent.layerY;
            var div=$("<div></div>");
            div.addClass("logo");
            div.css("left",(x-12)+"px");
            div.css("top",(y-12)+"px");
            div.attr("index",index++);
            div.click(function(){
                var nowindex=div.attr("index");
                $('.logo[index='+nowindex+']').remove();
            });
            /**
             * 阻止边框的影响
             * 处理不完美
             */
            if(x>13&&y>13&&x<400&&y<200){
//                var value=$("#location").val()+x+","+y+";"
//                $("#location").val(value);
                $("#png").append(div);
            }

        });
        $("#submitForm").click(function(){
            var childerns=$(".logo");
            var value="";
            for(var i=0;i<childerns.length;i++){
                value+=$(childerns[i]).css("left")+",";
                value+=$(childerns[i]).css("top")+";";
            }
            value=value.replace(/px/g,"");
            $("#location").val(value);
            $(".form-signin").submit();
        });
    });
</script>
</html>