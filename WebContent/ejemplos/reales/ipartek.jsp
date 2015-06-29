<!doctype html>

<html lang="es">

<head>
  	<base href="<%=request.getContextPath()%>/">
	<meta charset="utf-8">

	<title>Ipartek</title>
	<meta name="description" content="Ejercicio Practico: Ipartek">
	<meta name="author" content="Ieltxu Orue Ibañez">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
	
	<link rel="stylesheet" type="text/css" href="css/ipartek.css?v=20150618_1.2">
	<!-- FontAsewone -->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.css">	
	
  	<!--[if lt IE 9]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]-->
</head>

<body>
	<div id="container" >
		<header id="head" class="clearfix">
			<div id="logo">
				<h1>IPARTEK</h1>
			</div>
			<nav id="menu" class="clearfix">
				<ul>
            		<li><a href="<%=request.getRequestURL()%>#">Presentacion</a></li>
            		<li><a href="<%=request.getRequestURL()%>#">Acreditaciones</a></li>
            		<li><a href="<%=request.getRequestURL()%>#">Contactanos</a></li>
            		<li><a href="<%=request.getRequestURL()%>#">Localizacion</a></li>
            		<li><a href="<%=request.getRequestURL()%>#">Noticias</a></li>
            		<li><a href="<%=request.getRequestURL()%>#">Empleo</a></li>
        		</ul>
			</nav>	
		</header>

		<div id="content" class="clearfix">
			<aside id="asideleft">
				<ul>
            		<li class="cajita">&nbsp&nbspPresentacion</li>
            		<li class="cajita">&nbsp&nbspAcreditaciones</li>
            		<li class="cajita">&nbsp&nbspContactanos</li>
            		<li class="cajita">&nbsp&nbspLocalizacion</li>
        		</ul>
			</aside>
			<div id="cnt" class="clearfix">
				<div class="caja izq"></div>
				<div class="caja izq"></div>
				<div class="caja2 der"></div>
				<div class="caja der"></div>
				<div class="caja der"></div>
			</div>
			<aside id="asideright">
				<ul>
            		<li class="cajita">&nbsp&nbspPresentacion</li>
            		<li class="cajita">&nbsp&nbspAcreditaciones</li>
            		<li class="cajita">&nbsp&nbspContactanos</li>
            		<li class="cajita">&nbsp&nbspLocalizacion</li>
        		</ul>
			</aside>
		</div>
		
		<footer id="wraper-foot">
			<div id="foot">
				<p>Pie de p&aacute;gina</p>
			</div>
		</footer>		
	</div>	<!-- container -->	

</body>
	
</html>