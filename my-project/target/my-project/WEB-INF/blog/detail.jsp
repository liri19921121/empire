<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta name="baidu-site-verification" content="d4kcdwiGHw">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Cordova入门（一）创建android项目 | 李太阳博客</title>
		<meta name="author" content="李太阳(yadong.zhang0415#gmail.com)">
		<meta name="keywords" content="Android打包,Cordova创建app,Cordova打包App,Cordova应用,Cordova学习教程,李太阳博客">
		<meta name="description" content="APP开发之路第一篇：使用Cordova创建并打包一个Android平台的app应用" id="meta_description">
		<link rel="canonical" href="/blog/detail">
		<link href="/resource/img/blog/favicon.ico" rel="shortcut icon" type="image/x-icon">
		<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="https://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/jquery.bootstrapvalidator/0.5.1/css/bootstrapValidator.min.css" rel="stylesheet">
		<link href="/resource/css/blog/zhyd.core.css" rel="stylesheet" type="text/css">
		<link href="/resource/css/blog/zhyd.comment.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<nav id="topmenu" class="navbar navbar-default navbar-fixed-top" style="opacity: 1;">
			<div class="menu-box">
				<div class="pull-left">
					<ul class="list-unstyled list-inline">
						<li><span id="currentTime">2018年04月11日 09时43分41秒 星期三</span></li>
					</ul>
					<div class="clear"></div>
				</div>
				<div class="menu-topmenu-container pull-right">
					<ul class="list-unstyled list-inline pull-left">
						<li>
							<a href="/blog/about" class="menu_a" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="关于博客"><i class="fa fa-info fa-fw"></i>关于</a>
						</li>
						<li>
							<a href="/blog/links" class="menu_a" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="友情链接"><i class="fa fa-link fa-fw"></i>友情链接</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<nav id="mainmenu" class="navbar navbar-default navbar-fixed-top" role="navigation" style="top: 30px; z-index: 998;">
			<div class="menu-box">
				<div class="navbar-header">
					<span class="pull-right nav-search toggle-search" data-toggle="modal" data-target=".nav-search-box"><i class="fa fa-search"></i></span>
					<a type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
					<a class="navbar-brand logo" href="/blog/index"></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="pull-left site-desc" style="line-height: 0.9;">
						<h1 style="font-size: 20px;font-weight: 700;" class="auto-shake"><a href="https://www.zhyd.me/" data-original-title="写博客、记日志、闲聊扯淡鼓捣技术" data-toggle="tooltip" data-placement="bottom">李太阳博客</a></h1>
						<p class="site-description">写博客、记日志、闲聊扯淡鼓捣技术</p>
					</div>
					<ul class="nav navbar-nav ">
						<li class="active">
							<a href="/blog/index" class="menu_a"><i class="fa fa-home"></i>首页</a>
						</li>
						<li>
							<a href="/blog/guestbook" class="menu_a"><i class="fa fa-comments-o"></i>留言板</a>
						</li>
						<li><span class="pull-right nav-search main-search" data-toggle="modal" data-target=".nav-search-box"><i class="fa fa-search"></i></span></li>
					</ul>
				</div>
			</div>
		</nav>
		<img src="/resource/img/blog/default_article_cover.jpg" onerror="this.src='/resource/img/blog/default_article_cover.jpg'" style="display: none;" id="cover-img">
		<div class="container custome-container">
			<nav class="breadcrumb">
				<a class="crumbs" title="" href="https://www.zhyd.me/" data-toggle="tooltip" data-placement="bottom" data-original-title="返回首页"><i class="fa fa-home"></i>首页</a>
				<i class="fa fa-angle-right"></i>
				<a href="https://www.zhyd.me/type/2" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="点击查看该分类文章">后端技术</a>
				<i class="fa fa-angle-right"></i>正文
			</nav>
			<div class="row">
				<div class="col-sm-8 blog-main">
					<div class="blog-body overflow-initial fade-in">
						<div class="article-flag">
							<span class="article-blockquote article-blockquote-green"></span>
							<span class="article-original article-original-green">
								<a href="/blog/detail">原创</a>
							</span>
							<div class="blog-info-meta pull-right">
								<ul class="list-unstyled list-inline">
									<li><i class="fa fa-clock-o fa-fw"></i>发表于 2018年04月08日</li>
									<li><i class="fa fa-eye fa-fw"></i>
										<a class="pointer" data-original-title="89人浏览了该文章" data-toggle="tooltip" data-placement="bottom">浏览 (
											<num>89</num>)</a>
									</li>
									<li>
										<a href="/blog/detail#comment-box" data-original-title="0人评论了该文章" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-comments-o fa-fw"></i>评论 (0)</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="blog-info overflow-initial">
							<div class="bottom-line">
								<h1 class="blog-info-title">
									<strong>Cordova入门（一）创建android项目</strong>
								</h1>
							</div>
							<div class="blog-info-body">
								<span id="menu_0" class="menu-point"></span>
								<h2 class="menu-title">前言</h2>
								<blockquote>
									<p>Apache Cordova是一个开源的移动开发框架。允许使用标准的web技术-HTML5,CSS3和JavaScript做跨平台开发。 应用在每个平台的具体执行被封装了起来，并依靠符合标准的API绑定去访问每个设备的功能，比如说：传感器、数据、网络状态等。&nbsp;</p>
									<p>&nbsp;使用Apache Cordova的人群:&nbsp;</p>
									<p>&nbsp; &nbsp; &nbsp;1.移动应用开发者，想扩展一个应用的使用平台，而不通过每个平台的语言和工具集重新实现。&nbsp;</p>
									<p>&nbsp; &nbsp; &nbsp;2.web开发者，想包装部署自己的web App将其分发到各个应用商店门户。 &nbsp;</p>
									<p>&nbsp; &nbsp; &nbsp;3.移动应用开发者，有兴趣混合原生应用组建和一个WebView(一个特别的浏览器窗口) 可以接触设备A级PI，或者你想开发一个原生和WebView组件之间的插件接口。</p>
									<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;—— 摘自《Cordova官网》</p>
								</blockquote>
								<p>&nbsp; &nbsp; Cordova虽然可以用来开发APP，但cordova并不能把H5代码变成IOS或者Android的原生代码。cordova只是将我们的Html文件通过相应的API，显示在HTML Rendering Engine(即WebView)中，同时 Cordova支持丰富的插件，这些插件提供了Cordova和原生组件相互通信的接口并绑定到了标准的设备API上。这就使开发者可以通过JS去调用原生代码，比如：照相机、联系人、热更新和打开第三方APP应用等。
								</p>
								<p>接下来，本文会一步步的介绍如何使用Cordova开发我们的第一个APP应用（本文主要介绍Android App应用）！</p><span id="menu_1" class="menu-point"></span>
								<h2 class="menu-title">使用Cordova的基本要求</h2>
								<p>1.首先要会基本的<code>HTML + CSS + JS</code>（否则的话你开发个毛线的app）</p>
								<p>2.不需要太高深的Android开发经验，但起码的开发流程要了解</p>
								<p>3.需要自行搭建Android开发环境：比如SDK</p>
								<p>4.需要下载安装Node（自行百度）</p>
								<p>5.需要安装Cordova（<span><code>npm install -g cordova</code></span>）</p><span id="menu_2" class="menu-point"></span>
								<h2 class="menu-title">创建APP</h2><pre><code># cordova create &lt;项目名&gt; &lt;包名&gt; &lt;app名（可选）&gt;
cordova create CordovaTest com.zyd.cordova</code></pre>
								<p><span>创建完成后的文件夹目录结构：</span></p><img src="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Farticle%2F20180408162625.png-pw" alt="">
								<p><code>hooks</code>：存放自定义cordova命令的脚本文件。每个project命令都可以定义before和after的Hook，比如：before_build、after_build。没用过，不展开了。</p>
								<p><code>platforms</code>：平台目录，各自的平台代码就放在这里，可以放一下平台专属的代码，现在这个目录应该是空的，后面会介绍如何创建平台。</p>
								<p><code>plugins</code>：Cordova插件目录，安装的插件会放在这里。后面会有专门的文章介绍开发插件。</p>
								<p><code>www</code>：最重要的目录，存放项目主题的HTML5和JS代码的目录。app一开始打开的就是这个目录中/blog/index文件。</p>
								<p><code>config.xml</code>：主要是cordova的一些配置，比如：项目使用了哪些插件、应用图标icon和启动页面</p><span id="menu_3" class="menu-point"></span>
								<h2 class="menu-title"><span>添加Android开发平台</span>&nbsp;&nbsp;</h2><pre><code>xx\CordovaTest\platforms&gt;cordova platform add android
Using cordova-fetch for cordova-android@~7.0.0
Adding android project...
Creating Cordova project for the Android platform:
        Path: platforms\android
        Package: com.zyd.cordova
        Name: HelloCordova
        Activity: MainActivity
        Android target: android-26
Subproject Path: CordovaLib
Subproject Path: app
Android project created with cordova-android@7.0.0
Android Studio project detected
Android Studio project detected
Discovered plugin "cordova-plugin-whitelist" in config.xml. Adding it to the project
Installing "cordova-plugin-whitelist" for android

               This plugin is only applicable for versions of cordova-android greater than 4.0. If you have a previous platform version
, you do *not* need this plugin since the whitelist will be built in.

Adding cordova-plugin-whitelist to package.json
Saved plugin info for "cordova-plugin-whitelist" to config.xml
--save flag or autosave detected
Saving android@~7.0.0 into config.xml file ...</code></pre><span id="menu_4" class="menu-point"></span>
								<h2 class="menu-title"><span>导入Android Studio</span></h2>
								<p>
									<font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span>File --&gt; Open --&gt; 选择platforms-android下的build.gradle，确定</span></font>
								</p><img src="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Farticle%2F20180408163333.png-pw" alt="">
								<p><span>等待IDE自动构建...</span></p>
								<p><span>构建完成后的目录结构如下：（我已切换到Android视图模式，图中箭头位置）</span></p><img src="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Farticle%2F20180408163922.png-pw" alt=""><br>
								<p><span>目录内容解释：</span></p>
								<p><span><code>AndroidManifest.xml</code>：Android应用的入口文件，负责配置<code>applaction</code>和<code>activity</code>等</span></p>
								<p>
									<font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span><code>java</code>：Cordova项目默认的启动类（一般不需要关心，除非涉及到使用原生代码开发功能）</span></font>
								</p>
								<p>
									<font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span><code>assets</code>：资源文件（H5应用的html、js、css等文件），需要注意的是，www中的cordova开头的文件或文件夹（如果使用到了自定义插件，会有个plugins文件目录），<b>切记不可删除！切记不可删除！切记不可删除！</b></span></font>
								</p>
								<p>
									<font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span><code>res</code>：app的配置：启动图标、应用图标、应用名称等。注意：xml中的config.xml是app打包用的配置文件，可配置如：启动主页面、权限、白名单等</span></font>
								</p><span id="menu_5" class="menu-point"></span>
								<h2 class="menu-title"><font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span>使用cordova打包APP</span></font></h2><pre><code>D:\cordova\CordovaTest\platforms\android&gt;cordova build android
Android Studio project detected
ANDROID_HOME=F:\AndroidSDK
JAVA_HOME=D:\server\Java\jdk1.8\jdk1.8.151
studio
Subproject Path: CordovaLib
Subproject Path: app
Starting a Gradle Daemon, 1 busy and 1 incompatible and 1 stopped Daemons could not be reused, use --status for details
publishNonDefault is deprecated and has no effect anymore. All variants are now published.
The Task.leftShift(Closure) method has been deprecated and is scheduled to be removed in Gradle 5.0. Please use Task.doLast(Action) instead.
        at build_dm9mufthcbtehnxb8j3px6xr.run(D:\cordova\CordovaTest\platforms\android\app\build.gradle:143)
:CordovaLib:preBuild UP-TO-DATE
中间省略......
:app:cdvBuildDebug

BUILD SUCCESSFUL in 1m 1s
47 actionable tasks: 47 executed
Built the following apk(s):
        D:\cordova\CordovaTest\platforms\android\app\build\outputs\apk\debug\app-debug.apk</code></pre>
								<p>
									<font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span>提示</span></font><span>BUILD SUCCESSFUL</span><span>则表示打包完成，根据指定路径，获取apk后安装即可。</span></p>
								<p><span>常用的命令：</span></p><pre><code>cordova install android //将编译好的应用程序安装到模拟器上。
cordova emulate android //在模拟器上运行（前提是创建好AVD）
cordova serve android //在浏览器运行
cordova build android //打包cordova项目到android平台。
cordova run android //通过USB直接安装到真机（该语句已经包括了build命令）</code></pre><span id="menu_6" class="menu-point"></span>
								<h2 class="menu-title"><font color="#000000" face="Helvetica Neue, Helvetica, Verdana, Arial, sans-serif"><span>使用AndroidStudio打包APP</span></font></h2><img src="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Farticle%2F20180408165642.png-pw" alt=""><br><span id="menu_7" class="menu-point"></span>
								<h2 class="menu-title"><span>参考资料</span></h2>
								<p><span>1.</span>
									<a href="https://www.cnblogs.com/lishuxue/p/6008678.html" target="_blank">Cordova入门系列（一）创建项目</a>
								</p>
								<p>2.
									<a href="https://www.cnblogs.com/a418120186/p/5226417.html" target="_blank">Cordova之如何用命令行创建一个项目（完整示例）</a>
								</p>
								<p>3.
									<a href="http://cordova.axuer.com/docs/zh-cn/latest/guide/cli//blog/index" target="_blank">Cordova中文文档</a>
								</p>
								<p><br></p>
							</div>
							<div class="separateline"><span>正文到此结束</span></div>
							<div id="social" style="margin-bottom: 45px;">
								<div class="social-main">
									<span class="like">
										<a href="javascript:;" data-id="92" title="点赞"><i class="fa fa-thumbs-up"></i>赞 <i class="count"> 1</i> </a>
									</span>
									<div class="shang-p">
										<div class="shang-empty"><span></span></div>
										<span class="shang-s"><a onclick="PaymentUtils.show();" style="cursor:pointer">赏</a> </span>
									</div>
									<div class="share-sd">
										<span class="share-s"><a href="javascript:void(0)" id="share-s" title="分享"><i class="fa fa-share-alt"></i>分享</a></span>
										<div id="share" style="display: none">
											<ul class="bdsharebuttonbox bdshare-button-style1-24" data-bd-bind="1523411015945">
												<li>
													<a title="分享到人人网" class="fa fa-renren" data-cmd="renren" onclick="return false;" href="/blog/detail#"></a>
												</li>
												<li>
													<a title="分享到腾讯微博" class="fa fa-pinterest-square" data-cmd="tqq" onclick="return false;" href="/blog/detail#"></a>
												</li>
												<li>
													<a title="分享到QQ空间" class="fa fa-qq" data-cmd="qzone" onclick="return false;" href="/blog/detail#"></a>
												</li>
												<li>
													<a title="分享到新浪微博" class="fa fa-weibo" data-cmd="tsina" onclick="return false;" href="/blog/detail#"></a>
												</li>
												<li>
													<a title="分享到微信" class="fa fa-weixin" data-cmd="weixin" onclick="return false;" href="/blog/detail#"></a>
												</li>
												<li>
													<a title="更多" class="bds_more fa fa-plus-square" data-cmd="more" onclick="return false;" href="/blog/detail#"></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
							<div class="article-footer overflow-initial">所属分类：
								<a href="https://www.zhyd.me/type/2" data-original-title="点击查看后端技术分类的文章" data-toggle="tooltip" data-placement="bottom">后端技术</a>
							</div>
						</div>
					</div>
					<div class="blog-body article-tag">
						<div class="cat">
							<ul class="list-unstyled">
								<li>
									<strong>本文标签：</strong>
									<a href="https://www.zhyd.me/tag/32" class="c-label" data-original-title="Cordova" data-toggle="tooltip" data-placement="bottom" target="_blank">Cordova</a>
									<a href="https://www.zhyd.me/tag/33" class="c-label" data-original-title="Android" data-toggle="tooltip" data-placement="bottom" target="_blank">Android</a>
								</li>
								<li>
									<strong>版权声明：</strong> 本站原创文章，于2018年04月08日由
									<a href="https://www.zhyd.me/" target="_blank" data-original-title="李太阳博客" data-toggle="tooltip" data-placement="bottom"><strong>李太阳</strong></a>发布，转载请注明出处
								</li>
							</ul>
						</div>
					</div>
					<div class="blog-body">
						<a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db&amp;utm_source=wylo59db" target="_blank" rel="external nofollow">
							<img src="/resource/img/blog/ad/aliyun_sale1000-60.png" alt="阿里云首购8折" class="img-responsive">
						</a>
					</div>
					<div class="blog-body prev-next">
						<nav class="nav-single wow" data-wow-delay="0.3s">
							<a href="/blog/detail" rel="prev">
								<span class="meta-nav" data-original-title="【漏洞公告】Spring Framework多个安全漏洞预警" data-toggle="tooltip" data-placement="bottom"><span class="post-nav"><i class="fa fa-angle-left"></i> 上一篇</span>
								<br>【漏洞公告】Spring Framework多个安全漏洞预警
								</span>
							</a>
							<a href="/blog/detail" rel="nofollow next">
								<span class="meta-nav" data-original-title="已经到最后一篇了" data-toggle="tooltip" data-placement="bottom"><span class="post-nav">下一篇 <i class="fa fa-angle-right"></i></span>
								<br>已经到最后一篇了
								</span>
							</a>
							<div class="clear"></div>
						</nav>
					</div>
					<div class="blog-body clear overflow-initial">
						<h4 class="bottom-line"><i class="fa fa-fire icon"></i><strong>热门推荐</strong></h4>
						<ul class="list-unstyled">
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/flyat/cover/20170405174038272.png" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="778人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												Springboot + Freemarker项目中使用自定义注解
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(778)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
													<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/flyat/cover/20170502143953315.jpg" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="297人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												Linux中ImageIO生成图片中文乱码
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(297)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
													<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Fcover%2F20180301205820.jpg" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="250人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												解决微信小程序无法下载非指定域名文件的方案
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(250)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
													<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/website/img/favicon.ico" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="229人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												记一次服务器日志查看及BUG维护
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(229)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
													<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Fcover%2F1518335776791.jpg" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="207人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												下半年起，谷歌浏览器将把所有HTTP网站标记为“不安全”
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(207)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
													<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/flyat%2Fcover%2F20180316171033.png" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="199人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												通过js注入实现单页面显示多条“一言”
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(199)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
													<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/flyat/cover/20170601134846507.png" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="190人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												配置MySQL开启远程连接的方法
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(190)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
												<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
							<li class="line-li">
								<div class="line-container">
									<div class="line-left">
										<img class="lazy-img" data-original="http://p4c3z3uxb.bkt.clouddn.com/website/img/favicon.ico" width="50" height="50" rel="external nofollow">
									</div>
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="181人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												若有来世，我必褪去这身袈裟，陪你浪迹天涯
											</a>
										</div>
										<div class="text">
											<span class="views" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章阅读次数"><i class="fa fa-eye fa-fw"></i>浏览(181)</span>
											<span class="comment" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="文章评论次数">
												<a href="/blog/detail#comment-box" rel="external nofollow">
												<i class="fa fa-comments-o fa-fw"></i>评论(0)
												</a>
											</span>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
					<div class="blog-body clear overflow-initial">
						<h4 class="bottom-line"><i class="fa fa-google-wallet icon"></i><strong>相关文章</strong></h4>
						<ul class="list-unstyled">
							<li class="line-li">
								<div class="line-container">
									<div class="line-right">
										<div class="text">
											<a href="/blog/detail" data-original-title="89人浏览了该文章" data-toggle="tooltip" data-placement="bottom">
												Cordova入门（一）创建android项目
											</a>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
					<div class="blog-body clear overflow-initial expansion">
						<div id="comment-box" data-id="92">
							<!-- 以下内容为评论插件自动生成 -->
							<div id="comment-place">
								<div class="comment-post" id="comment-post" style="position: relative">
									<h4 class="bottom-line"><i class="fa fa-commenting-o fa-fw icon"></i><strong>发表评论</strong><small> - 欢迎回来，<a href="https://www.zhyd.me/" target="_blank" rel="external nofollow">超级管理员<i class="fa fa-smile-o"></i></a></small></h4>
									<div class="cancel-reply" id="cancel-reply" style="display: none;">
										<a href="javascript:void(0);" onclick="$.comment.cancelReply(this)" rel="external nofollow"><i class="fa fa-share"></i>取消回复</a>
									</div>
									<form class="form-horizontal" role="form" id="comment-form"><input type="hidden" name="pid" id="comment-pid" value="0" size="22" tabindex="1"><textarea id="comment_content" name="content" style="display: none"></textarea>
										<div id="editor" style="width: 100%;height: 150px;">
											<div style="border:1px solid #009a61; border-bottom:0; border-radius:15px 4px 0 0;" class="w-e-toolbar" id="toolbar-elem5063079668968238">
												<div class="w-e-menu" style="z-index:101;"> <i class="w-e-icon-terminal"><i>        </i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"> <i class="w-e-icon-bold"><i>        </i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"> <i class="w-e-icon-italic"><i>        </i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"> <i class="w-e-icon-underline"><i>        </i></i>
												</div>
												<div class="w-e-menu" id="w-e-img6663164231337577" style="z-index:101;"><i class="w-e-icon-image"><i></i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"><i class="w-e-icon-link"><i></i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"><i class="w-e-icon-list2"><i></i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"> <i class="w-e-icon-quotes-left"><i>        </i></i>
												</div>
												<div class="w-e-menu" style="z-index:101;"> <i class="w-e-icon-happy"><i>        </i></i>
												</div>
												<div class="w-e-menu">
													<a class="_wangEditor_btn_fullscreen" href="/blog/guestbook###" onclick="window.wangEditor.fullscreen.toggleFullscreen(&#39;#editor&#39;)" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="全屏编辑"><i class="fa fa-expand"></i></a>
												</div>
											</div>
											<div style="border:1px solid #009a61; border-radius:0px 0px 15px 0px; height:100%; max-height:115px; z-index:100;" class="w-e-text-container">
												<div contenteditable="true" style="width:100%; height:100%;" class="w-e-text" id="text-elem39053303385807125">
													<p><br></p>
												</div>
											</div>
										</div>
										<div style="position: absolute;right: 10px;bottom: 65px;font-size: 14px;font-weight: 700;color: #ececec;">李太阳博客<br>https://www.zhyd.me<br>讲文明、要和谐</div>
										<a id="comment-form-btn" type="button" data-loading-text="正在提交评论..." class="btn btn-default btn-block">提交评论</a>
									</form>
								</div>
							</div>
							<div class="commentList">
								<h5 class="bottom-line"><i class="fa fa-comments-o fa-fw icon"></i><strong><em>29</em> 条评论</strong></h5>
								<ul class="comment">
									<li>
										<div class="comment-body fade-in" id="comment-51">
											<div class="cheader">
												<div class="user-img"><img class="userImage" src="/resource/img/blog/favicon.ico" onerror="this.src='/resource/img/blog/favicon.ico'"></div>
												<div class="user-info">
													<div class="nickname">
														<a target="_blank" href="https://www.zhyd.me/" rel="external nofollow"><strong>超级管理员</strong></a>
													</div>
													<div class="timer"> <i class="fa fa-clock-o fa-fw"></i>2018-04-09 16:51 <i class="fa fa-map-marker fa-fw"></i>北京市北京市 </div>
												</div>
											</div>
											<div class="content">
												<a href="/blog/guestbook#comment-48" class="comment-quote">@李太阳博客</a>
												<div style="background-color: #f5f5f5;padding: 5px;margin: 5px;border-radius: 4px;"><i class="fa fa-quote-left"></i>
													<p></p>
													<div style="padding-left: 10px;">
														<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
													</div>
												</div>
												<div>回复评论回复评论回复评论回复评论回复评论回复评论</div>
											</div>
											<div class="sign"> <i class="icons os-win1"></i>Windows 7 <i class="sepa"></i> <i class="icons browser-chrome"></i>Chrome 65.0.3325.146 <i class="sepa"></i>
												<a href="javascript:void(0);" class="comment-up" onclick="$.comment.praise(51, this)"><i class="fa fa-thumbs-o-up"></i>赞(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-down" onclick="$.comment.step(51, this)"><i class="fa fa-thumbs-o-down"></i>踩(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-reply" onclick="$.comment.reply(51, this)"><i class="fa fa-reply"></i>回复</a>
												<a href="javascript:void(0);" class="comment-flag hide" onclick="$.comment.report(51, this)"><i class="fa fa-flag"></i>举报</a>
											</div>
										</div>
									</li>
									<li>
										<div class="comment-body fade-in" id="comment-48">
											<div class="cheader">
												<div class="user-img"><img class="userImage" src="/resource/img/blog/favicon.ico" onerror="this.src='/resource/img/blog/favicon.ico'"></div>
												<div class="user-info">
													<div class="nickname">
														<a target="_blank" href="https://www.zhyd.me/" rel="external nofollow"><strong>李太阳博客</strong></a>
													</div>
													<div class="timer"> <i class="fa fa-clock-o fa-fw"></i>2018-04-09 14:39 <i class="fa fa-map-marker fa-fw"></i>上海市上海市 </div>
												</div>
											</div>
											<div class="content">
												<div>
													<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
												</div>
											</div>
											<div class="sign"> <i class="icons os-win1"></i>Windows 7 <i class="sepa"></i> <i class="icons browser-firefox"></i>Firefox 59.0 <i class="sepa"></i>
												<a href="javascript:void(0);" class="comment-up" onclick="$.comment.praise(48, this)"><i class="fa fa-thumbs-o-up"></i>赞(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-down" onclick="$.comment.step(48, this)"><i class="fa fa-thumbs-o-down"></i>踩(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-reply" onclick="$.comment.reply(48, this)"><i class="fa fa-reply"></i>回复</a>
												<a href="javascript:void(0);" class="comment-flag hide" onclick="$.comment.report(48, this)"><i class="fa fa-flag"></i>举报</a>
											</div>
										</div>
									</li>
									<li>
										<div class="comment-body fade-in" id="comment-48">
											<div class="cheader">
												<div class="user-img"><img class="userImage" src="/resource/img/blog/favicon.ico" onerror="this.src='/resource/img/blog/favicon.ico'"></div>
												<div class="user-info">
													<div class="nickname">
														<a target="_blank" href="https://www.zhyd.me/" rel="external nofollow"><strong>李太阳博客</strong></a>
													</div>
													<div class="timer"> <i class="fa fa-clock-o fa-fw"></i>2018-04-09 14:39 <i class="fa fa-map-marker fa-fw"></i>上海市上海市 </div>
												</div>
											</div>
											<div class="content">
												<div>
													<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
												</div>
											</div>
											<div class="sign"> <i class="icons os-win1"></i>Windows 7 <i class="sepa"></i> <i class="icons browser-firefox"></i>Firefox 59.0 <i class="sepa"></i>
												<a href="javascript:void(0);" class="comment-up" onclick="$.comment.praise(48, this)"><i class="fa fa-thumbs-o-up"></i>赞(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-down" onclick="$.comment.step(48, this)"><i class="fa fa-thumbs-o-down"></i>踩(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-reply" onclick="$.comment.reply(48, this)"><i class="fa fa-reply"></i>回复</a>
												<a href="javascript:void(0);" class="comment-flag hide" onclick="$.comment.report(48, this)"><i class="fa fa-flag"></i>举报</a>
											</div>
										</div>
									</li>
									<li>
										<div class="comment-body fade-in" id="comment-48">
											<div class="cheader">
												<div class="user-img"><img class="userImage" src="/resource/img/blog/favicon.ico" onerror="this.src='/resource/img/blog/favicon.ico'"></div>
												<div class="user-info">
													<div class="nickname">
														<a target="_blank" href="https://www.zhyd.me/" rel="external nofollow"><strong>李太阳博客</strong></a>
													</div>
													<div class="timer"> <i class="fa fa-clock-o fa-fw"></i>2018-04-09 14:39 <i class="fa fa-map-marker fa-fw"></i>上海市上海市 </div>
												</div>
											</div>
											<div class="content">
												<div>
													<p>评论内容评论内容评论内容评论内容评论内容评论内容评论内容</p>
												</div>
											</div>
											<div class="sign"> <i class="icons os-win1"></i>Windows 7 <i class="sepa"></i> <i class="icons browser-firefox"></i>Firefox 59.0 <i class="sepa"></i>
												<a href="javascript:void(0);" class="comment-up" onclick="$.comment.praise(48, this)"><i class="fa fa-thumbs-o-up"></i>赞(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-down" onclick="$.comment.step(48, this)"><i class="fa fa-thumbs-o-down"></i>踩(<span class="count">0</span>)<i class="sepa"></i></a>
												<a href="javascript:void(0);" class="comment-reply" onclick="$.comment.reply(48, this)"><i class="fa fa-reply"></i>回复</a>
												<a href="javascript:void(0);" class="comment-flag hide" onclick="$.comment.report(48, this)"><i class="fa fa-flag"></i>举报</a>
											</div>
										</div>
									</li>
									<li>
										<div class="list-comment-empty-w fade-in">
											<div class="empty-prompt-w"><span class="prompt-null-w pointer load-more">加载更多 <i class="fa fa-angle-double-down"></i></span></div>
										</div>
									</li>
								</ul>
							</div>
							<!-- 以上内容为评论插件自动生成 -->
						</div>
					</div>
				</div>
				<div class="col-sm-3 blog-sidebar">
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-hand-peace-o icon"></i><strong>说给你听</strong></h5>
						<div class="div-quote">
							<i class="fa fa-quote-left fa-fw"></i>
							<p id="hitokoto" style="margin-left: 15px;"></p>
						</div>
					</div>
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-thumbs-o-up icon"></i><strong>站长推荐优惠活动，领优惠券啦~~</strong></h5>
						<a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db&amp;utm_source=wylo59db" target="_blank" rel="external nofollow">
							<img src="/resource/img/blog/ad/aliyun_sale.png" alt="阿里云首购8折" style="margin: 0 auto;" class="img-responsive">
						</a>
					</div>
					<div class="sidebar-module article-module">
						<h5 class="sidebar-title"><i class="fa fa-book icon"></i><strong>本文目录</strong> <i class="fa fa-close pull-right close-article-menu hide pointer"></i></h5>
						<div id="article-menu" style="display: block;">
							<ul class="list-unstyled">
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_0" style="display:inline-block;">前言</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_1" style="display:inline-block;">使用Cordova的基本要求</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_2" style="display:inline-block;">创建APP</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_3" style="display:inline-block;">添加Android开发平台&nbsp;&nbsp;</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_4" style="display:inline-block;">导入Android Studio</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_5" style="display:inline-block;">使用cordova打包APP</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_6" style="display:inline-block;">使用AndroidStudio打包APP</a>
								</li>
								<li style="padding-left:10px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="/blog/detail#menu_7" style="display:inline-block;">参考资料</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-tags icon"></i><strong>文章标签</strong></h5>
						<ul class="list-unstyled list-inline">
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/1" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Linux">
									Linux
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/2" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Java">
									Java
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/3" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Spring">
									Spring
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/4" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Spring Boot">
									Spring Boot
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/5" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Maven">
									Maven
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/6" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Docker">
									Docker
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/7" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="IDE">
									IDE
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/8" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="uzip">
									uzip
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/9" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="war">
									war
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/10" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Shell">
									Shell
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/11" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Flyat">
									Flyat
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/12" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="chrome">
									chrome
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/13" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="自动化测试">
									自动化测试
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/14" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Git">
									Git
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/15" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Task">
									Task
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/16" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="爬虫">
									爬虫
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/17" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="MySQL">
									MySQL
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/18" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="JS">
									JS
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/19" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="正则">
									正则
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/20" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Tomcat">
									Tomcat
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/21" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="FindBugs">
									FindBugs
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/22" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="版本控制">
									版本控制
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/23" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Nginx">
									Nginx
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/24" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Apache">
									Apache
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/25" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="其他">
									其他
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/26" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="阿里云优惠券">
									阿里云优惠券
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/27" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="微信小程序">
									微信小程序
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/28" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="网易云音乐">
									网易云音乐
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/29" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="阿里云服务器">
									阿里云服务器
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/30" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="阿里云优惠活动">
									阿里云优惠活动
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/31" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="ztree">
									ztree
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/32" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Cordova">
									Cordova
								</a>
							</li>
							<li class="tag-li">
								<a class="btn btn-default btn-xs" href="https://www.zhyd.me/tag/33" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Android">
									Android
								</a>
							</li>
						</ul>
					</div>
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-comments icon"></i><strong>近期评论</strong></h5>
						<ul class="list-unstyled list-inline comments">
							<li>
								<a href="/blog/detail#comment-58" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="可以">
									<img alt="骑着蜗牛追法拉利" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">骑着蜗牛追法拉利</span> 可以
								</a>
							</li>
							<li>
								<a href="/blog/detail#comment-57" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="​x">
									<img alt="一块乐" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">一块乐</span> ​x
								</a>
							</li>
							<li>
								<a href="https://www.zhyd.me/guestbook#comment-51" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="OK了">
									<img alt="超级管理员" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">超级管理员</span> OK了
								</a>
							</li>
							<li>
								<a href="https://www.zhyd.me/guestbook#comment-48" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="您好，我的网站：陈双义博客，更...">
									<img alt="陈双义博客" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">陈双义博客</span> 您好，我的网站：陈双义博客，更...
								</a>
							</li>
							<li>
								<a href="/blog/detail#comment-47" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="没有哇！没啥影响的，欢迎来学习...">
									<img alt="超级管理员" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">超级管理员</span> 没有哇！没啥影响的，欢迎来学习...
								</a>
							</li>
							<li>
								<a href="/blog/detail#comment-46" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="博客很好看">
									<img alt="匿名" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">匿名</span> 博客很好看
								</a>
							</li>
							<li>
								<a href="https://www.zhyd.me/guestbook#comment-45" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="System.out.prin...">
									<img alt="xsy" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">xsy</span> System.out.prin...
								</a>
							</li>
							<li>
								<a href="/blog/detail#comment-44" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="是我啊！说来也惭愧，学.net...">
									<img alt="Harrison  " src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">Harrison </span> 是我啊！说来也惭愧，学.net...
								</a>
							</li>
							<li>
								<a href="/blog/detail#comment-43" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="40GSSD硬盘啊。">
									<img alt="超级管理员" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">超级管理员</span> 40GSSD硬盘啊。
								</a>
							</li>
							<li>
								<a href="/blog/detail#comment-42" title="" rel="external nofollow" data-toggle="tooltip" data-placement="bottom" data-original-title="空间有多大？">
									<img alt="兽性大发" src="/resource/img/blog/user.png" class="avatar auto-shake" height="64" width="64" onerror="this.src='/resource/img/blog/user.png'">
									<span class="comment-author">兽性大发</span> 空间有多大？
								</a>
							</li>
						</ul>
					</div>
					<div class="sidebar-module">
						<ul class="nav nav-tabs sidebar-tabs" role="tablist">
							<li role="presentation" class="active">
								<a href="/blog/detail#home" aria-controls="home" role="tab" data-toggle="tab"><i class="fa fa-thumbs-o-up"></i>站长推荐</a>
							</li>
							<li role="presentation">
								<a href="/blog/detail#profile" aria-controls="profile" role="tab" data-toggle="tab"><i class="fa fa-list"></i>近期文章</a>
							</li>
							<li role="presentation">
								<a href="/blog/detail#messages" aria-controls="messages" role="tab" data-toggle="tab"><i class="fa fa-hand-peace-o"></i>随机文章</a>
							</li>
						</ul>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">
								<ol class="list-unstyled">
									<li>
										<span class="li-icon li-icon-1">1</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Cordova入门（一）创建android项目">
											Cordova入门（一）创建android项目
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-2">2</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【漏洞公告】Spring Framework多个安全漏洞预警">
											【漏洞公告】Spring Framework多个安全漏洞预警
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-3">3</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="快来薅羊毛！1核 2G1M宽带40GSSD硬盘才99元一年！">
											快来薅羊毛！1核 2G1M宽带40GSSD硬盘才99元一年！
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-4">4</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title=" zTree实现拖拽节点进行排序的功能">
											zTree实现拖拽节点进行排序的功能
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-5">5</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="配置MySQL开启远程连接的方法">
											配置MySQL开启远程连接的方法
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-6">6</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次优化网站首页加载速度的过程">
											记一次优化网站首页加载速度的过程
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-7">7</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【超全】开发常用工具">
											【超全】开发常用工具
										</a>
									</li>
								</ol>
							</div>
							<div role="tabpanel" class="tab-pane" id="profile">
								<ol class="list-unstyled">
									<li>
										<span class="li-icon li-icon-1">1</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Cordova入门（一）创建android项目">
											Cordova入门（一）创建android项目
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-2">2</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【漏洞公告】Spring Framework多个安全漏洞预警">
											【漏洞公告】Spring Framework多个安全漏洞预警
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-3">3</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="快来薅羊毛！1核 2G1M宽带40GSSD硬盘才99元一年！">
											快来薅羊毛！1核 2G1M宽带40GSSD硬盘才99元一年！
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-4">4</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title=" zTree实现拖拽节点进行排序的功能">
											zTree实现拖拽节点进行排序的功能
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-5">5</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="配置MySQL开启远程连接的方法">
											配置MySQL开启远程连接的方法
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-6">6</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次优化网站首页加载速度的过程">
											记一次优化网站首页加载速度的过程
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-7">7</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【超全】开发常用工具">
											【超全】开发常用工具
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-8">8</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="致那位可能在copy我网站的仁兄">
											致那位可能在copy我网站的仁兄
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-9">9</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="通过js注入实现单页面显示多条“一言”">
											通过js注入实现单页面显示多条“一言”
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-10">10</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Java EE重命名为Jakarta EE：Java EE Guardians与Oracle的分歧">
											Java EE重命名为Jakarta EE：Java EE Guardians与Oracle的分歧
										</a>
									</li>
								</ol>
							</div>
							<div role="tabpanel" class="tab-pane" id="messages">
								<ol class="list-unstyled">
									<li>
										<span class="li-icon li-icon-1">1</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之Security">
											SpringBoot配置属性之Security
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-2">2</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="2016年总结">
											2016年总结
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-3">3</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="docker常用命令">
											docker常用命令
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-4">4</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="使用Shell脚本一键部署项目">
											使用Shell脚本一键部署项目
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-5">5</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="vim显示行号等配置和vim中实现格式化内容">
											vim显示行号等配置和vim中实现格式化内容
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-6">6</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【超全】开发常用工具">
											【超全】开发常用工具
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-7">7</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="springMVC+mybatis中mapper配置文件使用">
											springMVC+mybatis中mapper配置文件使用
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-8">8</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（3）：整合Freemark模板">
											SpringBoot项目实战（3）：整合Freemark模板
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-9">9</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之Migration">
											SpringBoot配置属性之Migration
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-10">10</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="js中Cookie的简单使用">
											js中Cookie的简单使用
										</a>
									</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-info icon"></i><strong>网站信息</strong></h5>
						<ul class="ul-default">
							<li> <i class="fa fa-file fa-fw"></i> 文章总数：92 篇</li>
							<li> <i class="fa fa-tags fa-fw"></i> 标签总数：33 个</li>
							<li> <i class="fa fa-folder-open fa-fw"></i> 分类总数：6 个</li>
							<li> <i class="fa fa-comments fa-fw"></i> 留言数量：50 条</li>
							<li> <i class="fa fa-users fa-fw"></i> 在线人数：<span class="online">11</span>人</li>
							<li> <i class="fa fa-calendar fa-fw"></i> 运行天数：201天</li>
							<li> <i class="fa fa-pencil-square fa-fw"></i> 最后更新：2018年04月02日22点</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade nav-search-box" tabindex="-1" role="dialog" aria-labelledby="navSearchModalLabel">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header" style="padding: 5px 15px;">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: 10px;"><span aria-hidden="true">×</span></button>
						<h4><i class="fa fa-search"></i> 搜索文章</h4>
					</div>
					<div class="modal-body">
						<form action="https://www.zhyd.me/" method="post" class="form-horizontal searchForm" id="searchForm">
							<input type="hidden" name="pageNumber" value="1">
							<div class="input-group bottom-line">
								<input type="text" class="form-control br-none" name="keywords" value="" required="required" placeholder="输入搜索内容">
								<span class="input-group-btn">
									<button class="btn btn-default br-none nav-search-btn pointer" type="submit"><i class="fa fa-search"></i> 搜索</button>
								</span>
							</div>
							<div class="clear"></div>
							<ul class="list-unstyled list-inline search-hot">
								<li><strong style="position: relative;top: 2px;color: #999999;">热门搜索：</strong></li>
								<li>
									<a class="pointer" rel="external nofollow"><span class="label label-default">Java</span></a>
								</li>
								<li>
									<a class="pointer" rel="external nofollow"><span class="label label-primary">Springboot</span></a>
								</li>
								<li>
									<a class="pointer" rel="external nofollow"><span class="label label-success">Linux</span></a>
								</li>
								<li>
									<a class="pointer" rel="external nofollow"><span class="label label-info">Maven</span></a>
								</li>
								<li>
									<a class="pointer" rel="external nofollow"><span class="label label-warning">Bootstrap</span></a>
								</li>
								<li>
									<a class="pointer" rel="external nofollow"><span class="label label-danger">阿里云</span></a>
								</li>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade bs-example-modal-sm" id="comment-detail-modal" tabindex="-1" role="dialog" aria-labelledby="comment-detail-modal-label">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
						<h4 class="modal-title" id="comment-detail-modal-label">评论信息框</h4>
						<small><i class="fa fa-lightbulb-o fa-fw"></i>可以通过QQ号实时获取昵称和头像</small>
					</div>
					<div class="modal-body">
						<form id="detail-form" novalidate="novalidate" class="bv-form">
							<input type="hidden" name="avatar">
							<div class="form-group input-logo">
								<input type="text" class="form-control" name="qq" placeholder="选填" value="">
								<img class="pull-left hide" alt="">
								<span class="fa fa-qq pull-left" aria-hidden="true">QQ</span>
							</div>
							<div class="form-group input-logo has-feedback">
								<input type="text" class="form-control" name="nickname" placeholder="必填" value="匿名" data-bv-field="nickname"><i class="form-control-feedback" data-bv-icon-for="nickname" style="display: none; top: 0px;"></i>
								<span class="fa fa-user pull-left" aria-hidden="true">昵称</span>
								<small class="help-block" data-bv-validator="notEmpty" data-bv-for="nickname" data-bv-result="NOT_VALIDATED" style="display: none;">昵称必填</small></div>
							<div class="form-group input-logo has-feedback">
								<input type="text" class="form-control" name="email" placeholder="选填" data-bv-field="email"><i class="form-control-feedback" data-bv-icon-for="email" style="display: none; top: 0px;"></i>
								<span class="fa fa-envelope pull-left" aria-hidden="true">邮箱</span>
								<small class="help-block" data-bv-validator="emailAddress" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">邮箱地址不正确</small></div>
							<div class="form-group input-logo has-feedback">
								<input type="text" class="form-control" name="url" placeholder="选填" data-bv-field="url"><i class="form-control-feedback" data-bv-icon-for="url" style="display: none; top: 0px;"></i>
								<span class="fa fa-globe pull-left" aria-hidden="true">网址</span>
								<small class="help-block" data-bv-validator="uri" data-bv-for="url" data-bv-result="NOT_VALIDATED" style="display: none;">URL地址不正确</small></div>
							<div class="form-group">
								<button type="button" class="btn btn-default btn-sm" id="detail-form-btn"><i class="fa fa-smile-o"></i>提交评论</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="reward" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
						<h4 class="modal-title">山无棱江水为竭，冬雷震震夏雨雪，才敢请君舍</h4>
					</div>
					<div class="modal-body">
						<div class="rewardType" align="center">
							<ul class="list-unstyle list-inline">
								<li style="margin-right: 20px;">
									<div class="iradio_square-green checked" style="position: relative;"><input type="radio" name="type" id="alipay" onclick="PaymentUtils.change(0)" data-index="0" checked="checked" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><span style="margin-left: 5px;">支付宝</span>
								</li>
								<li style="margin-right: 20px;">
									<div class="iradio_square-green" style="position: relative;"><input type="radio" name="type" id="wechat" onclick="PaymentUtils.change(1)" data-index="1" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><span style="margin-left: 5px;">微信</span>
								</li>
							</ul>
						</div>
						<div id="qrcode-container" align="center" style="margin-top: 10px;"></div>
						<div style="width: 100%;color: #a3a3a3;font-size: 16px;font-family: &#39;Microsoft YaHei&#39;;text-align: center;">
							转账时请备注“<strong>博客赞助</strong>”
						</div>
					</div>
				</div>
				<small class="font-bold"></small>
			</div>
			<small class="font-bold"> </small>
		</div>
		<div id="loading" style="display: none;">
			<div class="filter"></div>
			<div class="loader">
				<div class="loading-1"></div>
				<div class="loading-2">Loading...</div>
			</div>
		</div>
		<div class="clear blog-footer">
			<div class="container">
				<div class="col-xs-12 col-sm-4 col-md-4 text-left fade-in">
					<h4>其他链接</h4>
					<ul class="list-unstyled list-inline">
						<li>
							<a href="http://shang.qq.com/wpa/qunwpa?idkey=9f986e9b33b1de953e1ef9a96cdeec990affd0ac7855e00ff103514de2027b60" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" rel="external nofollow" data-original-title="加入我的QQ交流群：190886500"><i class="fa fa-qq"></i>QQ交流群</a>
						</li>
						<li>
							<a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" rel="external nofollow" data-original-title="史上最全的阿里云优惠券"><i class="fa fa-fire fa-fw"></i>阿里云券</a>
						</li>
						<li>
							<a href="https://mi.aliyun.com/shop/19462" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" rel="external nofollow" data-original-title="闲置域名出售"><i class="fa fa-globe fa-fw fa-spin"></i>域名出售</a>
						</li>
						<li>
							<a href="/blog/sitemap" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="网站地图"><i class="fa fa-map-o fa-fw"></i>网站地图</a>
						</li>
						<li>
							<a href="https://www.zhyd.me/recommended" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="站长推荐"><i class="fa fa-thumbs-o-up fa-fw"></i>站长推荐</a>
						</li>
						<li>
							<a href="https://www.zhyd.me/updateLog" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="更新记录"><i class="fa fa-file-o fa-fw"></i>更新记录</a>
						</li>
						<li>
							<a href="/blog/archives" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="归档目录"><i class="fa fa-folder-o fa-fw"></i>归档目录</a>
						</li>
						<li>
							<a href="https://www.zhyd.me/tool" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="推荐工具"><i class="fa fa-fire fa-fw red"></i>推荐工具</a>
						</li>
						<li>
							<a href="/blog/disclaimer" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="免责声明"><i class="fa fa-file-o fa-fw"></i>免责声明</a>
						</li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 text-left fade-in">
					<h4>关于本站</h4>
					<div style="padding: 4px;padding-left: 10px;">
						<p style="white-space: initial;">本站定位：个人技术类博客</p>
						<p style="white-space: initial;">本站作用：写博客、记日志、闲聊扯淡鼓捣技术。</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4 text-left fade-in">
					<h4>问题交流</h4>
					<div class="row" style="padding: 4px;padding-left: 10px;">
						<div class="col-xs-12 col-sm-7 col-md-7" style="white-space: initial;">
							<span>志同道合者欢迎进QQ交流群(190886500)</span>
						</div>
						<div class="col-xs-12 col-sm-5 col-md-5">
							<a href="/resource/img/blog/qq_group.png" class="showImage" title="QQ群(190886500)二维码" rel="external nofollow">
								<img data-original="/resource/img/blog/qq_group.png" alt="QQ群(190886500)二维码" class="img-responsive img-rounded auto-shake lazy-img" style="width: 100px;">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer">
			<div class="clear">
				<p>托管于
					<a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" rel="external nofollow" data-original-title="阿里云-为了无法计算的价值">阿里云</a> &amp;
					<a href="https://www.qiniu.com/" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" rel="external nofollow" data-original-title="七牛云-国内领先的企业级云服务商">七牛云</a> ·
					<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank" title="" data-toggle="tooltip" data-placement="bottom" rel="external nofollow" data-original-title="查看备案信息">鲁ICP备17054970号-1</a>
				</p>
				<p>Copyright©2016-2018 李太阳博客 保留所有权利 ·
					<a href="http://tongji.baidu.com/web/welcome/ico?s=590226d2f4ffbf051442eb75f37333c9" target="_blank" title="" data-toggle="tooltip" data-placement="right" rel="external nofollow" data-original-title="点击查看李太阳博客网站统计详情"><i class="fa fa-bar-chart-o fa-fw fa-spin"></i>网站统计</a>
				</p>
			</div>
		</footer>
		<a class="to-top" title="" data-toggle="tooltip" data-placement="bottom" style="position: fixed; right: 25px; bottom: 50px; cursor: pointer; display: none;" data-original-title="点击返回顶部"></a>
		<script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
		<script type="text/javascript" src="https://cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.js"></script>
		<script type="text/javascript" src="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.min.js"></script>
		<script type="text/javascript" src="https://cdn.bootcss.com/jquery.bootstrapvalidator/0.5.1/js/bootstrapValidator.min.js"></script>
		<script type="text/javascript" src="https://cdn.bootcss.com/js-xss/0.3.3/xss.min.js"></script>
		<script type="text/javascript" src="https://unpkg.com/wangeditor@3.1.1/release/wangEditor.min.js"></script>
		<script type="text/javascript">
            var appConfig = {
                wwwPath: 'https://www.zhyd.me',
                staticPath: 'https://static.zhyd.me/static'
            }
		</script>
		<script type="text/javascript" src="/resource/js/blog/zhyd.core.js"></script>
		<script type="text/javascript" src="/resource/js/blog/zhyd.js"></script>
		<!-- comment插件会请求服务器获取评论内容，静态示例页面中不需要 -->
		<!--<script type="text/javascript" src="/resource/js/blog/zhyd.comment.js"></script>-->
		<script src="https://v1.hitokoto.cn/?encode=js&c=d&select=%23hitokoto" defer></script>
	</body>
</html>