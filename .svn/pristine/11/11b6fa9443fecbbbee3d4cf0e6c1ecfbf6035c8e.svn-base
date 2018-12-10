<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" src="/resource/index/cleanzone/images/favicon.png">

  <title>房屋租赁管理系统</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,200,100' rel='stylesheet' type='text/css'>

  <!-- Bootstrap core CSS -->
  <link href="/resource/index/cleanzone/js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.gritter/css/jquery.gritter.css" />

	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
  <link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.nanoscroller/nanoscroller.css" />
  <link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.easypiechart/jquery.easy-pie-chart.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/bootstrap.switch/bootstrap-switch.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.select2/select2.css" />
  <link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/bootstrap.slider/css/slider.css" />
  <!-- Custom styles for this template -->
  <link href="/resource/index/cleanzone/css/style.css" rel="stylesheet" />	
	
  </head>

  <body>

  <!-- Fixed navbar -->
   <!-- 头部 -->
        <jsp:include page="/WEB-INF/admin/head.jsp"/>

		<div id="cl-wrapper">
          <!-- 左侧边栏 -->
          <jsp:include page="/WEB-INF/admin/left.jsp"/>
		
		<div class="container-fluid" id="pcont">
			<div class="page-head">
				<h2>Charts</h2>
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li><a href="#">Charts</a></li>
				  <li class="active">General</li>
				</ol>
			</div>		
		<div class="cl-mcont">
			<div class="row">
				<div class="col-sm-6 col-md-6">
					<div class="block-flat">
						<div class="header">
							<h3>Line Chart</h3>
						</div>
						<div class="content">
							<div id="site_statistics" style="height: 180px; padding: 0px; position: relative;"></div>
						</div>
					</div>
				
					<div class="block-flat">
						<div class="header">
							<h3>Pie Chart</h3>
						</div>
						<div class="content overflow-hidden">
							<div id="piec" style="height: 300px; padding: 0px; position: relative;">
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-sm-6 col-md-6">

					<div class="block-flat">
						<div class="header">							
							<h3>Bar Chart</h3>
						</div>
						<div class="content">
							<div id="site_statistics2" style="height: 180px; padding: 0px; position: relative;"></div>							
						</div>
					</div>

					<div class="block-flat">
						<div class="header">							
							<h3>Full-Width Chart</h3>
						</div>
						<div class="content full-width">
							<div id="chart3-legend" class="legend-container"></div>
							<div id="chart3" style="height: 260px;"></div>							
						</div>
					</div>
				</div>			
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="block-flat">
						<div class="header">							
							<h3>Live Chart</h3>
						</div>
						<div class="content">
							<div id="chart4" style="height: 230px; padding: 0px; position: relative;"></div>							
						</div>
					</div>				
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-4">
					<div class="block-flat">
						<div class="header">							
							<h3>Easy Pie Chart</h3>
						</div>
						<div class="content text-center">
							<div class="epie-chart" data-barcolor="#4D90FD" data-trackcolor="#F3F3F3" data-percent="45"><span>0%</span></div>
						</div>
					</div>					
				</div>
				<div class="col-sm-4">
					<div class="block-flat">
						<div class="header">							
							<h3>Easy Pie Chart</h3>
						</div>
						<div class="content text-center">
							<div class="epie-chart" data-barcolor="#FD6A5E" data-trackcolor="#F3F3F3" data-percent="60"><span>0%</span></div>
						</div>
					</div>					
				</div>
				<div class="col-sm-4">
					<div class="block-flat">
						<div class="header">							
							<h3>Easy Pie Chart</h3>
						</div>
						<div class="content text-center">
							<div class="epie-chart" data-barcolor="#B450B2" data-trackcolor="#F3F3F3" data-percent="75"><span>0%</span></div>
						</div>
					</div>					
				</div>
			</div>
			
		 </div>
		</div> 
		
	</div>

  <script src="/resource/index/cleanzone/js/jquery.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.sparkline/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.easypiechart/jquery.easy-pie-chart.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/behaviour/general.js"></script>
  <script src="/resource/index/cleanzone/js/jquery.ui/jquery-ui.js" type="text/javascript"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.nestable/jquery.nestable.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/bootstrap.switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
  <script src="/resource/index/cleanzone/js/jquery.select2/select2.min.js" type="text/javascript"></script>
  <script src="/resource/index/cleanzone/js/bootstrap.slider/js/bootstrap-slider.js" type="text/javascript"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.gritter/js/jquery.gritter.js"></script>

    <script type="text/javascript">
      $(document).ready(function(){
        //initialize the javascript
        App.init();
        App.charts();
      });
    </script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
      <script src="/resource/index/cleanzone/js/behaviour/voice-commands.js"></script>
  <script src="/resource/index/cleanzone/js/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.flot/jquery.flot.labels.js"></script>
  </body>

</html>