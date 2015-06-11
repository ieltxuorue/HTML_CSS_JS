<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h2>Objetos básicos de JavaScript</h2>
		</header>
		<div class="cnt_article">
			<h3>Window</h3>
			<ul>
				<li>
					<strong>location:</strong>
					<span id="w_location"></span>
				</li>
				<li>
					<strong>name:</strong>
					<span><mark id="w_name"></mark></span><code>document.title</code> para el nombre de la pestaña
				</li>
				<li>
					<strong>window.open():</strong>
					<input type="button" id="w_open" value="window.open(url,nombe,opciones)">
				</li>
			</ul>
			<script>
				var span_location = document.getElementById('w_location');
				span_location.innerHTML = window.location;
				//document.getElementById('w_location').innerHTML = window.location;
				document.getElementById('w_name').innerHTML = window.name; // Esta vacio.
				
				var btn_w_open =  document.getElementById('w_open');
				btn_w_open.onclick = function () {
					console.info('Hemos hecho click');
					window.open("http://localhost:8080/HolaMundoIeltxu/ejemplos/javascript/objetos.jsp", "w_open", "height=200px, width=500px" );
				}
			</script>
			<p>Capitulo 13; pagina 306</p>
			
			
			<h3>Date</h3>
								
			
			
			
			
			
			
			
		</div> <!-- cnt_article -->
		<footer>
			<p>Capitulo 13; pagina 306</p>
			<p>Para visualizar entrar en la console de Chrome 'ctrl+shift+i'</p>
		</footer>
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>