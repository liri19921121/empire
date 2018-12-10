<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>赢金币，博大奖</title>
<link rel="stylesheet" href="/resource/css/luckDraw/reset.css" />
<link rel="stylesheet" href="/resource/css/luckDraw/activity.css" />
<script type="text/javascript" src="/resource/js/luckDraw/activity.js" ></script>
<script type="text/javascript" src="/resource/js/jquery-3.2.1.min.js" ></script>
<script type="text/javascript">
      //防止转盘在转动的时候点击下注等操作
      var token_play = 0;
      var userId = ${userId};
$(function(){
	$("#chongzhi").click(function(){
		parent.location.reload();
	});
	//金币加一
	$("#add").click(function(){
		if(token_play == 10){
		return;
		}
		    var inputNum = $('#inputNum').val();
		    var number = ${number};
			var temp = 1;
			var inputNumAdd = inputNum*1  + temp*1;
			if(inputNumAdd <= number){
				$('#inputNum').val(inputNumAdd);
			}else{
				//您的金币不足
				$("#overlay").show();
		  		$(".slide4").show();
		  		$(".slide4 p").click(function(){
	  			$("#overlay").hide();
	  			$(".slide4").hide();
	  	    	})
			}
			
		});
	//金币减一
	$("#cut").click(function(){
		if(token_play == 10){
			return;
			}
		var inputNum = $('#inputNum').val();
		var tempCut = 1;
		var inputNumAdd = inputNum*1  - tempCut*1;
		if(inputNumAdd >=1){
			var inputNum = $('#inputNum').val(inputNumAdd);
		}else{
			alert("起投金币必须大于等于一个！");
		}
		
	});
	 //一键下注
	$("#play_Once").click(function(){
		if(token_play == 10){
			return;
			}
		var realGoldCountNumber = ${number};
	    	var inputNum = $('#inputNum').val();
			var temp = inputNum - realGoldCountNumber;
			if(temp > 0){
				//您的金币不足
				$("#overlay").show();
		  		$(".slide4").show();
		  		$(".slide4 p").click(function(){
	  			$("#overlay").hide();
	  			$(".slide4").hide();
	  		})
			}else if(temp <= 0){
				$("#overlay").show();
				$(".slide5").show();
				$(".slide5 a").click(function(){
					$("#overlay").hide();
					$(".slide5").hide();
				    })
	     }
	});
	
	 //一键下注，是否下注
	$("#yes").click(function(){
		token_play = 10;
		var realGoldCountNumber = ${number};
		var inputNum = $('#inputNum').val();
		if(realGoldCountNumber >= 1){
			var inputNum = $('#inputNum').val(realGoldCountNumber);
			$.ajax({
				url: "/luckly-draw/getRandomNumber",
				data:{"investNumber":realGoldCountNumber,"userId":userId},
				type:"post",
				dataType:"json",
				//不能做异步，因为要先给转盘赋值，转盘才启动
				async: false,
				success: function(data){
					$('#Number').val(data);
				}
			});
		}else{
			//您的金币不足
			$("#overlay").show();
	  		$(".slide4").show();
	  		$(".slide4 p").click(function(){
  			$("#overlay").hide();
  			$(".slide4").hide();
  		})
		}
	}); 
	
	//下注
	$("#begin").click(function(){
		if(token_play == 10){
			return;
			}
		var realGoldCountNumber = ${number};
		var inputNum = $('#inputNum').val();
		//正则校验为正整数
		var g = /^[0-9]*[1-9][0-9]*$/;
		var tes = g.test(inputNum);
		if(!isNaN(inputNum)&&inputNum>0&&tes){ 
			var temp = inputNum - realGoldCountNumber;
			if(temp > 0){
				//您的金币不足
				$("#overlay").show();
		  		$(".slide4").show();
		  		$(".slide4 p").click(function(){
	  			$("#overlay").hide();
	  			$(".slide4").hide();
	  		})}else if(inputNum < 1){
	  		//金币不能少于十个
				$("#overlay").show();
	      		$(".slide3").show();
	      		$(".slide3 a").click(function(){
      			$("#overlay").hide();
      			$(".slide3").hide();
      			parent.location.reload();
	      		})
	  		}else{
		$("#overlay").show();
		$(".slide5_2").show();
		$(".slide5_2 a").click(function(){
			$("#overlay").hide();
			$(".slide5_2").hide();
		})
	  }
	    }else{
	    	$("#overlay").show();
      		$(".slide12").show();
      		$(".slide12 a").click(function(){
      			$("#overlay").hide();
      			$(".slide12").hide();
      			parent.location.reload();
      		})
		  }
	});
	//下注是否确认下注
	$("#yes_2").click(function(){
		token_play = 10;
		var realGoldCountNumber = ${number};
		var inputNum = $('#inputNum').val();
		var temp = inputNum - realGoldCountNumber;
		//金币赋值
			if(inputNum >= 1 && temp <= 0){
			var inputNum = $('#inputNum').val();
			$.ajax({
				url: "/luckly-draw/getRandomNumber",
				data:{"investNumber":inputNum,"userId":userId},
				type:"post",
				dataType:"text",
				//不能做异步，因为要先给转盘赋值，转盘才启动
				async: false,
				success: function(data){
					$('#Number').val(data);
				}
			});
		}else{
			//您的金币不足
			$("#overlay").show();
	  		$(".slide4").show();
	  		$(".slide4 p").click(function(){
  			$("#overlay").hide();
  			$(".slide4").hide();
  		})
		}
	});
	
	 //再来一次
	$("#again").click(function(){
		parent.location.reload();
	});
});



</script>
<style>
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
    }
    input[type="number"]{
        -moz-appearance: textfield;
    }
</style>
		
</head>
	<body>
	<input name="Number" id="Number" value="4" type="hidden"/>
	<h3 style="text-align: center;padding-top: 60px">欢迎${name},你当前的可用金币为：${number}</h3>
							<div class="leftLot" id="lottery" style="margin:50px auto;">
								<div style="height:24px"></div>
								<table style="margin:auto;" cellspacing="4">
									<tr>
										<td class="lottery-unit lottery-unit-0">
											<img src="/resource/img/luckDraw/Color-biocks-1.jpg" />
											<div class="mask"></div>
										</td>
										<td class="lottery-unit lottery-unit-1">
											<img src="/resource/img/luckDraw/Color-biocks-2.jpg" />
											<div class="mask"></div>
										</td>
										<td class="lottery-unit lottery-unit-2">
											<img src="/resource/img/luckDraw/Color-biocks-3.jpg" />
											<div class="mask"></div>
										</td>
									</tr>
									<tr>
										<td class="lottery-unit lottery-unit-9">
											<img src="/resource/img/luckDraw/Color-biocks-4.jpg" />
											<div class="mask"></div>
										</td>
												<td id="play">
											<div>
												<p>
													<span class="cut" id="cut"></span>
													<input type="number" id="inputNum" value="1" class="inputNum"/>
													<span class="add" id="add"></span>
												</p>
												<a href="javascript:void(0);"  id="begin">下注</a>
											</div>	
										</td>
										<td class="lottery-unit lottery-unit-3">
											<img src="/resource/img/luckDraw/Color-biocks-5.jpg" />
											<div class="mask"></div>
										</td>
									</tr>
									<tr>
										<td class="lottery-unit lottery-unit-8">
											<img src="/resource/img/luckDraw/Color-biocks-6.jpg" />
											<div class="mask"></div>
										</td>
										<td id="playOnce"><a href="javascript:void(0);" id="play_Once">一键下注</a></td>
										
										
										<td class="lottery-unit lottery-unit-4">
											<img src="/resource/img/luckDraw/Color-biocks-7.jpg" />
											<div class="mask"></div>
										</td>
									</tr>
									<tr>
										<td class="lottery-unit lottery-unit-7">
											<img src="/resource/img/luckDraw/Color-biocks-8.jpg" />
											<div class="mask"></div>
										</td>
										<td class="lottery-unit lottery-unit-6">
											<img src="/resource/img/luckDraw/Color-biocks-9.jpg" />
											<div class="mask"></div>
										</td>
										<td class="lottery-unit lottery-unit-5">
											<img src="/resource/img/luckDraw/Color-biocks-10.jpg" />
											<div class="mask"></div>
										</td>
									</tr>
								</table>
							</div>
			
			<h3 style="text-align: center;">说明：10金币==1rmb,计算值取整</h3>
			<!--弹窗部分-->
			<div id="overlay"></div>
			<div class="slide slide1">
				<p></p>
				<span>1880</span>
				<a href="javascript:void(0);">立即查看</a>	
			</div>
			<div class="slide slide2">
				<p></p>
				<a href="/visitor/to-login">立即登录</a>	
			</div>
			<div class="slide slide3">
				<a href="javascript:void(0);" id="iKnow">我知道了</a>	
			</div>
			<div class="slide slide4">
				<p></p>
				<a href="javascript:void(0);" id="chongzhi">找太阳爸爸充值</a>	
			</div>
			<div class="slide slide5">
				<a href="javascript:void(0);" class="yes" id="yes">是</a>
				<a href="javascript:void(0);" class="no">否</a>
			</div>
			<div class="slide slide5_2">
				<a href="javascript:void(0);" class="yes" id="yes_2">是</a>
				<a href="javascript:void(0);" class="no">否</a>
			</div>
			<div class="slide slide6">
				<div class="golden" id="multiplication">×100</div>
				<a href="javascript:void(0);">确定</a>
			</div>
			<div class="slide slide7">
				<div class="golden" id="division">÷100</div>
				<a href="javascript:void(0);">我知道了</a>
			</div>
			<div class="slide slide8">
				<a href="javascript:void(0);" id="again" >再来一次</a>
			</div>
			<div class="slide slide9">
				<a href="javascript:void(0);">我知道了</a>
			</div>
			<!--弹窗：对不起活动已结束-->
			<div class="slide slide10">
				<a href="javascript:void(0);">我知道了</a>	
			</div>
			<!--弹窗：活动未开始-->
			<div class="slide slide11">
				<a href="javascript:void(0);">我知道了</a>	
			</div>
			<!--弹窗：输入不正确-->
			<div class="slide slide12">
				<a href="javascript:void(0);">我知道了</a>	
			</div>
		
	</body>
</html>