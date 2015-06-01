<jsp:include page="../../plantillas/head.jsp"></jsp:include>

<hr>

<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<hr>

<section>

<h1>Ejemplo de login</h1>
	
<form action="ejemplos/formularios/controlador.jsp" method="post">

	<label for="nombre">Dime tu nombre:</label>
	<input type="text" name="nombre" id="nombre" value="" >
	<br>
	
	<label for="pass">Escribe Contrase&ntilde;a:</label>
	<input type="password" name="pass" id="pass" value="" placeholder="solo numeros o letras" />
	<br>
			
	<input type="submit" value="Acceder" />
	
</form>

</section>

<hr>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>

