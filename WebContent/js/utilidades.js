/**
*	Ejemplo de uso de un switch-case. 
*	Función para calcular el precio de la entrada del Cine de Almendralejo
*		@param diaSemana: Dia de la semana.
*		@param edad: edad en años.
*		@return precio: precio en euros.
*/
var diaSemana = "luNes";
var edad = 100;

function precio_entrada ( diaSemana, edad ){
var precio = 0;

diaSemana = diaSemana.toLowerCase();
	
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
	case "viernes":
	case "sabado":
	case "domingo":
		precio = 10;	
		break;
}

return precio;
}
//end:function precio_entrada(diaSemana, edad)


/**
 * Funcion para determinar si el parametro pasado es par o impar
 * 		@param numero: numero para sabes si es par
 * 		@return: true si es par, false en caso contrario
 */
function es_par(numero){
	resul = false;
	if (numero == null){
		resul = false
	}else if (numero%2 == 0) {
		resul = true;
	}
	return resul;	
}





