<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Mirrored from condorthemes.com/cleanzone/ui-modals.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:35:04 GMT -->
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
  <link rel="stylesheet" type="text/css" href="/resource/index/cleanzone/js/jquery.niftymodals/css/component.css" />
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

	
<div id="cl-wrapper">
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
                  <li class="active"><a href="ui-modals.html"><span class="label label-primary pull-right">New</span> Modals</a></li>
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
                  <li><a href="email-read.html">Email Detail</a></li>
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
          <button id="sidebar-collapse" class="btn btn-default" style=""><i style="color:#fff;" class="fa fa-angle-left"></i></button>
        </div>
			</div>
		</div>
	
	<div class="container-fluid" id="pcont">
		<div class="page-head">
			<h2>Modals</h2>
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li><a href="#">UI Elements</a></li>
			  <li class="active">Modals</li>
			</ol>
		</div>		
    <div class="cl-mcont">
      <div class="row">
      
        <div class="col-md-6 col-sm-6">
				
					<div class="block-flat">
						<div class="header">							
							<h3>Modal Alerts</h3>
						</div>
						<div class="content">
								<h4>Examples</h4>
								<p>This is just an example of tooltip in a paragrhap content writen by <a data-toggle="tooltip" href="#" data-original-title="Default tooltip">李大大大太阳</a>, as you can see it is a clean design with many <a data-toggle="tooltip" href="#" data-original-title="I am a Tooltip">Tooltip</a> options.</p>
								<div class="spacer2 text-center">
									<button data-toggle="modal" data-target="#mod-success" type="button" class="btn btn-success"><i class="fa fa-check"></i> Success</button>
									<button data-toggle="modal" data-target="#mod-info" type="button" class="btn btn-primary"><i class="fa fa-info-circle"></i> Information</button>
									<button data-toggle="modal" data-target="#mod-warning" type="button" class="btn btn-warning"><i class="fa fa-warning"></i> Warning</button>
									<button data-toggle="modal"  data-target="#mod-error" type="button" class="btn btn-danger"><i class="fa fa-times-circle"></i> Error</button>
								</div>

							  <!-- Modal -->
							  <div class="modal fade" id="mod-success" tabindex="-1" role="dialog">
								<div class="modal-dialog">
								  <div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									</div>
									<div class="modal-body">
										<div class="text-center">
											<div class="i-circle success"><i class="fa fa-check"></i></div>
											<h4>Awesome!</h4>
											<p>Changes has been saved successfully!</p>
										</div>
									</div>
									<div class="modal-footer">
									  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
									  <button type="button" class="btn btn-success" data-dismiss="modal">Proceed</button>
									</div>
								  </div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
							  </div><!-- /.modal -->

							  <!-- Modal -->
							  <div class="modal fade" id="mod-info" tabindex="-1" role="dialog">
								<div class="modal-dialog">
								  <div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									</div>
									<div class="modal-body">
										<div class="text-center">
											<div class="i-circle primary"><i class="fa fa-check"></i></div>
											<h4>Awesome!</h4>
											<p>Changes has been saved successfully!</p>
										</div>
									</div>
									<div class="modal-footer">
									  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
									  <button type="button" class="btn btn-primary" data-dismiss="modal">Proceed</button>
									</div>
								  </div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
							  </div><!-- /.modal -->
							  
							  <!-- Modal -->
							  <div class="modal fade" id="mod-warning" tabindex="-1" role="dialog">
								<div class="modal-dialog">
								  <div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									</div>
									<div class="modal-body">
										<div class="text-center">
											<div class="i-circle warning"><i class="fa fa-warning"></i></div>
											<h4>Warning!</h4>
											<p>Something is going wrong here...</p>
										</div>
									</div>
									<div class="modal-footer">
									  <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
									  <button type="button" class="btn btn-warning" data-dismiss="modal">Proceed</button>
									</div>
								  </div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
							  </div><!-- /.modal -->
							  
							  <!-- Modal -->
							  <div class="modal fade" id="mod-error" tabindex="-1" role="dialog">
                  <div class="modal-dialog">
                    <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                      <div class="text-center">
                        <div class="i-circle danger"><i class="fa fa-times"></i></div>
                        <h4>Oh god!</h4>
                        <p>You're by your own now, good luck!</p>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                      <button type="button" class="btn btn-danger" data-dismiss="modal">Proceed</button>
                    </div>
                    </div><!-- /.modal-content -->
                  </div><!-- /.modal-dialog -->
							  </div><!-- /.modal -->
							  
						</div>
					</div>
					
					<div class="block-flat">
						<div class="header">							
							<h3>Nifty Modals Effects</h3>
						</div>
						<div class="content">
								<h4>Examples</h4>
								<p>This is just an example of tooltip in a paragrhap content writen by <a data-toggle="tooltip" href="#" data-original-title="Default tooltip">李大大大太阳</a>, as you can see it is a clean design with many <a data-toggle="tooltip" href="#" data-original-title="I am a Tooltip">Tooltip</a> options.</p>
								<div class="spacer2 text-center">
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-scale"> Fade in & Scale</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-slideLeft"> Slide in Left</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-slideUp"> Slide in Up</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-fall"> Fall</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-sideFall"> Side Fall</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-stickyUp"> Sticky Up</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-flipH"> 3D Flip Horizontal</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-flipV"> 3D Flip Vertical</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-3dSign"> 3D Sign</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-superScaled"> Super Scaled</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-justModal"> Just Modal</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-3dRotateUp"> 3D Rotate Up</button>
									<button class="btn btn-primary btn-flat md-trigger" data-modal="md-3dRotateRight"> 3D Rotate Right</button>
								</div>

                <!-- Nifty Modal -->
                <div class="md-modal md-effect-1" id="md-scale">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-2" id="md-slideLeft">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-3" id="md-slideUp">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-5" id="md-fall">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-6" id="md-sideFall">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-7" id="md-stickyUp">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-8" id="md-flipH">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-9" id="md-flipV">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-10" id="md-3dSign">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-11" id="md-superScaled">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-12" id="md-justModal">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-14" id="md-3dRotateUp">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                <!-- Nifty Modal -->
                <div class="md-modal md-effect-15" id="md-3dRotateRight">
                    <div class="md-content">
                      <div class="modal-header">
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                
                <div class="md-overlay"></div>
						</div>
					</div>


        </div>
      
      
        <div class="col-md-6 col-sm-6">
			
					<div class="block-flat">
						<div class="header">							
							<h3>Form Modals</h3>
						</div>
						<div class="content">
								<h4>Examples</h4>
								<p>This is just an example of tooltip in a paragrhap content writen by <a data-toggle="tooltip" href="#" data-original-title="Default tooltip">李大大大太阳</a>, as you can see it is a clean design with many <a data-toggle="tooltip" href="#" data-original-title="I am a Tooltip">Tooltip</a> options.</p>
								<div class="spacer2 text-center">
									<button class="btn btn-primary btn-flat md-trigger" data-modal="form-primary">Basic Form</button>
									<button class="btn btn-success btn-flat md-trigger" data-modal="form-green">Dark Form</button>
								</div>
                <!-- Nifty Modal -->
                <div class="md-modal colored-header custom-width md-effect-9" id="form-primary">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Form Modal</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body form">
                        <div class="form-group">
                          <label>Email address</label> <input type="email" class="form-control" placeholder="username@example.com">
                        </div>
                        <div class="form-group">
                          <label>Your name</label> <input type="name" class="form-control" placeholder="John Doe">
                        </div>
                        <div class="row">
                          <div class="form-group col-md-12 no-margin">
                            <label>Your birth date</label>
                          </div>
                        </div>
                        <div class="row no-margin-y">
                          <div class="form-group col-md-3 col-sm-3  col-xs-3 no-margin">
                            <input type="name" class="form-control" placeholder="DD">
                          </div>
                          <div class="form-group col-md-3 col-sm-3  col-xs-3 no-margin">
                            <input type="name" class="form-control" placeholder="MM">
                          </div>
                          <div class="form-group col-md-3 col-sm-3  col-xs-3 no-margin">
                            <input type="name" class="form-control" placeholder="YYYY">
                          </div>
                        </div>
                        <p class="spacer2"><input type="checkbox" name="c[]" checked />  Send me notifications about new products and services.</p>
                        
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>                
                
                <!-- Nifty Modal -->
                <div class="md-modal md-dark custom-width md-effect-9" id="form-green">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Form Modal</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body form">
                        <div class="text-center">
                          <h5>Ready to publish your site to the web? Awesome! Use Twitter, Facebook, or your email to save your site. You can always make edits to your site later.</h5>
                        </div>

                        <div class="form-group spacer2">
                          <label>Email address</label> <input type="email" class="form-control" placeholder="username@example.com">
                        </div>
                        <div class="form-group">
                          <label>Your name</label> <input type="name" class="form-control" placeholder="John Doe">
                        </div>
                        
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
 
                <div class="md-overlay"></div>
							  
						</div>
					</div>
					
			
					<div class="block-flat">
						<div class="header">							
							<h3>Colored Header Modals</h3>
						</div>
						<div class="content">
								<h4>Examples</h4>
								<p>This is just an example of tooltip in a paragrhap content writen by <a data-toggle="tooltip" href="#" data-original-title="Default tooltip">李大大大太阳</a>, as you can see it is a clean design with many <a data-toggle="tooltip" href="#" data-original-title="I am a Tooltip">Tooltip</a> options.</p>
								<div class="spacer2 text-center">
									<button class="btn btn-primary btn-flat md-trigger" data-modal="colored-primary">Primary</button>
									<button class="btn btn-success btn-flat md-trigger" data-modal="colored-success">Green</button>
									<button class="btn btn-info btn-flat md-trigger" data-modal="colored-info">Blue</button>
									<button class="btn btn-warning btn-flat md-trigger" data-modal="colored-warning">Orange</button>
									<button class="btn btn-danger btn-flat md-trigger" data-modal="colored-danger">Red</button>
								</div>
                <!-- Nifty Modal -->
                <div class="md-modal colored-header md-effect-10" id="colored-primary">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Custom Header Color</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle primary"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
 
                <!-- Nifty Modal -->
                <div class="md-modal colored-header success md-effect-10" id="colored-success">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Custom Header Color</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle success"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-success btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
 
                <!-- Nifty Modal -->
                <div class="md-modal colored-header info md-effect-10" id="colored-info">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Custom Header Color</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle info"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-info btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
 
                <!-- Nifty Modal -->
                <div class="md-modal colored-header warning md-effect-10" id="colored-warning">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Custom Header Color</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle warning"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-warning btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
 
                <!-- Nifty Modal -->
                <div class="md-modal colored-header danger md-effect-10" id="colored-danger">
                    <div class="md-content">
                      <div class="modal-header">
                        <h3>Custom Header Color</h3>
                        <button type="button" class="close md-close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      </div>
                      <div class="modal-body">
                        <div class="text-center">
                          <div class="i-circle danger"><i class="fa fa-check"></i></div>
                          <h4>Awesome!</h4>
                          <p>Changes has been saved successfully!</p>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat md-close" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-danger btn-flat md-close" data-dismiss="modal">Proceed</button>
                      </div>
                    </div>
                </div>
                
                <div class="md-overlay"></div>
							  
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
  <script type="text/javascript" src="/resource/index/cleanzone/js/jquery.ui/jquery-ui.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.nestable/jquery.nestable.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/bootstrap.switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/bootstrap.datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.select2/select2.min.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/bootstrap.slider/js/bootstrap-slider.js"></script>
	<script type="text/javascript" src="/resource/index/cleanzone/js/jquery.gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="/resource/index/cleanzone/js/jquery.niftymodals/js/jquery.modalEffects.js"></script>   
  <script type="text/javascript">
    $(document).ready(function(){
      //initialize the javascript
      App.init();
      $('.md-trigger').modalEffects();
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

<!-- Mirrored from condorthemes.com/cleanzone/ui-modals.html by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 31 Mar 2014 14:35:04 GMT -->
</html>