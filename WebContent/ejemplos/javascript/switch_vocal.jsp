<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h2>Vocal o no?</h2>
		</header>
		<div class="cnt_article">					
			
			<script>
								
				/**
					Ejemplo de uso de un switch-case. 
					Función para saber si una letra es vocal o no?
				*/
				var juego_datos = [	"a", "e", "A", 13, null, undefined, 0.5, "and", "n", "\u00f1", "O" ];
				
				function es_vocal ( letra ){
					var vocal = false;
						
					switch ( letra ) {
						case "a": 
							vocal = true;
							break;
						case "A": 
							vocal = true;
							break;
						case "e": 
							vocal = true;
							break;
						case "E": 
							vocal = true;
							break;
						case "i": 
							vocal = true;
							break;
						case "I": 
							vocal = true;
							break;
						case "o": 
							vocal = true;
							break;
						case "O": 
							vocal = true;
							break;
						case "u": 
							vocal = true;
							break;
						case "U": 
							vocal = true;
							break;
						default:
							vocal = false;				
					}
					
					return vocal;
				}
				
				for ( var i=0; i<juego_datos.length; i++){
					console.info( juego_datos[i] + ', es vocal? ' + es_vocal(juego_datos[i]) );
				}
				
			</script>
			
		</div> <!-- cnt_article -->
		<footer>
			<p>Capitulo 12; pagina 281</p>
		</footer>
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>