<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resource/jquery.min.js" ></script>
</head>
<body>
<script>
    function onBridgeReady(){
        WeixinJSBridge.invoke(
                'getBrandWCPayRequest', {
                    "appId":"${payResponse.appid}",     //公众号名称，由商户传入
                    "timeStamp":"${payResponse.timeStamp}",         //时间戳，自1970年以来的秒数
                    "nonceStr":"${payResponse.nonce_str}", //随机串
                    "package":"${payResponse.packAge}",
                    "signType":"${payResponse.signType}",         //微信签名方式：
                    "paySign":"${payResponse.sign}" //微信签名
                },
                function(res){
                	// 使用以下方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。
                	/* get_brand_wcpay_request:ok	支付成功*/
                	/* get_brand_wcpay_request:cancel	支付过程中用户取消*/
                	/* get_brand_wcpay_request:fail	支付失败 */
                    if(res.err_msg == "get_brand_wcpay_request:ok" ) {
                    	location.href = "${returnUrl}";
                    }else{
                    	alert("妈卖批支付失败");
                    }
                    
                }
        );
    }
    if (typeof WeixinJSBridge == "undefined"){
        if( document.addEventListener ){
            document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
        }else if (document.attachEvent){
            document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
            document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
        }
    }else{
        onBridgeReady();
    }
</script>
</body>
</html>