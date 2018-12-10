<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>500-出现错误了</title>
<link rel='stylesheet' type='text/css' href="/resource/css/tongyong.css" />
<link rel='stylesheet' type='text/css' href="/resource/css/error.css" />
<script type="text/javascript" src="/resource/js/jquery-3.2.1.min.js"></script>
</head>
<body id="error" class="fiveH" onload=showTime()>
    <div class="info">
        <strong>500</strong>
        <p>你似乎没有找资源哦···</p>
        <span><i id="second">5</i>秒后跳转到首页，如没有跳转，请<a href="<%=basePath%>">点击这里</a></span>
    </div>
<script>
$(document).ready(function () {
	if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent))
	{
		window.location.href="<%=basePath%>error/error-500-mobile.jsp";
	}
	
    //初始化宽度、高度
    $("body").width($(window).width());
    $("body").height($(window).height());
    //当文档窗口发生改变时 触发
    $(window).resize(function () {
        $("body").width($(window).width());
        $("body").height($(window).height());
    });
})
</script>
</body>

<script type="text/javascript">
//设定倒数秒数  
var t = 6;  
//显示倒数秒数  
function showTime(){  
    t -= 1;  
    document.getElementById('second').innerHTML= t;  
    if(t==0){  
        location.href='<%=basePath%>';  
    }  
    //每秒执行一次,showTime()  
    setTimeout("showTime()",1000);  
}  
</script>
</html>