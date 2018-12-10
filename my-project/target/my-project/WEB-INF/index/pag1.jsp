<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="https://fonts.googleapis.com/css?family=Roboto+Mono:300,500,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="/resource/index/GridLoadingAnimations-master/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="/resource/index/GridLoadingAnimations-master/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="/resource/index/GridLoadingAnimations-master/sponsor/pater.css" />
		<script>document.documentElement.className = 'js';</script>
	</head>
	<body class="loading">
		<svg class="hidden">
			<symbol id="icon-arrow" viewBox="0 0 24 24">
				<title>arrow</title>
				<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
			</symbol>
			<symbol id="icon-drop" viewBox="0 0 24 24">
				<title>drop</title>
				<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
			</symbol>
		</svg>
		<main>
			<header class="codrops-header">
				<h1 class="codrops-header__title">胖嘉敏</h1>
			</header>
			<div class="content content--side">
				<div class="control control--grids">
					<span class="control__title">switch layout</span>
					<div class="control__item">
						<input class="control__radio" type="radio" name="grid-type" value="grid--type-a" id="control-grid-a" checked>
						<label class="control__label" for="control-grid-a">grid A</label>
					</div>
					<div class="control__item">
						<input class="control__radio" type="radio" name="grid-type" value="grid--type-b" id="control-grid-b">
						<label class="control__label" for="control-grid-b">grid B</label>
					</div>
					<div class="control__item">
						<input class="control__radio" type="radio" name="grid-type" value="grid--type-c" id="control-grid-c">
						<label class="control__label" for="control-grid-c">grid C</label>
					</div>
				</div>	
			</div>
			<div class="content content--side content--right">
				<div class="control control--effects">
					<span class="control__title">run effect</span>
					<button class="control__btn" data-fx="Hapi">Hapi</button>
					<button class="control__btn" data-fx="Amun">Amun</button>
					<button class="control__btn" data-fx="Kek">Kek</button>
					<button class="control__btn" data-fx="Isis">Isis</button>
					<button class="control__btn" data-fx="Montu">Montu</button>
					<button class="control__btn" data-fx="Osiris">Osiris</button>
					<button class="control__btn" data-fx="Satet">Satet</button>
					<button class="control__btn" data-fx="Atum">Atum</button>
					<button class="control__btn" data-fx="Ra">Ra</button>
					<button class="control__btn" data-fx="Sobek">Sobek</button>
					<button class="control__btn" data-fx="Ptah">Ptah</button>
					<button class="control__btn" data-fx="Bes">Bes</button>
					<button class="control__btn" data-fx="Seker">Seker</button>
					<button class="control__btn" data-fx="Nut">Nut</button>
					<button class="control__btn" data-fx="Shu">Shu</button>
				</div>
			</div>
			<div class="content content--center">
				<div class="grid grid--type-a">
					<div class="grid__sizer"></div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/1.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link pater" href="#">
							<div class="pater__img"></div>
							<div class="pater__content">
								<h2 class="pater__title" aria-label="fullstory">See Every Click, Swipe, <br> and Scroll</h2>
								<p class="pater__desc">See how users experience your designs with FullStory.</p>
								<span class="pater__call">Get it free today!</span>
							</div>
						</a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/3.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/5.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/6.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/7.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/9.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/10.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/11.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/10.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/1.jpg" alt="Some image" /></a>
					</div>
				</div>
				<div class="grid grid--type-b">
					<div class="grid__sizer"></div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/11.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/5.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link pater pater--small" href="#">
							<div class="pater__img"></div>
							<div class="pater__content">
								<h2 class="pater__title" aria-label="fullstory">See Every Click, Swipe, <br> and Scroll</h2>
								<p class="pater__desc">See how users experience your designs with FullStory.</p>
								<span class="pater__call">Get it free today!</span>
							</div>
						</a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/1.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/6.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/7.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/5.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/3.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/5.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/6.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/7.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/1.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/3.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/5.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/6.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/7.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set1/11.jpg" alt="Some image" /></a>
					</div>
				</div>
				<div class="grid grid--type-c">
					<div class="grid__sizer"></div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/1.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link pater" href="#">
							<div class="pater__img"></div>
							<div class="pater__content">
								<h2 class="pater__title" aria-label="fullstory">See Every Click, Swipe, <br> and Scroll</h2>
								<p class="pater__desc">See how users experience your designs with FullStory.</p>
								<span class="pater__call">Get it free today!</span>
							</div>
						</a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/3.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/5.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/6.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/10.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/11.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/7.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/9.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/2.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/4.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/6.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/8.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/10.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/1.jpg" alt="Some image" /></a>
					</div>
					<div class="grid__item">
						<a class="grid__link" href="#"><img class="grid__img" src="/resource/index/GridLoadingAnimations-master/img/set3/2.jpg" alt="Some image" /></a>
					</div>
				</div>
			</div>
			
		</main>
		<script src="/resource/index/GridLoadingAnimations-master/js/imagesloaded.pkgd.min.js"></script>
		<script src="/resource/index/GridLoadingAnimations-master/js/masonry.pkgd.min.js"></script>
		<script src="/resource/index/GridLoadingAnimations-master/js/anime.min.js"></script>
		<script src="/resource/index/GridLoadingAnimations-master/js/main.js"></script>
	</body>
</html>
