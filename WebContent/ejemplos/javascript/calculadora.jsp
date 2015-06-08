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
				
				
				//definir operaciones para l calculadora
				const SUMAR 		= 0;
				const RESTAR 		= 1;
				const MULTIPLICAR 	= 2;
				const DIVIDIR 		= 3;
				const MODULO 		= 4;
				//operaciones para el parametro1
				const INCREMENTO 	= 5;
				const DECREMENTO 	= 6;
				const ES_PAR		= 7;	//true si es par, false en caso contrario
				
				/**
					Calcula la operacion solicitada para los dos parametros
				*/
				function calculadora ( parametro1, parametro2, operacion ){
					var resultado = null;		
									
					//realizar operacion solicitada
					if( operacion == SUMAR ){
						resultado = parametro1 + parametro2;
					}
					if( operacion == RESTAR ){
						resultado = parametro1 - parametro2;
					}
					if( operacion == MULTIPLICAR ){
						resultado = parametro1 * parametro2;
					}
					if( operacion == DIVIDIR ){
						resultado = parametro1 / parametro2;
					}
					if( operacion == MODULO ){
						resultado = parametro1 % parametro2;
					}
					
					
					if( operacion == INCREMENTO ){
						parametro1++;
						resultado = parametro1;
					}
					if( operacion == DECREMENTO ){
						parametro1--;
						resultado = parametro1;
					}
					if( operacion == ES_PAR ){
						if( parametro1 % 2 == 0 ){
							resultado = true;
						}
						else{
							resultado = false;
						}
					}
						
					return resultado;	
				}
				
				console.info('Calculadora \n')
				
				console.info('5 + 5 = ' + calculadora( 5, 5, SUMAR ) );
				console.info('10 - 67 = ' + calculadora( 10, 67, RESTAR ) );
				console.info('5 * 5 = ' + calculadora( 5, 5, MULTIPLICAR ) );
				console.info('67 / 10 = ' + calculadora( 67, 10, DIVIDIR ) );
				console.info('El modulo de 67 % 10 es ' + calculadora( 67, 10, MODULO ) );
				
				console.info('Incrementar 10 => ' + calculadora( 10, null, INCREMENTO ) );
				console.info('Decrementar 10 => ' + calculadora( 10, null, DECREMENTO ) );
				console.info('10 ¿Es par? => ' + calculadora( 10, null, ES_PAR ) );
				console.info('7 ¿Es par? => ' + calculadora( 7, null, ES_PAR ) );
					
			</script>
			
		</div> <!-- cnt_article -->
		<footer>
			<p>Capitulo 11; pagina 263-272</p>
		</footer>
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>