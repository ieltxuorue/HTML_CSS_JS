<!doctype html>

<html lang="es">

<head>

	<base href="<%=request.getContextPath()%>/">
	
	<meta charset="utf-8">

	<title>Hola Mundo | Hay que cambiarloooooo...</title>
	<meta name="description" content="Mi primera pagina en HTML5, espero que no sea la ultima">
	<meta name="author" content="Ieltxu Orue Ibañez">
	
	<!-- ?v=  Para pasar un parametro. FUNCION => Para obligar al navegador a descargar el ultimo estilo. -->
	<link rel="stylesheet" type="text/css" href="css/styles.css?v=20150518_1.0">
	
	<!-- jQuery UI CSS -->
	<link rel="stylesheet" type="text/css" href="js/jquery-ui-1.11.4.custom/jquery-ui.css">
	<!-- FontAsewone -->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.css">
	<!-- FontMeteoIcon -->
	<link rel="stylesheet" type="text/css" href="fonts/fontmeteo/css/font-meteo.css">
  
	<!-- icono pestaña -->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">	
	
	<!-- Los JavasScript mejor abajo por su tiempo de carga -->

  	<!--[if lt IE 9]>
  	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  	<![endif]-->
  
  
  
  
</head>

<body>

<div id="container">

	<noscript>
		<h3>JavaScript NOT ENABLE!!!</h3>
		<p>Tienes deshabilitado JavaScript</p>
		<p>Habilitalo en tu navegador o no dispondras del 100% de la web</p>
	</noscript>

	<header id="head">
		
		<div class="clearfix">
			<div id="logo">
				<a href=""><img src="img/dado.png" alt="Dado de seis caras"/></a>
			</div>
		
			<h1>Ejemplos HTML5, CSS3 y JavaScript</h1>
		</div>	<!-- Navegacion menu principal -->

	