<!DOCTYPE html>
<html lang="en">
<head>
  <title>Informacion</title>
<meta charset="utf-8">
<link rel="stylesheet" href="/static/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="/static/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="/static/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="/static/js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="/static/js/cufon-yui.js"></script>
<script type="text/javascript" src="/static/js/cufon-replace.js"></script>  
<script type="text/javascript" src="/static/js/Cabin_400.font.js"></script>
<script type="text/javascript" src="/static/js/tabs.js"></script> 
<script type="text/javascript" src="/static/js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="/static/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="/static/js/atooltip.jquery.js"></script>
<script type="text/javascript" src="/static/js/script.js"></script>
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
			<h1 id="logo">Air lines</h1>
			<h1><span id="slogan">Listado de Precios</span></h1>
		</div>
	</header>
<!-- / header -->	
<!--content -->


	<style>
	table, th, td {
   		border: 1px solid black;
    	border-collapse: collapse;
	}
	th, td {
    	padding: 5px;
    	text-align: left;
	}
	</style>

		<table border="1" style="width:100%">
		<tr>
  			<td WIDTH=100><strong>Minutos</strong></td>
  			<td WIDTH=100><strong>Precio</strong></td>
 			<td WIDTH=5><strong>Link</strong></td>
		</tr>
		</table>
	%for d,p,c in zip(duracion,precio,compra):
		<table style="width:100%">
		<tr>
 			<td WIDTH=100>{{d}}</td>
  			<td WIDTH=100>{{p}}</td>
  			<td WIDTH=5><a href="{{c}}">Comprar billete</a></td>
		</tr>
		</table>
	% end

<!--content end-->
<!--footer -->
		
<!--footer end-->
	
<script type="text/javascript"> Cufon.now(); </script>
</div>
</body>
</html>
