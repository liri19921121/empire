<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>站长简介</title>

    <!-- Basic Page Needs
    ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="nurealam sabbir">

    <!-- Mobile Specific Metas 
  ================================================== -->
    <meta content="width=device-width,initial-scale=1" name="viewport">

    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="/resource/index/jQueryJlmoban/images/favicon.png">
    <link rel="apple-touch-icon" href="/resource/index/jQueryJlmoban/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/resource/index/jQueryJlmoban/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/resource/index/jQueryJlmoban/images/apple-touch-icon-114x114.png">

    <!--fonts
    ====================================================-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700%7cOswald:400,700" rel="stylesheet">
    <!--stylesheets
    ====================================================-->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css"> 
    <link rel="stylesheet" type="text/css" href="/resource/index/jQueryJlmoban/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/resource/index/jQueryJlmoban/css/simpletextrotator.css"> 
    
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]--> 
    <script src="/resource/index/jQueryJlmoban/js/jquery.min.js"></script> <!-- JQUERY -->
</head>
<body>

    <!--FRONT PAGE/ SPLASH SCREEN SECTION-->

    <div class="loading-screen"></div>

    <div id="frontpage"> 
        <div class="shadow-img"></div> 
        <img src="/resource/index/jQueryJlmoban/images/front-image.jpg" class="front-img img-responsive" alt ="Front-image"><!--IMAGE FOR FRONT SCREEN-->
        <h1>Li <span class="invert">Dada</span></h1><!--PROFILE NAME-->
        <h3 class="invert" style="margin-top: -10px; margin-bottom: 10px;">Java <span class="rotate">Developer, Designer, Artist</span></h3> <!--SUBTITLE IN PROFILE-->
        <div class="frontclick"><img src="/resource/index/jQueryJlmoban/images/click.png" alt="" class="img-responsive"><span class="pulse"></span></div>
    </div>
    <!--FRONT PAGE/ SPLASH SCREEN SECTION ENDS-->
    <!--container-->
    <div class="container">
        <div id="content" class="row hidden">
            <div class="col-sm-4">
                <!--namecard-->
                <div id="namecard" class="namecard">
                    <div class="shadow-img"></div>
                    <h1 class="maintitle">Li <span class="invert">Dada</span></h1><!--PROFILE NAME-->
                    <h3 class="invert sub-maintitle">Java 
                        <span class="rotate">Developer, Designer, Artist</span><!--SUBTITLE AFTET NAME-->
                    </h3>
                    <img id="profile-img" class="profile-img transparent" src="/resource/index/jQueryJlmoban/images/profile-thum.png" alt="profile-image"/><!--PROFILE IMAGE-->
                </div><!--/#namecard-->
                <!--menu-->
                <div id="menu-container">
                    <!--PAGE MENU-->
                    <ul class="nav-menu no-padding">
                        <li class="nav-btn selected" title="Home" data-page="home">
                            <div class="hover-background"></div>
                            <span>Home</span><i class="fa fa-user fa-fw"></i>
                        </li>
                        <li class="nav-btn" id="resume-btn" title="Resume"  data-page="resume">
                            <div class="hover-background"></div>
                            <span>Resume</span><i class="fa fa-file-text fa-fw"></i>
                        </li>
                       <li class="nav-btn folio-btn" data-filter="*" title="Portfolio" data-page="portfolio">
                            <div class="hover-background"></div>
                            <span>Portfolio</span><i class="fa fa-suitcase fa-fw"></i>
                        </li>
                        <li class="nav-btn" title="Contact" id="contact-link" data-page="contact">
                            <div class="hover-background"></div>
                            <span>Contact</span><i class="fa fa-paper-plane fa-fw"></i>
                        </li>
                    </ul><!--/.nav-menu __PAGE MENU ENDS-->

                    <!--SOCIAL NAV MENU-->
                    <div class="social-menu-container">
                        <ul class="social-menu no-padding">                     
                            <li><a href="javascript:;"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="javascript:;" target="_blank"><i class="fa fa-leaf"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-pinterest-p"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div><!--/.social-menu-container-->
                </div><!--#menu-container-->
            </div>
            <div class="col-sm-8 page-segment">
                <ul class="page-container no-padding">
                    <!--HOME/PROFILE PAGE-->
                    <li id="home" class="selected">
                        <div class="title-container hidden">
                            <div class="shadow-img"></div> 
                            <h2 class="rotate-out">Welcome To <span class="invert">My Profile</span></h2><!--HOME TITLE-->                          
                        </div>
                        <div class="description hidden">
                            <div class="watermark-home"></div> 

                            <div class="fade-text transparent">
                                <!--DESCRIPTION ON HOME-->
                                <div class="strong-text">Hello, I am <span>Li Dada</span></div>
                                <div class="focus-text"><span>Java Developer & </span><span>Java Designer</span></div>
                                <p class="large-paragraph">Welcome to my research space.</p>         
                                <!--DESCRIPTION ON HOME ENDS-->
                            </div>

                            <!--ALL PERSONAL DETAILS-->
                            <h3 class="personal-info-title title">Personal Info</h3>
                            <ul class="personal-info">
                                <li class="rotate-out rotated"><label>Name</label><span>李太阳</span></li>                     
                                <li class="rotate-out rotated"><label>Address</label><span>广东深圳</span></li>
                                <li class="rotate-out rotated"><label>Email</label><span>liri_1024@163.com</span></li>  
                                <li class="rotate-out rotated"><label>Phone</label><span>+8618682012295</span></li>
                            </ul><!--/ul.personal-info-->
                        </div>
                    </li><!--/#home-->

                    <!--RESUME PAGE-->
                    <li id="resume" class="hidden">
                        <div class="title-container">
                            <div class="shadow-img"></div>
                            <h2 class="rotate-out rotated"><span class="invert">Resume Of</span> Li Dada</h2> <!--RESUME TITLE-->
                        </div>
                        <div class="description">

                            <div class='tabs tabs_animate'>
                                <!--RESUME TAB LISTS-->
                                <ul class='horizontal no-padding'>
                                    <li><a href="#tab-1" class="icon-bg icon-skills"><div>Skills</div></a></li>
                                    <li><a href="#tab-2" class="icon-bg icon-education"><div>Educations</div></a></li>
                                    <li><a href="#tab-3" class="icon-bg icon-employment"><div>Employment</div></a></li>
                                </ul><!--RESUME TAB LISTS ENDS-->

                                <!--RESUME FIRST TAB/SKILL TAB DETAILS-->
                                <div id='tab-1'>
                                    <h3 class="title">OUR SKILLS</h3><!--SKILLS WITH BAR DISPLAY-->
                                    <ul class="skills-list no-padding">
                                        <li class="row">
                                            <div class="col-xs-2"><div class="fw-mid">Java</div></div>
                                            <div class="col-xs-9">
                                                <div class="bar">
                                                    <div class="percentage" id="bar1" style="width: 80%;"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="row">
                                            <div class="col-xs-2"><div class="fw-mid">Javascript</div></div>
                                            <div class="col-xs-9">
                                                <div class="bar">
                                                    <div class="percentage" id="bar2" style="width: 60%;"></div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="row">
                                            <div class="col-xs-2"><div class="fw-mid">CSS</div></div>
                                            <div class="col-xs-9">
                                                <div class="bar">
                                                    <div class="percentage" id="bar3" style="width: 50%;"></div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul><!--SKILLS WITH BAR DISPLAY ENDS-->

                                    <!--SKILLS WITH CIRCLE DISPLAY-->
                                    <div class="circle-skill-container">
                                        <h3 class="title">OTHER SKILLS</h3>
                                        <div class="row">
                                            <div class="col-xs-4 center-align">
                                                <div class="circle-bar" id="line-container1">
                                                    <div class="progressbar-text" id="progress-text1">0</div>
                                                </div>
                                                <h5>Linux</h5>
                                            </div>
                                            <div class="col-xs-4 center-align">
                                                <div class="circle-bar" id="line-container2">
                                                    <div class="progressbar-text" id="progress-text2">0</div>
                                                </div>
                                                <h5>Visio</h5>
                                            </div>
                                            <div class="col-xs-4 center-align">
                                                <div class="circle-bar" id="line-container3">
                                                    <div class="progressbar-text" id="progress-text3">0</div>
                                                </div>
                                                <h5>After effect</h5>
                                            </div>
                                        </div>
                                    </div><!--SKILLS WITH CIRCLE DISPLAY ENDS-->
                                </div><!--RESUME FIRST TAB/SKILL TAB DETAILS ENDS-->
                                
                                <!--RESUME SECOND TAB/EDUCATION TAB DETAILS-->
                                <div id='tab-2'>
                                    <h3 class="title">EDUCATIONS</h3>
                                    <ul class="education-class">
                                        <li>
                                            <!--EDUCATION LIST ITEM-->
                                            <h4 class="title">MSc in Computer Sciene<i class="fa fa-sort-desc pull-right"></i></h4>
                                            <div class="list-content">
                                                <h5 class="title">Consectetur adipiscing <span class="list-year">(2014 - 2005)</span></h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit. Vivamus sit</p><!--EDUCATION LIST DETAILS-->
                                            </div>
                                        </li>
                                        <li>
                                            <!--EDUCATION LIST ITEM-->
                                            <h4 class="title">Grad At Computer Engineering<i class="fa fa-sort-desc pull-right"></i></h4>
                                            <div class="list-content current">
                                                <h5 class="title">Consectetur adipiscing <span class="list-year">(2014 - 2005)</span></h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit. Vivamus sit</p><!--EDUCATION LIST DETAILS-->
                                            </div>
                                        </li>
                                        <li>
                                            <!--EDUCATION LIST ITEM-->
                                            <h4 class="title">College<i class="fa fa-sort-desc pull-right"></i></h4>
                                            <div class="list-content">
                                                <h5 class="title">Consectetur adipiscing <span class="list-year">(2014 - 2005)</span></h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit. Vivamus sit</p><!--EDUCATION LIST DETAILS-->
                                            </div>
                                        </li>
                                        <li>
                                            <!--EDUCATION LIST ITEM-->
                                            <h4 class="title">Schools<i class="fa fa-sort-desc pull-right"></i></h4>
                                            <div class="list-content">
                                                <h5 class="title">Consectetur adipiscing <span class="list-year">(2014 - 2005)</span></h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit. Vivamus sit</p><!--EDUCATION LIST DETAILS-->
                                            </div>
                                        </li>
                                    </ul>
                                </div><!--RESUME SECOND TAB/EDUCATION TAB DETAILS ENDS-->
                                <!--RESUME THIRD TAB/EMPLYMENT TAB DETAILS ENDS-->
                                <div id='tab-3'>
                                    <h3 class="title">EMPLOYMENT</h3>
                                    <ul class="employment-class tab-cont">
                                        <li>
                                            <!--EMPLOYMENT INDIVIDUAL LIST-->
                                            <h4>Manager <span class="year">2014 - 2005</span></h4>
                                            <h5>Consectetur adipiscing</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit.</p><!--EMPLOYMENT LIST DETAILS-->
                                        </li>
                                        <li>
                                            <!--EMPLOYMENT INDIVIDUAL LIST-->
                                            <h4>Manager <span class="year">2014 - 2005</span></h4>
                                            <h5>Consectetur adipiscing</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit.</p><!--EMPLOYMENT LIST DETAILS-->
                                        </li>
                                        <li>
                                            <!--EMPLOYMENT INDIVIDUAL LIST-->
                                            <h4>Manager <span class="year">2014 - 2005</span></h4>
                                            <h5>Consectetur adipiscing</h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing Vivamus sit Vivamus sit. Vivamus sit.. consectetur adipiscing Vivamus sit.</p><!--EMPLOYMENT LIST DETAILS-->
                                        </li>
                                    </ul>
                                </div><!--RESUME THIRD TAB/EMPLYMENT TAB DETAILS ENDS-->
                            </div>
                        </div>
                    </li>
                    <!--/#resume-->
                    <!--PORTFOLIO PAGE-->
                    <li id="portfolio" class="hidden">
                        <div class="title-container">
                            <div class="shadow-img"></div>
                            <h2 class="rotate-out rotated">Portfolio</h2> <!--PORTFOLIO TITLE-->                         
                        </div>

                        <!--PORTFOLIO CATEGORY LIST-->    
                        <div class="abs-child">
                            <ul class="button-group filters-button-group">
                                <li class="button is-checked" data-filter="*">Show All</li>
                                <li class="button" data-filter=".photography">Photography</li>
                                <li class="button" data-filter=".commercial">Commercial</li>
                                <li class="button" data-filter=".potrait">Potrait</li>
                            </ul><!--/.button-group filters-button-group-->
                        </div>
                        
                        <div class ="sec-porfolio description"> 
                            <div class="row">
                                <!--PORTFOLIO ITEM CONTAINER-->
                                <div class="folio-container">
                                    <ul class="folio-item"><!--PORTFOLIO INDIVIDAUAL ITEM-->
                                        <li class="view view-first photography">  
                                            <img src="/resource/index/jQueryJlmoban/images/folio/logs.jpg" alt="logs" /><!--PORTFOLIO INDIVIDAUAL ITEM IMAGE--> 
                                            <div class="mask">  
                                                 <h2>woodsman</h2> <!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                               
                                                <!-- Button trigger modal -->
                                                <a role="button" class="info" data-toggle="modal" data-target="#myModal">Read More</a><!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'-->
                                             </div>  
                                        </li>  
                                        <li class="view view-second commercial"><!--PORTFOLIO INDIVIDAUAL ITEM-->
                                          <img src="/resource/index/jQueryJlmoban/images/folio/book.jpg" alt="book" /><!--PORTFOLIO INDIVIDAUAL ITEM IMAGE--> 
                                            <div class="mask"></div>
                                            <div class="content">
                                                <h2>Hover Style #2</h2><!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                                  
                                                <a role="button" class="info" data-toggle="modal" data-target="#myModal2">Read More</a><!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'-->
                                            </div>
                                        </li>
                                        <li class="view view-tenth photography"> <!--PORTFOLIO INDIVIDAUAL ITEM--> 
                                             <img src="/resource/index/jQueryJlmoban/images/folio/beach.jpg" alt="beach" /> <!--PORTFOLIO INDIVIDAUAL ITEM IMAGE-->  
                                             <div class="mask">  
                                                 <h2>New York</h2><!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                                    
                                                 <a role="button" class="info" data-toggle="modal" data-target="#myModal5">Read More</a>  <!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'-->
                                             </div>  
                                        </li>                         
                                        <li class="view view-second commercial"><!--PORTFOLIO INDIVIDAUAL ITEM-->
                                          <img src="/resource/index/jQueryJlmoban/images/folio/guy.jpg" alt="guy" /><!--PORTFOLIO INDIVIDAUAL ITEM IMAGE--> 
                                            <div class="mask"></div>
                                            <div class="content">
                                                <h2>Image Name</h2><!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                                 
                                                <a role="button" class="info" data-toggle="modal" data-target="#myModal3">Read More</a><!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'-->
                                            </div>
                                        </li> 
                                                            
                                        <li class="view view-first potrait"><!--PORTFOLIO INDIVIDAUAL ITEM-->  
                                             <img src="/resource/index/jQueryJlmoban/images/folio/illustration.jpg" alt="illustration" /><!--PORTFOLIO INDIVIDAUAL ITEM IMAGE-->   
                                             <div class="mask">  
                                                 <h2>New York</h2>                                   
                                                 <a role="button" class="info" data-toggle="modal" data-target="#myModal4">Read More</a> <!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'--> 
                                             </div>  
                                        </li>                         
                                        <li class="view view-second photography"><!--PORTFOLIO INDIVIDAUAL ITEM-->
                                          <img src="/resource/index/jQueryJlmoban/images/folio/guy.jpg" alt="guy" /><!--PORTFOLIO INDIVIDAUAL ITEM IMAGE--> 
                                            <div class="mask"></div>
                                            <div class="content">
                                                <h2>Image Name</h2><!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                                 
                                                <a role="button" class="info" data-toggle="modal" data-target="#myModal3">Read More</a><!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'-->
                                            </div>
                                        </li> 
                                        <li class="view view-tenth potrait"> <!--PORTFOLIO INDIVIDAUAL ITEM--> 
                                            <img src="/resource/index/jQueryJlmoban/images/folio/logs.jpg" alt="logs" /> <!--PORTFOLIO INDIVIDAUAL ITEM IMAGE-->  
                                            <div class="mask">  
                                                 <h2>woodsman</h2><!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                            
                                                 <a role="button" class="info" data-toggle="modal" data-target="#myModal">Read More</a> <!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'--> 
                                             </div>  
                                        </li>   
                                        
                                        <li class="view view-tenth commercial"><!--PORTFOLIO INDIVIDAUAL ITEM-->  
                                             <img src="/resource/index/jQueryJlmoban/images/folio/beach.jpg" alt="beach" /> <!--PORTFOLIO INDIVIDAUAL ITEM IMAGE-->  
                                             <div class="mask">  
                                                 <h2>New York</h2><!--PORTFOLIO INDIVIDAUAL ITEM TITLE-->                                    
                                                 <a role="button" class="info" data-toggle="modal" data-target="#myModal5">Read More</a> <!--PORTFOLIO INDIVIDAUAL ITEM MODAL LINK BY 'data-target'--> 
                                             </div>  
                                        </li>             
                                                                                                
                                                  
                                    </ul>
                                </div>
                                <!--PORTFOLIO ITEM CONTAINER ENDS-->
                            </div>                          
                        </div>
                    </li><!--/#portfolio-->

                    <!--CONTACT PAGE-->
                    <li id="contact" class="hidden">
                        <div class="title-container" >
                            <div class="shadow-img"></div>               
                           <h2 class="rotate-out rotated">Contact</h2><!--CONTACT PAGE TITLE-->
                        </div>
                        <div class="description">                           
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="map-container">
                                    <!-- 地图会出错先隐藏 -->
                                        <div id="map" style="display:none;width:100%;height:325px;">
                                          <img src="/resource/index/jQueryJlmoban/images/map.jpg"></>
                                        </div><!--GOOGLE MAP-->
                                        <div  style="width:100%;height:325px;">
                                          <img src="/resource/index/jQueryJlmoban/images/map.jpg"></>
                                        </div><!--GOOGLE MAP-->
                                    </div>
                                </div>

                                <div class="col-sm-5">
                                    <!--CONTACT DESCRIPTION-->
                                    <h3 class="title">Contact Info</h3>
                                    <h6 class="sm-title"><span class="address-icon"><i class="fa fa-map-marker"></i></span>China, GD, SZ</h6>
                                    <h6 class="sm-title"><span class="address-icon"><i class="fa fa-phone"></i></span>+8618682012295</h6>
                                    <h6 class="sm-title"><span class="address-icon"><i class="fa fa-envelope"></i></span>liri_1024@163.com</h6>
                                    <!--/CONTACT DESCRIPTION ENDS-->
                                </div>
                                <div class="col-sm-7">

                                    <div class="mail-container">
                                        <div class="cnmail result">
                                            <div class="msg success-msg"><i class="icon svg-check"><!--?xml version="1.0" encoding="utf-8"?-->  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 32 32"> <path d="M16 2.688c-7.375 0-13.313 5.938-13.313 13.313s5.938 13.313 13.313 13.313c7.375 0 13.313-5.938 13.313-13.313s-5.938-13.313-13.313-13.313zM16 28.25c-6.75 0-12.25-5.5-12.25-12.25s5.5-12.25 12.25-12.25c6.75 0 12.25 5.5 12.25 12.25s-5.5 12.25-12.25 12.25zM22.688 11.25l-8.563 8.313-3-3c-0.313-0.313-0.813-0.313-1.125 0s-0.313 0.813 0 1.125l3.563 3.563c0.125 0.125 0.313 0.188 0.563 0.188 0.188 0 0.375-0.063 0.5-0.188l9.125-8.875c0.375-0.313 0.375-0.813 0.063-1.125s-0.813-0.313-1.125 0z"></path> </svg> </i><span> You email has been stored!</span></div>
                                            <div class="msg error-msg"><i class="icon svg-close-circle"><!--?xml version="1.0" encoding="utf-8"?-->  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 32 32"> <path d="M6.563 6.563c-5.188 5.188-5.188 13.688 0 18.875s13.688 5.188 18.875 0c5.188-5.188 5.188-13.625 0-18.875-5.188-5.188-13.625-5.188-18.875 0zM24.688 24.688c-4.813 4.75-12.563 4.75-17.375 0-4.75-4.813-4.75-12.563 0-17.375 4.813-4.75 12.563-4.75 17.375 0 4.75 4.813 4.75 12.563 0 17.375zM10.75 10l-0.813 0.75 5.313 5.25-5.25 5.25 0.75 0.75 5.25-5.25 5.25 5.25 0.75-0.75-5.25-5.25 5.313-5.25-0.813-0.75-5.25 5.25z"></path> </svg> </i><span> Sorry! Something went wrong!</span></div>
                                        </div>
                                        <h3 class="title invert">Don't Forget To Mail Me</h3>
                                        <!--CONTACT FORM-->
                                        <form action="sendmail.php" class="form-horizontal" id="contact-form">
                                            <div class="form-group">
                                                <input name="name" class="form-control required" placeholder="Name" data-placement="top" type="text">
                                            </div>                                    
                                            <div class="form-group">
                                                <input name="email" class="form-control email" placeholder="Email" type="text">
                                            </div>                   
                                            <div class="form-group">
                                                <textarea name="message" class="form-control" placeholder="Message" rows="3"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-success">SEND</button>
                                            </div>

                                        </form><!--/#contact-form-->
                                    </div>                      
                                    
                                </div>                          
                                
                            </div>
                        </div>
                    </li><!--/#contact-->
                </ul> 

                <div class="row mobile-nav-container">
                    <!--SOCIAL NAV FOR MOBILE-->
                    <ul class="mobile-social no-padding">
                        <li>Connect With Me</li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul><!--/.mobile-social-->
                </div>               
            </div><!--/.page-segment -->
            <!--  <h6 class="copyright-text">Copyright © 2015 Li Dada</h6> --> <!--if anyone wants copyright Texts--> 
        </div>
    </div><!--/.container -->
   
    <!--PORTFOLIO IMAGE MODAL LIST-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4><!--PORTFOLIO IMAGE TITLE-->
                </div>
                <div class="modal-body">
                    <img src="/resource/index/jQueryJlmoban/images/folio/logs.jpg" class="img-responsive" alt="modal-image"><!--PORTFOLIO MODAL IMAGE-->
                </div>
                <div class="modal-footer">
                    <div class="mf-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis temporibus fuga sit explicabo blanditiis voluptate iste vero quia impedit? Iusto illo voluptas est praesentium veritatis magni, pariatur laboriosam voluptatem inventore.</p>
                    </div>                      
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel2">Hover Style</h4><!--PORTFOLIO IMAGE TITLE-->
                </div>
                <div class="modal-body">
                    <img src="/resource/index/jQueryJlmoban/images/folio/book.jpg" class="img-responsive" alt="modal-image"><!--PORTFOLIO MODAL IMAGE-->
                </div>
                <div class="modal-footer">
                    <div class="mf-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel sapiente, odit, illo saepe voluptate eos enim eius autem cumque ab, soluta dolor tempore inventore eligendi maxime voluptas pariatur explicabo blanditiis?</p>
                    </div>                      
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel3">Hover Style</h4><!--PORTFOLIO IMAGE TITLE-->
                </div>
                <div class="modal-body">
                    <img src="/resource/index/jQueryJlmoban/images/folio/guy.jpg" class="img-responsive" alt="modal-image"><!--PORTFOLIO MODAL IMAGE-->
                </div>
                <div class="modal-footer">
                    <div class="mf-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur ratione quae, alias at. Reprehenderit, ut quis corporis laudantium, laborum sed omnis qui perspiciatis explicabo. Ipsum culpa aspernatur dolorem. Amet, quis.</p>
                    </div>                      
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel4">Hover Style</h4><!--PORTFOLIO IMAGE TITLE-->
                </div>
                <div class="modal-body">
                    <img src="/resource/index/jQueryJlmoban/images/folio/illustration.jpg" class="img-responsive" alt="modal-image"><!--PORTFOLIO MODAL IMAGE-->
                </div>
                <div class="modal-footer">
                    <div class="mf-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus ab id unde veniam error et iste ut aspernatur accusantium porro molestiae voluptatibus rem, tempore inventore ad minus soluta praesentium magni?</p>
                    </div>                      
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel5" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel5">Hover Style</h4><!--PORTFOLIO IMAGE TITLE-->
                </div>
                <div class="modal-body">
                    <img src="/resource/index/jQueryJlmoban/images/folio/beach.jpg" class="img-responsive" alt="modal-image"><!--PORTFOLIO MODAL IMAGE-->
                </div>
                <div class="modal-footer">
                    <div class="mf-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam amet placeat porro, maxime corrupti laboriosam, quod nulla perferendis esse ipsa atque deleniti. Magni molestias, nemo illum eos, exercitationem neque incidunt.</p>
                    </div>                      
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" id="subscribe_modal_1" tabindex="-1" role="dialog" aria-labelledby="subscribe_modal_1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h2 class="modal-title">Thank You</h2><!--PORTFOLIO IMAGE TITLE-->
                </div>
                <div class="modal-body">
                    <div class="text-center mail-sucsess"><h3> <span>your mail has been sent</span></h3></div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!--javascript files
    =============================================================-->
    <script type="text/javascript" src="/resource/index/jQueryJlmoban/js/jQueryTween-aio-min.js"></script> <!-- JQUERY Tween Plugin -->
    <script type="text/javascript" src="/resource/index/jQueryJlmoban/js/jquery.tabslet.min.js"></script> <!-- JQUERY Tab plugin-->     
    <script type="text/javascript" src="/resource/index/jQueryJlmoban/js/progressbar.min.js"></script> <!-- JQUERY Progressbar Plugin-->
    <script type="text/javascript" src="/resource/index/jQueryJlmoban/js/jquery.simple-text-rotator.min.js"></script> <!-- JQUERY Text Rotator-->
    <script type="text/javascript" src="/resource/index/jQueryJlmoban/js/bootstrap.min.js"></script> <!-- Bootstrap file-->
    <script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyBPNkCVoBW_Jzl6x-hgGU6e7QW1QMwKles"></script>
    <script type="text/javascript" src='/resource/index/jQueryJlmoban/js/isotope.pkgd.min.js'></script> <!--SCRIPTS FOR PORTFOLIO IMAGE'S ANIMATION-->
    <script type="text/javascript" src="/resource/index/jQueryJlmoban/js/custom.js"></script>
</body>
</html>