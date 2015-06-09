<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h2>Introduccion</h2>
		</header>
		<div class="cnt_article">					
			<h3>Ejemplo muy basico</h3>
			<p>Capitulo 11; pagina 263-272</p>
			
			<h3>Ejemplo switch -- entradas cine</h3>
			<p>Capitulo 12; pagina 283</p>
			
			
			
			
			
		</div> <!-- cnt_article -->
		<footer>
			<p>Para visualizar entrar en la console de Chrome 'ctrl+shift+i'</p>
		</footer>
	</article>

</section>

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
	
	
	
	/**
		Ejemplo de uso de un switch-case. 
		Función para saber si una letra es vocal o no?
	*/
	var diaSemana = "lunes";
	var edad = 100;
	
	function precio_entrada ( diaSemana, edad ){
		var precio = 0;
			
		switch ( diaSemana ) {
			case "lunes": 
				if ( edad <= 35){
					precio = 2;
				}
				else{
					precio = 5;
				}
				break;
			case "martes": 
				if ( edad <= 25){
					precio = 2;
				}
				else if ( edad > 25 && edad <= 50 ){
					precio = 5;
				}
				else{
					precio = 7;
				}
				break;
			case "miercoles": 
				if ( edad <= 18){
					precio = 3;
				}
				else if ( edad > 18 && edad <= 50 ){
					precio = 5;
				}
				else{
					precio = 8;
				}
				break;
			case "jueves": 
				if ( edad <= 18){
					precio = 5;
				}
				else{
					precio = 7;
				}
				break;
			default:
				precio = 10;				
		}
		
		return precio;
	}
	
	console.info( 'El precio de la entrada un ' + diaSemana + ' para un@ de ' + edad + ' años, es de ' + precio_entrada( diaSemana, edad) + '€.' );
	
	
</script>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>