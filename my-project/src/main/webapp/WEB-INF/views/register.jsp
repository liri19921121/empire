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
</head>

<body>
<h1>注册表单</h1>
<div class="container w3layouts agileits">
  <div class="login w3layouts agileits">
    <h2>注 册</h2>
    <form action="/login-and-registration/login" method="post" onsubmit="return false">
      <input type="text" Name="Userame" placeholder="用户名" required="true">
      <input type="password" Name="Password" placeholder="密码" required="true">
	  <input type="password" Name="Password" placeholder="确认密码" required="true">
	  <input type="password" Name="Password" placeholder="密保问题" required="true">
	  <input type="password" Name="Password" placeholder="答案" required="true">
	    <!-- <ul class="tick w3layouts agileits">
	      <li>
	        <input type="checkbox" id="brand1" value="">
	        <label for="brand1"><span></span>记住我</label>
	      </li>
	    </ul> -->
	    <br><br><br><br><br><br>
        <div class="send-button w3layouts agileits">
        <input type="submit" value="注 册"  style=""><br><br><!-- style="float:right;" -->
        <div style="margin-left:57%;">
            <a href="/login-and-register/to-login" >已有账号？登录</a>
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

</html>