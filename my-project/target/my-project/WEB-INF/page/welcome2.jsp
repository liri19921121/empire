<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<!-- 旋转banner图 -->
	<link rel="stylesheet" type="text/css" href="/resource/index/poster/css/style.css">
</head>
<body>
    <div class='poster-main'>
        <img src="/resource/index/poster/images/1.jpg" width="100%">
        <img src="/resource/index/poster/images/2.jpg" width="100%">
        <img src="/resource/index/poster/images/3.jpg" width="100%">
        <img src="/resource/index/poster/images/4.jpg" width="100%">
        <img src="/resource/index/poster/images/5.jpg" width="100%">
        <img src="/resource/index/poster/images/6.jpg" width="100%">
        <img src="/resource/index/poster/images/7.jpg" width="100%">
    </div>
	
	<script src="/resource/index/poster/js/jquery-1.10.2.js"></script>
    <script src="/resource/index/poster/js/poster.js"></script>
    <script>
    jQuery(document).ready(function($) {
        var setting = {
            "width":1200,
            "height":234,
        };
        $(".poster-main").poster(setting);
    });
    </script>
</body>
</html>