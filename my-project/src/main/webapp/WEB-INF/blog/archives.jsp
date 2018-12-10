<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="baidu-site-verification" content="d4kcdwiGHw">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>归档目录 | 李太阳博客</title>
		<meta name="author" content="李太阳(yadong.zhang0415#gmail.com)">
		<meta name="keywords" content="归档目录">
		<meta name="description" content="归档目录" id="meta_description">
		<link rel="canonical" href="https://www.zhyd.me/archives">
		<link href="/resource/img/blog/favicon.ico" rel="shortcut icon" type="image/x-icon">
		<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="https://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/jquery.bootstrapvalidator/0.5.1/css/bootstrapValidator.min.css" rel="stylesheet">
		<link href="/resource/css/blog/zhyd.core.css" rel="stylesheet" type="text/css">
		<link href="/resource/css/blog/zhyd.comment.css" rel="stylesheet" type="text/css">
		<style type="text/css">
			.bottom-line {
				text-align: center;
			}
			
			.archives-meta {
				margin: 10px;
			}
			/* 文章归档盒子 */
			
			.archives-box {
				margin: 30px 10px;
			}
			
			.archives-box .month {
				color: #000;
				line-height: 30px;
				margin: 5px 0 5px 10px;
			}
			
			.archives-box .month-li {
				line-height: 25px;
				text-indent: 2em;
			}
			
			.archives-box .num {
				color: #999;
				font-size: 14px;
				font-weight: 100;
			}
			
			.archives-box .article-item {
				text-indent: 4em;
			}
		</style>
	</head>

	<body>
		<nav id="topmenu" class="navbar navbar-default navbar-fixed-top" style="opacity: 0;">
			<div class="menu-box">
				<div class="pull-left">
					<ul class="list-unstyled list-inline">
						<li><span id="currentTime">2018年04月11日 09时45分25秒 星期三</span></li>
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
		<div class="container custome-container">
			<nav class="breadcrumb">
				<a class="crumbs" title="" href="https://www.zhyd.me/" data-toggle="tooltip" data-placement="bottom" data-original-title="返回首页"><i class="fa fa-home"></i>首页</a> <i class="fa fa-angle-right"></i>归档目录
			</nav>
			<div class="row">
				<div class="col-sm-8 blog-main">
					<div class="blog-body overflow-initial fade-in">
						<div class="blog-info overflow-initial">
							<div class="bottom-line">
								<h1 class="blog-info-title">
									<strong>文章归档目录</strong>
								</h1>
								<div class="archives-meta"> 站点统计：6个分类&nbsp;&nbsp; 33个标签&nbsp;&nbsp; 92篇文章&nbsp;&nbsp; 50条留言&nbsp;&nbsp; 最后更新：2018年04月02日22点 </div>
								<p class="blog-description hitokoto"></p>
							</div>
							<div class="blog-info-body">
								<div class="archives-box overflow-initial">
									<span id="menu_0" class="menu-point"></span>
									<h3 class="year pointer menu-title">2018年  <span class="num">18 篇</span></h3>
									<ul class="list-box" style="">
										<li>
											<span class="month pointer">04月 <span class="num">2 篇</span></span>
											<ul class="list-box" style="display: block;">
												<li class="month-li">
													<span class="day pointer">08日 <span class="num">2篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Cordova入门（一）创建android项目">Cordova入门（一）创建android项目</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【漏洞公告】Spring Framework多个安全漏洞预警">【漏洞公告】Spring Framework多个安全漏洞预警</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">03月 <span class="num">8 篇</span></span>
											<ul class="list-box" style="display: block;">
												<li class="month-li">
													<span class="day pointer">30日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="致那位可能在copy我网站的仁兄">致那位可能在copy我网站的仁兄</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">29日 <span class="num">2篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title=" zTree实现拖拽节点进行排序的功能"> zTree实现拖拽节点进行排序的功能</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="快来薅羊毛！1核 2G1M宽带40GSSD硬盘才99元一年！">快来薅羊毛！1核 2G1M宽带40GSSD硬盘才99元一年！</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">19日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="配置MySQL开启远程连接的方法">配置MySQL开启远程连接的方法</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">16日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="通过js注入实现单页面显示多条“一言”">通过js注入实现单页面显示多条“一言”</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">06日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Java EE重命名为Jakarta EE：Java EE Guardians与Oracle的分歧">Java EE重命名为Jakarta EE：Java EE Guardians与Oracle的分歧</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">02日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="猿宵节快乐">猿宵节快乐</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">01日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="解决微信小程序无法下载非指定域名文件的方案">解决微信小程序无法下载非指定域名文件的方案</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">02月 <span class="num">5 篇</span></span>
											<ul class="list-box" style="display: block;">
												<li class="month-li">
													<span class="day pointer">24日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="使用Excel的VLOOKUP函数合并不同Sheet页中的相同项">使用Excel的VLOOKUP函数合并不同Sheet页中的相同项</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">11日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="下半年起，谷歌浏览器将把所有HTTP网站标记为“不安全”">下半年起，谷歌浏览器将把所有HTTP网站标记为“不安全”</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">07日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Springboot + Freemarker项目中使用自定义注解">Springboot + Freemarker项目中使用自定义注解</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">06日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="无题">无题</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">01日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Given final block not properly padded异常解决方案">Given final block not properly padded异常解决方案</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">01月 <span class="num">3 篇</span></span>
											<ul class="list-box" style="display: block;">
												<li class="month-li">
													<span class="day pointer">28日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="MySQL的wait_timeout引发的问题">MySQL的wait_timeout引发的问题</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">24日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="cordova打包Apk">cordova打包Apk</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">23日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: block;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="MySql的autoReconnect与autoReconnectForPools属性对比">MySql的autoReconnect与autoReconnectForPools属性对比</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
									<span id="menu_1" class="menu-point"></span>
									<h3 class="year pointer menu-title">2017年  <span class="num">41 篇</span></h3>
									<ul class="list-box" style="display: none;">
										<li>
											<span class="month pointer">11月 <span class="num">1 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">03日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="windows通过ruby安装sass和compass">windows通过ruby安装sass和compass</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">10月 <span class="num">1 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">13日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（9）：整合swagger2">SpringBoot项目实战（9）：整合swagger2</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">08月 <span class="num">2 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">04日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="RHSA-2017_MozillaNSS内存破坏漏洞修复记录">RHSA-2017_MozillaNSS内存破坏漏洞修复记录</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">01日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="vim显示行号等配置和vim中实现格式化内容">vim显示行号等配置和vim中实现格式化内容</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">07月 <span class="num">1 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">17日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次优化网站首页加载速度的过程">记一次优化网站首页加载速度的过程</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">06月 <span class="num">2 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">26日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Java连接Mysql数据库警告WARN:EstablishingSSLconnection">Java连接Mysql数据库警告WARN:EstablishingSSLconnection</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">01日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（8）：四种读取properties文件的方式">SpringBoot项目实战（8）：四种读取properties文件的方式</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">05月 <span class="num">2 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">12日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Java常见异常种类">Java常见异常种类</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">04日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Linux中ImageIO生成图片中文乱码">Linux中ImageIO生成图片中文乱码</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">04月 <span class="num">4 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">25日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【前方高能】无辜躺枪的“死肥宅”">【前方高能】无辜躺枪的“死肥宅”</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">20日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="调试mysql存储过程">调试mysql存储过程</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">07日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（7）：Filter、Listener">SpringBoot项目实战（7）：Filter、Listener</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">02日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="使用nginx搭建文件服务器">使用nginx搭建文件服务器</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">03月 <span class="num">16 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">31日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="走向便捷开发之lombok安装和使用">走向便捷开发之lombok安装和使用</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">30日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次服务器日志查看及BUG维护">记一次服务器日志查看及BUG维护</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">29日 <span class="num">8篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之其他">SpringBoot配置属性之其他</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之Migration">SpringBoot配置属性之Migration</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之Security">SpringBoot配置属性之Security</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之MQ">SpringBoot配置属性之MQ</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之NOSQL">SpringBoot配置属性之NOSQL</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之DataSource">SpringBoot配置属性之DataSource</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之Server">SpringBoot配置属性之Server</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot配置属性之MVC">SpringBoot配置属性之MVC</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">26日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="奥林匹克公园一日游">奥林匹克公园一日游</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">22日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="多说即将关闭">多说即将关闭</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">17日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Gitclone异常RPCfailed;result=18,HTTPcode=200MiB">Gitclone异常RPCfailed;result=18,HTTPcode=200MiB</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">14日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【超全】网页转为图片的那些工具">【超全】网页转为图片的那些工具</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">10日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次修改mysql时区的历程">记一次修改mysql时区的历程</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">08日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="脑子虐我千百遍我待脑子如初恋">脑子虐我千百遍我待脑子如初恋</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">02月 <span class="num">7 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">27日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="vi代码高亮">vi代码高亮</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">20日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="教你八步提高网站的访问速度">教你八步提高网站的访问速度</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">18日 <span class="num">3篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringTask中cron表达式整理记录">SpringTask中cron表达式整理记录</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="整理常见的网络爬虫IP">整理常见的网络爬虫IP</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="【超全】开发常用工具">【超全】开发常用工具</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">16日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="使用Shell脚本一键部署项目">使用Shell脚本一键部署项目</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">15日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="石">石</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">01月 <span class="num">5 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">17日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次怼京东客服的经历">记一次怼京东客服的经历</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">16日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="2016年总结">2016年总结</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">03日 <span class="num">3篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Maven打包过滤jar包">Maven打包过滤jar包</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="docker常用命令">docker常用命令</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Centos7安装Docker">Centos7安装Docker</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
									<span id="menu_2" class="menu-point"></span>
									<h3 class="year pointer menu-title">2016年  <span class="num">33 篇</span></h3>
									<ul class="list-box" style="display: none;">
										<li>
											<span class="month pointer">12月 <span class="num">17 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">30日 <span class="num">6篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="若有来世，我必褪去这身袈裟，陪你浪迹天涯">若有来世，我必褪去这身袈裟，陪你浪迹天涯</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Centos7安装Apache2和Mysql">Centos7安装Apache2和Mysql</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Tomcat启动时卡在“INFO:Deploying......”的解决方法">Tomcat启动时卡在“INFO:Deploying......”的解决方法</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="CMD一键获取所有连接过的WIFI密码">CMD一键获取所有连接过的WIFI密码</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot整合Freemarker项目ftl中使用include的异常">SpringBoot整合Freemarker项目ftl中使用include的异常</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（6）：整合Log4j和Aop，实现简单的日志记录">SpringBoot项目实战（6）：整合Log4j和Aop，实现简单的日志记录</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">26日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Linux下查看/管理当前登录用户及用户操作历史记录">Linux下查看/管理当前登录用户及用户操作历史记录</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">22日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（5）：集成分页插件">SpringBoot项目实战（5）：集成分页插件</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">19日 <span class="num">4篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（4）：集成Mybatis">SpringBoot项目实战（4）：集成Mybatis</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（3）：整合Freemark模板">SpringBoot项目实战（3）：整合Freemark模板</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（2）：集成SpringBoot">SpringBoot项目实战（2）：集成SpringBoot</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（1）：新建Maven项目">SpringBoot项目实战（1）：新建Maven项目</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">18日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Git提交 报unexpectedly异常">Git提交 报unexpectedly异常</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">16日 <span class="num">3篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Nginx初始化的配置文件nginx.conf">Nginx初始化的配置文件nginx.conf</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Idea使用Maven创建多模块SpringBoot项目问题记录">Idea使用Maven创建多模块SpringBoot项目问题记录</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Nginx 和 tomcat开启Gzip功能的方法">Nginx 和 tomcat开启Gzip功能的方法</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">06日 <span class="num">1篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="教你如何ping指定端口">教你如何ping指定端口</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										<li>
											<span class="month pointer">11月 <span class="num">16 篇</span></span>
											<ul class="list-box" style="display: none;">
												<li class="month-li">
													<span class="day pointer">30日 <span class="num">5篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Centos永久禁止ping的设置方法">Centos永久禁止ping的设置方法</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="ubuntu默认防火墙">ubuntu默认防火墙</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Spring MVC 中上传文件的多种实现及区别">Spring MVC 中上传文件的多种实现及区别</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="CentOS中zip压缩和unzip解压缩命令详解">CentOS中zip压缩和unzip解压缩命令详解</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="查看本机IP、端口以及删掉指定程序">查看本机IP、端口以及删掉指定程序</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">19日 <span class="num">9篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="base64Encode对图片进行编码">base64Encode对图片进行编码</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="base64字符串解码转换成图片">base64字符串解码转换成图片</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="关于动态获取服务器下图片（显示头像）">关于动态获取服务器下图片（显示头像）</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="js中Cookie的简单使用">js中Cookie的简单使用</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="js学习记录">js学习记录</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="springMVC+mybatis中mapper配置文件使用">springMVC+mybatis中mapper配置文件使用</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="mybatis中模糊查询">mybatis中模糊查询</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="java.lang.ClassNotFoundException: net.sf.ezmorph.Morpher 异常">java.lang.ClassNotFoundException: net.sf.ezmorph.Morpher 异常</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="关于ajax请求 的处理方式">关于ajax请求 的处理方式</a>
														</li>
													</ul>
												</li>
												<li class="month-li">
													<span class="day pointer">09日 <span class="num">2篇</span> </span>
													<ul class="list-box" style="display: none;">
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="linux系统下解压war包">linux系统下解压war包</a>
														</li>
														<li class="article-item">
															<a href="/blog/detail" rel="bookmark" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="chromedriver与chrome版本映射表(更新至v2.25)">chromedriver与chrome版本映射表(更新至v2.25)</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
							<div class="article-footer overflow-initial">
								<span class="blog-description hitokoto num"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 blog-sidebar">
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-home icon"></i><strong>关于我</strong></h5>
						<div class="widget">
							<div id="feed_widget">
								<div class="feed-about">
									<div class="about-main">
										<div class="about-img">
											<a href="/resource/img/blog/wx_300px.png" class="showImage" title="微信公众号"><img src="/resource/img/blog/wx_300px.png" alt="微信公众号"></a>
										</div>
										<div class="about-name">李太阳博客</div>
										<div class="about-the">一个程序员的个人博客，心之所向，无所不能</div>
									</div>
									<div class="clear"></div>
									<ul>
										<li class="weixin auto-shake" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="bottom" data-html="true" data-content="&lt;img src=&#39;https://static.zhyd.me/static/img/wx_300px.png&#39; style=&#39;width: 130px;&#39; alt=&#39;QR Code&#39;&gt;" data-original-title="" title="">
											<a class="tag-icon" title="微信" rel="external nofollow"><i class="fa fa-weixin"></i></a>
										</li>
										<li class="tqq auto-shake">
											<a class="tag-icon" href="javascript:window.open(&#39;tencent://message/?uin=843977358&amp;Site=www.zhyd.me&amp;Menu=yes&#39;)" title="点击QQ联系我" target="blank" rel="external nofollow"><i class="fa fa-qq"></i></a>
										</li>
										<li class="tsina auto-shake">
											<a class="tag-icon" href="http://weibo.com/211230415" title="点击查看我的微博" target="_blank" rel="external nofollow"><i class="fa fa-weibo"></i></a>
										</li>
										<li class="github auto-shake">
											<a class="tag-icon" href="https://github.com/zhangyd-c" title="点击查看我的github" target="_blank" rel="external nofollow"><i class="fa fa-github"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-module">
						<h5 class="sidebar-title"><i class="fa fa-thumbs-o-up icon"></i><strong>站长推荐优惠活动，领优惠券啦~~</strong></h5>
						<a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db&amp;utm_source=wylo59db" target="_blank" rel="external nofollow">
							<img src="/resource/img/blog/ad/aliyun_sale.png" alt="阿里云首购8折" style="margin: 0 auto;" class="img-responsive">
						</a>
					</div>
					<div class="sidebar-module article-module" style="top: 0;">
						<h5 class="sidebar-title"><i class="fa fa-book icon"></i><strong>本文目录</strong> <i class="fa fa-close pull-right close-article-menu hide pointer"></i></h5>
						<div id="article-menu" style="display: block;">
							<ul class="list-unstyled">
								<li style="padding-left:20px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="https://www.zhyd.me/archives#menu_0" style="display:inline-block;">2018年 18 篇</a>
								</li>
								<li style="padding-left:20px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="https://www.zhyd.me/archives#menu_1" style="display:inline-block;">2017年 41 篇</a>
								</li>
								<li style="padding-left:20px;line-height: 2;"><i class="fa fa-angle-right"></i>
									<a href="https://www.zhyd.me/archives#menu_2" style="display:inline-block;">2016年 33 篇</a>
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
								<a href="https://www.zhyd.me/archives#home" aria-controls="home" role="tab" data-toggle="tab"><i class="fa fa-thumbs-o-up"></i>站长推荐</a>
							</li>
							<li role="presentation">
								<a href="https://www.zhyd.me/archives#profile" aria-controls="profile" role="tab" data-toggle="tab"><i class="fa fa-list"></i>近期文章</a>
							</li>
							<li role="presentation">
								<a href="https://www.zhyd.me/archives#messages" aria-controls="messages" role="tab" data-toggle="tab"><i class="fa fa-hand-peace-o"></i>随机文章</a>
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
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="vim显示行号等配置和vim中实现格式化内容">
											vim显示行号等配置和vim中实现格式化内容
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
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="vi代码高亮">
											vi代码高亮
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-4">4</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Idea使用Maven创建多模块SpringBoot项目问题记录">
											Idea使用Maven创建多模块SpringBoot项目问题记录
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-5">5</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="记一次修改mysql时区的历程">
											记一次修改mysql时区的历程
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-6">6</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（5）：集成分页插件">
											SpringBoot项目实战（5）：集成分页插件
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-7">7</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（9）：整合swagger2">
											SpringBoot项目实战（9）：整合swagger2
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-8">8</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="SpringBoot项目实战（1）：新建Maven项目">
											SpringBoot项目实战（1）：新建Maven项目
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-9">9</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="致那位可能在copy我网站的仁兄">
											致那位可能在copy我网站的仁兄
										</a>
									</li>
									<li>
										<span class="li-icon li-icon-10">10</span>
										<a href="/blog/detail" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Springboot + Freemarker项目中使用自定义注解">
											Springboot + Freemarker项目中使用自定义注解
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
						<form id="detail-form">
							<input type="hidden" name="avatar">
							<div class="form-group input-logo">
								<input type="text" class="form-control" name="qq" placeholder="选填" value="">
								<img class="pull-left hide" alt="">
								<span class="fa fa-qq pull-left" aria-hidden="true">QQ</span>
							</div>
							<div class="form-group input-logo">
								<input type="text" class="form-control" name="nickname" placeholder="必填" value="匿名">
								<span class="fa fa-user pull-left" aria-hidden="true">昵称</span>
							</div>
							<div class="form-group input-logo">
								<input type="text" class="form-control" name="email" placeholder="选填">
								<span class="fa fa-envelope pull-left" aria-hidden="true">邮箱</span>
							</div>
							<div class="form-group input-logo">
								<input type="text" class="form-control" name="url" placeholder="选填">
								<span class="fa fa-globe pull-left" aria-hidden="true">网址</span>
							</div>
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
		<!-- loading弹窗 -->
		<div id="loading">
			<div class="filter"></div>
			<div class="loader">
				<div class="loading-1"></div>
				<div class="loading-2">Loading...</div>
			</div>
		</div>
		<!-- footer -->
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
		<a class="to-top" title="" data-toggle="tooltip" data-placement="bottom" style="position: fixed; right: 25px; bottom: 50px; cursor: pointer;" data-original-title="点击返回顶部"></a>
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
		<script type="text/javascript" src="/resource/js/blog/zhyd.comment.js"></script>
		<script src="https://v1.hitokoto.cn/?encode=js&c=d&select=.hitokoto%27);dom=$('.hitokoto');for(var i=0;i<dom.length;i%2B%2B){dom[i].innerText=hitokoto;}})()//" defer></script>
	</body>
</html>