<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Mirrored from condorthemes.com/cleanzone/email-read.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:27 GMT -->
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
	  <script src="../../assets/js/html5shiv.js"></script>
	  <script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.nanoscroller/nanoscroller.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.easypiechart/jquery.easy-pie-chart.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/bootstrap.switch/bootstrap-switch.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/bootstrap.datetimepicker/css/bootstrap-datetimepicker.min.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.select2/select2.css" />
	<link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/bootstrap.slider/css/slider.css" />
  <link href="/resource/index/cleanzone/js/jquery.icheck/skins/square/blue.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="/resource/index/cleanzone/css/style.css" rel="stylesheet" />	

</head>

<body>

  <!-- Fixed navbar -->
  <div id="head-nav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="fa fa-gear"></span>
        </button>
        <a class="navbar-brand" href="#"><span>Clean Zone</span></a>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
      <li class="dropdown-submenu"><a href="#">Sub menu</a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          </ul>
      </li>              
      </ul>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Large menu <b class="caret"></b></a>
      <ul class="dropdown-menu col-menu-2">
        <li class="col-sm-6 no-padding">
          <ul>
          <li class="dropdown-header"><i class="fa fa-group"></i>Users</li>
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="dropdown-header"><i class="fa fa-gear"></i>Config</li>
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li> 
          </ul>
        </li>
        <li  class="col-sm-6 no-padding">
          <ul>
          <li class="dropdown-header"><i class="fa fa-legal"></i>Sales</li>
          <li><a href="#">New sale</a></li>
          <li><a href="#">Register a product</a></li>
          <li><a href="#">Register a client</a></li> 
          <li><a href="#">Month sales</a></li>
          <li><a href="#">Delivered orders</a></li>
          </ul>
        </li>
      </ul>
          </li>
        </ul>
    <ul class="nav navbar-nav navbar-right user-nav">
      <li class="dropdown profile_menu">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img alt="Avatar" src="/resource/index/cleanzone/images/avatar2.jpg" />李大大大太阳 <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">My Account</a></li>
          <li><a href="#">Profile</a></li>
          <li><a href="#">Messages</a></li>
          <li class="divider"></li>
          <li><a href="#">Sign Out</a></li>
        </ul>
      </li>
    </ul>			
    <ul class="nav navbar-nav navbar-right not-nav">
      <li class="button dropdown">
        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class=" fa fa-comments"></i></a>
        <ul class="dropdown-menu messages">
          <li>
            <div class="nano nscroller">
              <div class="content">
                <ul>
                  <li>
                    <a href="#">
                      <img src="/resource/index/cleanzone/images/avatar2.jpg" alt="avatar" /><span class="date pull-right">13 Sept.</span> <span class="name">Daniel</span> I'm following you, and I want your money! 
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="/resource/index/cleanzone/images/avatar_50.jpg" alt="avatar" /><span class="date pull-right">20 Oct.</span><span class="name">Adam</span> is now following you 
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="/resource/index/cleanzone/images/avatar4_50.jpg" alt="avatar" /><span class="date pull-right">2 Nov.</span><span class="name">Michael</span> is now following you 
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <img src="/resource/index/cleanzone/images/avatar3_50.jpg" alt="avatar" /><span class="date pull-right">2 Nov.</span><span class="name">Lucy</span> is now following you 
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <ul class="foot"><li><a href="#">View all messages </a></li></ul>           
          </li>
        </ul>
      </li>
      <li class="button dropdown">
        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-globe"></i><span class="bubble">2</span></a>
        <ul class="dropdown-menu">
          <li>
            <div class="nano nscroller">
              <div class="content">
                <ul>
                  <li><a href="#"><i class="fa fa-cloud-upload info"></i><b>Daniel</b> is now following you <span class="date">2 minutes ago.</span></a></li>
                  <li><a href="#"><i class="fa fa-male success"></i> <b>Michael</b> is now following you <span class="date">15 minutes ago.</span></a></li>
                  <li><a href="#"><i class="fa fa-bug warning"></i> <b>Mia</b> commented on post <span class="date">30 minutes ago.</span></a></li>
                  <li><a href="#"><i class="fa fa-credit-card danger"></i> <b>Andrew</b> killed someone <span class="date">1 hour ago.</span></a></li>
                </ul>
              </div>
            </div>
            <ul class="foot"><li><a href="#">View all activity </a></li></ul>           
          </li>
        </ul>
      </li>
      <li class="button"><a href="javascript:;" class="speech-button"><i class="fa fa-microphone"></i></a></li>				
    </ul>

      </div><!--/.nav-collapse -->
    </div>
  </div>

	
<div class="fixed-menu sb-collapsed" id="cl-wrapper">
		<div class="cl-sidebar">
			<div class="cl-toggle"><i class="fa fa-bars"></i></div>
			<div class="cl-navblock">
        <div class="menu-space">
          <div class="content">
            <div class="side-user">
              <div class="avatar"><img src="/resource/index/cleanzone/images/avatar1_50.jpg" alt="Avatar" /></div>
              <div class="info">
                <a href="#">李大大大太阳</a>
                <img src="/resource/index/cleanzone/images/state_online.png" alt="Status" /> <span>Online</span>
              </div>
            </div>
            <ul class="cl-vnavigation">
              <li><a href="#"><i class="fa fa-home"></i><span>仪表盘</span></a>
                <ul class="sub-menu">
                  <li><a href="index-2.html">Version 1</a></li>
                  <li><a href="dashboard2.html"><span class="label label-primary pull-right">New</span> Version 2</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-smile-o"></i><span>UI Elements</span></a>
                <ul class="sub-menu">
                  <li><a href="ui-elements.html">General</a></li>
                  <li><a href="ui-buttons.html">Buttons</a></li>
                  <li><a href="ui-modals.html"><span class="label label-primary pull-right">New</span> Modals</a></li>
                  <li><a href="ui-notifications.html"><span class="label label-primary pull-right">New</span> Notifications</a></li>
                  <li><a href="ui-icons.html">Icons</a></li>
                  <li><a href="ui-grid.html">Grid</a></li>
                  <li><a href="ui-tabs-accordions.html">Tabs & Acordions</a></li>
                  <li><a href="ui-nestable-lists.html">Nestable Lists</a></li>
                  <li><a href="ui-treeview.html">Tree View</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-list-alt"></i><span>Forms</span></a>
                <ul class="sub-menu">
                  <li><a href="form-elements.html">Components</a></li>
                  <li><a href="form-validation.html">Validation</a></li>
                  <li><a href="form-wizard.html">Wizard</a></li>
                  <li><a href="form-masks.html">Input Masks</a></li>
                  <li><a href="form-multiselect.html"><span class="label label-primary pull-right">New</span>Multi Select</a></li>
                  <li><a href="form-wysiwyg.html"><span class="label label-primary pull-right">New</span>WYSIWYG Editor</a></li>
                  <li><a href="form-upload.html"><span class="label label-primary pull-right">New</span>Multi Upload</a></li>
                </ul>
              </li>
              <li><a href="#"><i class="fa fa-table"></i><span>Tables</span></a>
                <ul class="sub-menu">
                  <li><a href="tables-general.html">General</a></li>
                  <li><a href="tables-datatables.html"><span class="label label-primary pull-right">New</span>Data Tables</a></li>
                </ul>
              </li>              
              <li><a href="#"><i class="fa fa-map-marker nav-icon"></i><span>Maps</span></a>
                <ul class="sub-menu">
                  <li><a href="maps.html">Google Maps</a></li>
                  <li><a href="vector-maps.html"><span class="label label-primary pull-right">New</span>Vector Maps</a></li>
                </ul>
              </li>             
              <li><a href="#"><i class="fa fa-envelope nav-icon"></i><span>Email</span></a>
                <ul class="sub-menu">
                  <li><a href="email-inbox.html">Inbox</a></li>
                  <li class="active"><a href="email-read.html">Email Detail</a></li>
                  <li><a href="email-compose.html"><span class="label label-primary pull-right">New</span>Email Compose</a></li>
                </ul>
              </li>
              <li><a href="typography.html"><i class="fa fa-text-height"></i><span>Typography</span></a></li>
              <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i><span>Charts</span></a></li>
              <li><a href="#"><i class="fa fa-file"></i><span>Pages</span></a>
                <ul class="sub-menu">
                  <li><a href="pages-blank.html">Blank Page</a></li>
                  <li><a href="pages-blank-header.html">Blank Page Header</a></li>
                  <li><a href="pages-blank-aside.html">Blank Page Aside</a></li>
                  <li><a href="pages-login.html">Login</a></li>
                  <li><a href="pages-404.html">404 Page</a></li>
                  <li><a href="pages-500.html">500 Page</a></li>
                  <li><a href="pages-sign-up.html"><span class="label label-primary pull-right">New</span>Sign Up</a></li>
                  <li><a href="pages-forgot-password.html"><span class="label label-primary pull-right">New</span>Forgot Password</a></li>
                  <li><a href="pages-profile.html"><span class="label label-primary pull-right">New</span>Profile</a></li>
                  <li><a href="pages-search.html"><span class="label label-primary pull-right">New</span>Search</a></li>
                  <li><a href="pages-calendar.html"><span class="label label-primary pull-right">New</span>Calendar</a></li>
                  <li><a href="pages-code-editor.html"><span class="label label-primary pull-right">New</span>Code Editor</a></li>
                  <li><a href="pages-gallery.html">Gallery</a></li>
                  <li><a href="pages-timeline.html">Timeline</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class="text-right collapse-button" style="padding:7px 9px;">
          <input type="text" class="form-control search" placeholder="Search..." />
          <button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;" class="fa fa-angle-right"></i></button>
        </div>
			</div>
		</div>
		<div class="page-aside email">
      <div class="fixed nano nscroller">
        <div class="content">
          <div class="header">
            <button class="navbar-toggle" data-target=".mail-nav" data-toggle="collapse" type="button">
              <span class="fa fa-chevron-down"></span>
            </button>          
            <h2 class="page-title">Mail Service</h2>
            <p class="description">Service description</p>
          </div>        
          <div class="mail-nav collapse">
            <ul class="nav nav-pills nav-stacked ">
              <li class="active"><a href="#"><span class="label label-primary pull-right">6</span><i class="fa fa-inbox"></i> Inbox</a></li>
              <li><a href="#"><i class="fa fa-envelope"></i> Sent Mail</a></li>
              <li><a href="#"><i class="fa fa-suitcase"></i> Important</a></li>
              <li><a href="#"><span class="label label-default pull-right">3</span><i class="fa fa-file-o"></i> Drafts</a></li>
              <li><a href="#"><i class="fa fa-star-o"></i> Tags</a></li>
              <li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li>
            </ul>
            
            <p class="title">Labels</p>
            <ul class="nav nav-pills nav-stacked ">
              <li><a href="#"><span class="label label1 pull-right">0</span> Inbox</a></li>
              <li><a href="#"><span class="label label2 pull-right">8</span>Sent Mail</a></li>
              <li><a href="#"><span class="label label3 pull-right">4</span>Important</a></li>
            </ul>
            <div class="compose">
              <a class="btn btn-flat btn-primary">Compose Email</a>
            </div>
          </div>
        </div>
      </div>
		</div>		
	<div class="container-fluid" id="pcont">
    <div class="message">
      <div class="head">
        <h3>John Doe <span><a href="#"><i class="fa fa-inbox"></i></a><a href="#"><i class="fa fa-reply"></i></a></span></h3>
        <h4>Development files<span><a href="#"><i class="fa fa-star"></i></a> Jan 9, <b>10:40 AM</b></span></h4>
      </div>
      <div class="mail">
        <p>Hello,<br/><br/>
        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
        ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
        aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem
        ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam
        aliquam quaerat voluptatem.<br/><br/>
        Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?<br/><br/>
        Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. 
        Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam
        nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis 
        faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales
        sagittis magna. </p>
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
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.icheck/icheck.min.js"></script>
   
  <script type="text/javascript">
    $(document).ready(function(){
      //initialize the javascript
      App.init();
      $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue checkbox',
        radioClass: 'icheckbox_square-blue'
      });
      
      $("#check-all").on('ifChanged',function(){
        var checkboxes = $(".mails").find(':checkbox');
        if($(this).is(':checked')) {
            checkboxes.iCheck('check');
        } else {
            checkboxes.iCheck('uncheck');
        }
      });
      
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

<!-- Mirrored from condorthemes.com/cleanzone/email-read.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:37:27 GMT -->
</html>
