<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线生成二维码</title>
<script type="text/javascript" src="/resource/jquery.min.js"></script>
<script type="text/javascript" src="/resource/jquery.qrcode.min.js"></script>
</head>
<body>
	在线生成的二维码为：<br>
	<div id="qrcode"></div>
	<script type="text/javascript">
	jQuery("#qrcode").qrcode("想生成的内容，网站需要加http：//");
</script>
</body>
</html>