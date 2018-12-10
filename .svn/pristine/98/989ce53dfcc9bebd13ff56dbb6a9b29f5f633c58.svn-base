<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

<script type="application/x-javascript"> 
    addEventListener("load", function() { 
    	setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<link rel="stylesheet" href="/resource/index/jQueryZcMoban/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.min.js" ></script>
</head>

<body>
<h1>登录表单</h1>
<div class="container w3layouts agileits">
  <div class="login w3layouts agileits">
    <h2>登 录</h2>
    <form action="/login-and-registration/login" method="post" onsubmit="return false">
      <input type="text" id="userName" Name="Userame" placeholder="用户名" required="true">
      <input type="password" id="password" Name="Password" placeholder="密码" required="true">
	    <!-- <ul class="tick w3layouts agileits">
	      <li>
	        <input type="checkbox" id="brand1" value="">
	        <label for="brand1"><span></span>记住我</label>
	      </li>
	    </ul> -->
	    <br><br><br><br><br><br>
        <div class="send-button w3layouts agileits">
        <input type="submit" value="登 录" id="login" style=""><br><br><!-- style="float:right;" -->
        <div style="margin-left:52%;">
            <a href="/login-and-register/forget-password" >记住密码?</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/login-and-register/to-register" >注册</a>
        </div>
      </form>
    </div>
     <div class="social-icons w3layouts agileits">
      <p>- 其他方式登录 -</p>
      <ul>
        <li class="qq"><a href="#"> <span class="icons w3layouts agileits"></span> <span class="text w3layouts agileits">QQ</span></a></li>
        <li class="weixin w3ls"><a href="#"> <span class="icons w3layouts"></span> <span class="text w3layouts agileits">微信</span></a></li>
        <li class="weibo aits"><a href="#"> <span class="icons agileits"></span> <span class="text w3layouts agileits">微博</span></a></li>
        <div class="clear"> </div>
      </ul>
    </div> 
    <div class="clear"></div>
  </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>
<div class="footer w3layouts agileits">
  <p>Copyright &copy; More Templates</p>
</div>
</body>
<script type="text/javascript">
$(function(){
	$("#login").click(function(){
		$.ajax({
			url: "/login-and-register/login",
			data:{"userName":$("#userName").val(),"password":$("#password").val()},
			type:"post",
			dataType:"json",
			//不能做异步，因为要先给转盘赋值，转盘才启动
			async: false,
			success: function(data){
				if(data.msg=="success"){
					window.location.href="/luckly-draw/play";
				}else{
					alert(data.msg);
				}
			}
		});
	})
});
	</script>
</html>