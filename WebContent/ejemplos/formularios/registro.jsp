<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h2>Alta nuevo Usuario</h2>
		</header>
	
		<div id="cnt_login">
			<form action="ejemplos/formularios/controlador_new_user.jsp" method="post" id="form_new_user"
				  onsubmit="validar(this); return false;">		
				
				<label for="usuario">Usuario:</label>
				<input type="text" name="usuario" id="usuario" value="" >								
				<br><br>	
				
				<label for="mail">Email:</label>
				<input type="email" name="mail" id="mail" value="">								
				<br><br>		
				
				<label for="pass">Contrase&ntilde;a:</label>
				<input type="password" name="pass" id="pass" value="" placeholder="solo numeros o letras" />
				<br><br>	
				
				<label for="repass">Repite Contrase&ntilde;a:</label>
				<input type="password" name="repass" id="repass" value="" placeholder="solo numeros o letras"/>
				<br><br>			
				
				<input type="submit" value="Registrate" />			
			</form>							
		</div>		
		<footer>
			<p></p>
		</footer>
	</article>	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>

