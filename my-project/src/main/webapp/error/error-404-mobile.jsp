<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no,minimal-ui" />
<meta content="telephone=no" name="format-detection" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent" />
<link rel="stylesheet" type="text/css" href="/resource/css/mobile/css.css" />
<link rel="stylesheet" type="text/css" href="/resource/css/mobile/common.css" />
<title>404-找不到页面</title>
<style>
body{
	background-color: #fff;
}
.imgError{
	width: 80%;
	height:300px;
	margin: auto;
	margin-top: 75px;
	text-align: center;
}
.errortips{
	text-align: center;
	color: #333333;
	font-size: 18px;
	margin-top: 50px;
}
.btnChoose{
	width: 80%;	
	margin:auto;
	margin-top: 20px;
	overflow: hidden;
}
.btnChoose p{
	display:inline-block;
	width: 50%;
	text-align: center;
}
.btnChoose p.backbtn1{
	float: left;
}
.btnChoose p.backbtn2{
	float: right;
}
.btnChoose p a{
	color: #f7941d;
	font-size: 16px;
}
span.iconback{
	display:inline-block;
	width:18px;
	height:15.5px;
	background: url(/resource/img/mobile/iconBack.png) no-repeat;
}
span.iconback.iconback2{
	background-position: 0 -15.5px;
}
</style>
</head>
<body>
	<div class="top">
		错误页面
	    <a href="javascript:history.go(-1)" class="new-a-back">
	    	<span>错误页面</span>
	    </a>
	</div>
	<div class="imgError">
		<img src="/resource/img/error/404.png">
	</div>	
	<p class="errortips">当前页面出现404错误，您可以选择</p>
	<div class="btnChoose">
		<p class="backbtn1">
			<span class="iconback iconback1"></span>
			<a href="javascript:history.go(-1);">返回上级页面</a>
		</p>
		<p class="backbtn2">
			<span class="iconback iconback2"></span>
			<a href="<%=basePath%>">返回网站首页</a>
		</p>		
	</div>  
</body>
</html>