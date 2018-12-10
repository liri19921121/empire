<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="baidu-site-verification" content="d4kcdwiGHw">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>留言板 | 李太阳博客</title>
		<meta name="author" content="李太阳(yadong.zhang0415#gmail.com)">
		<meta name="keywords" content="李太阳博客,留言板,原创博客留言,个人原创网站,个人技术博客">
		<meta name="description" content="我的留言板,欢迎给我的个人原创博客留言 - 李太阳博客" id="meta_description">
		<link rel="canonical" href="/blog/guestbook">
		<link href="/resource/img/blog/favicon.ico" rel="shortcut icon" type="image/x-icon">
		<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="https://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.min.css" rel="stylesheet">
		<link href="https://cdn.bootcss.com/jquery.bootstrapvalidator/0.5.1/css/bootstrapValidator.min.css" rel="stylesheet">
		<link href="/resource/css/blog/zhyd.core.css" rel="stylesheet" type="text/css">
		<link href="/resource/css/blog/zhyd.comment.css" rel="stylesheet" type="text/css">
		<style>
			ul {
				list-style: none;
				margin-left: 0;
				padding-left: 0;
			}
		</style>
	</head>

	<body>
		<nav id="topmenu" class="navbar navbar-default navbar-fixed-top" style="opacity: 1;">
			<div class="menu-box">
				<div class="pull-left">
					<ul class="list-unstyled list-inline">
						<li><span id="currentTime">2018年04月11日 09时44分15秒 星期三</span></li>
					</ul>
					<div class="clear"></div>
				</div>
				<div class="menu-topmenu-container pull-right">
					<ul class="list-unstyled list-inline pull-left">
						<li>
							<a href="/blog/about" class="menu_a" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="关于博客"><i class="fa fa-info fa-fw"></i>关于</a>
						</li>
						<li class="active">
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
				<a class="crumbs" title="" href="https://www.zhyd.me/" data-toggle="tooltip" data-placement="bottom" data-original-title="返回首页"><i class="fa fa-home"></i>首页</a>
				<i class="fa fa-angle-right"></i>留言板
			</nav>
			<div class="row">
				<div class="col-sm-12 blog-main">
					<div class="blog-header">
						<h1 class="blog-title">留言板</h1>
						<p class="blog-description" id="hitokoto"></p>
						<div class="info">
							<a href="javascript:void(0);" target="_blank" title="点击QQ联系我" onclick="window.open(&#39;tencent://message/?uin=843977358&amp;Site=www.zhyd.me&amp;Menu=yes&#39;)" rel="external nofollow"><i class="fa fa fa-qq fa-fw"></i>QQ联系</a>
							|
							<a href="mailto:yadong.zhang0415@gmail.com" target="_blank" title="点击给我发邮件" rel="external nofollow"><i class="fa fa fa-envelope fa-fw"></i>邮箱联系</a>
							|
							<a href="http://weibo.com/211230415" target="_blank" title="点击查看我的微博" rel="external nofollow"><i class="fa fa fa-weibo fa-fw"></i>@七彩狼丿</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12 blog-main">
					<div class="blog-body expansion">
						<div class="alert alert-default alert-dismissible" role="alert" style="padding: 0px;">
							<ul>
								<li><i class="fa fa-lightbulb-o fa-fw"></i> 随便留言，只要不是反人类、反国家的危险言论。<strong>相信我！删除真的只需要1秒！</strong></li>
								<li><i class="fa fa-lightbulb-o fa-fw"></i> 欢迎各种花式留言！e.g.<code>System.out.println("突如其来的骚，闪了老子的腰！");</code></li>
								<li><i class="fa fa-heartbeat fa-fw"></i> <strong>爱谁谁...</strong></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-12 blog-main">
					<div class="blog-body expansion">
						<div id="comment-box" data-id="-1">
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
		<!-- loading弹窗 -->
		<div id="loading" style="display: none;">
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