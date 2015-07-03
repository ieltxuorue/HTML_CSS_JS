/*
	Primer JavaScript para trastear con el.
	Cuanto menos peso de JS tenga el proyecto mejor.
		
	version:	1.0
	author:		Ieltxu Orue Ibañez  
	date:		20150518
	

*/

//ARRAY CON TODOS LOS NOMBRES
var afortunados = [	"PROFE",
					"MIKEL", "CRISTINA", "UNAI",  
					"IELTXU", "ARITZ", "ANDER", "JAVI",
					"LARA", "RAUL", "JAIONE", "DAVID"];
						
/**
*	Comentario de funcion:
*	Genera un numero aleatorio entre el 1 y el 12
*	lo muestra en el <label> con id='afortunado'
*/
function obtener_ganador(){
	
	var lbl_afortunado = document.getElementById('num_afortunado');
	
	//obtener numero aleatorio de 0 a 11
	var num_aleatorio = Math.floor(Math.random() * (afortunados.length));
	
	//Mostrar el numero y el afortunado
	lbl_afortunado.innerHTML = num_aleatorio + ' - ' + afortunados[num_aleatorio];
	
	//Poner fondo blanco a todas las celdas de la tabla
	var celdas = document.getElementsByTagName('td');
	for (i = 0; i<celdas.length; i++) {
		celdas[i].style.backgroundColor = 'white';
	}
	
	/*************************************
	 * 			 ESTADISTICAS 			 *
	 * Guardar la tirada en localStorage *
	 *************************************/
	//Aumentar en uno la tirada.
	if( localStorage.getItem('TIRADA') ){
		//Se le suma uno a la tirada
		localStorage.setItem('TIRADA', parseInt(localStorage.getItem('TIRADA')) + 1 );
	}else{
		//Si es la primera tirada inicializarla a 1
		localStorage.setItem('TIRADA', '1');
	}
	
	//Comprobar si existe el afortunado en localStorage
	if( localStorage.getItem(afortunados[num_aleatorio]) ){
		//El afortunado exite, sumarle uno a su mala suerte
		localStorage.setItem(afortunados[num_aleatorio], parseInt(localStorage.getItem(afortunados[num_aleatorio])) + 1 );
	}else{
		//El afortunado no existia, introducirlo en el localStorage
		localStorage.setItem(afortunados[num_aleatorio], '1');
	}
	
	//Mostrar el RANKING
	var ranking = $('#ranking');
	
	//limpiar lista
	ranking.html('<tr><th>Afortunado</th><th>Nº Veces</th><th>Porcentaje(%)</th></tr>');
	//Recorrer localStorage y mostrar los fortunados
	for(i=0;i<afortunados.length;i++){
		if(localStorage.getItem(afortunados[i])){
			ranking.append('<tr><td>'+ afortunados[i] +'</td><td>'+ localStorage.getItem(afortunados[i]) +'</td><td>'+ localStorage.getItem('TIRADA') +'</td></tr>');
		}
	}
	
	//ordenar tabla [dataTable]
	ordenar();
	
	/********************
	 * FIN ESTADISTICAS *
	 ********************/
	
	//Pintar la celda correspondiente de la tabla
	if(num_aleatorio > 3){
		num_aleatorio++;
	}
	celdas[num_aleatorio].style.backgroundColor = '#01245C';
	
}
