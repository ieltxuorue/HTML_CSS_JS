<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h2>Introduccion</h2>
		</header>
		<div class="cnt_article">					
			
			<script>
				//declaracion variables globales
				var cantidad1 = 45;
				var cantidad2 = 20;
				
				/**
					Funcion para sumar dos parametros y retomar la suma de ambos
				*/
				function sumar( parametro1, parametro2 ) {
					//declaracion variables locales
					var resultado;		//undefined
					
					//sumar parametros y guardar en la variable
					resultado = parametro1 + parametro2;
					
					//retorno del valor
					return resultado;	
				}			
				
				//llamada a la funcion
				console.info('El \'resulado\': \n\t es igual a ' + sumar( cantidad1, cantidad2 ) );		
			</script>
			
		</div> <!-- cnt_article -->
		<footer>
			<p>Capitulo 11; pagina 263-272</p>
		</footer>
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>