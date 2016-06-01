<!DOCTYPE html>
<html lang="en">
<head>
  <title>TuVueloIdeal</title>
<meta charset="utf-8">
<link rel="stylesheet" href="static/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="static/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="static/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="static/js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="static/js/cufon-yui.js"></script>
<script type="text/javascript" src="static/js/cufon-replace.js"></script>  
<script type="text/javascript" src="static/js/Cabin_400.font.js"></script>
<script type="text/javascript" src="static/js/tabs.js"></script> 
<script type="text/javascript" src="static/js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="static/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="static/js/atooltip.jquery.js"></script>
<script type="text/javascript" src="static/js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">
	.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url(js/PIE.htc)}
</style>
<![endif]-->
<!--[if lt IE 7]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
	</div>
<![endif]-->
</head>
<body id="page1">

<div class="main">
<!--header -->
	<header>
		<div class="wrapper">
			<h1><a href="index.html" id="logo">Air lines</a></h1>
			<span id="slogan">Vuelos rápidos &amp; Seguros</span>
			<nav id="top_nav">
			</nav>
		</div>
		<nav>
			<ul id="menu">
				<li id="menu_active"><a href="index.tpl"><span><span>Configurador</span></span></a></li>
			</ul>
		</nav>
	</header>
<!-- / header -->
<!--content -->
	<section id="content">
		<div class="for_banners">
			<article class="col1">
						<div class="tabs">
							<ul class="nav">
								<li class="selected"><a href="#Flight">Vuelos</a></li>
							</ul>
							<div class="content">
								<div class="tab-content" id="Flight">
									<form id="form_buscar" action="/buscar" method="post">
										<div>
											<div class="radio">
												<div class="wrapper">
													 <input type="radio" name="name1" checked>
													 <span class="left">Estandar</span>
													 
											</div>
											<div class="row">
												<span class="left">Desde</span>
												<input type="text" name="desde" class="input">
											</div>
											<div class="row">
												<span class="left">A</span>
												<input type="text" name="a" class="input">
											</div>
											<div class="wrapper">
												<div class="col1">
													<div class="row">
														<span class="left">Salida</span>
														<input type="text" name="salida" class="input1">
													</div>
													<div class="row">
														<span class="left">Regreso</span>
														<input type="text" name="regreso" class="input1">
													</div>
												</div>
											</div>											
											<div class="wrapper">
												<input value="Buscar" type="submit" />
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>	
					</article>
				</div>
<script type="text/javascript"> Cufon.now(); </script>
<script>
	$(document).ready(function() {
		tabs.init();
	});
	jQuery(document).ready(function($) {
		$('#form_1, #form_2, #form_3').jqTransform({imgPath:'jqtransformplugin/img/'});	
	});
	$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
		slices:15,
		animSpeed:500,
		pauseTime:6000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, //Next & Prev
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		controlNavThumbsFromRel:false, //Use image rel for thumbs
		controlNavThumbsSearch: '.jpg', //Replace this with...
		controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		keyboardNav:true, //Use left & right arrows
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:1, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
	});
</script>		

</body>
</html>
