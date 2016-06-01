<!DOCTYPE html>
<html lang="en">
<head>
  <title>Configurador</title>
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
						<div>
							<h3><strong>Origen:</strong> {{origen}}</h3>
							<h3><strong>Destino:</strong> {{destino}}</h3>
							<h3><strong>Salida:</strong> {{salida}}</h3>
							<h3><strong>Llegada:</strong> {{llegada}}</h3>
							<p><a href="/info/{{sesion}}">Informacion</a></p>
						</div>
					</div>
			</article>
		</div>

	

<!--content end-->
<!--footer -->
		
<!--footer end-->
	
<script type="text/javascript"> Cufon.now(); </script>
</div>
</body>
</html>
