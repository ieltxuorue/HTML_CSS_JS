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

if (edad <= 0 || diaSemana == null){
	precio = 'El dia o la edad no son correctos';
}else{
	
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
		default:
			precio = 'El dia o la edad no son correctos';
			break;
	}
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




/**
 * Convierte  fecha a formato español.
 * @param date objeto tipo Date con la fecha a convertir.
 * @param formato CORTO: 'dd/mm/aaaa' ; LARGO: '1 de enero del 1970'.
 * @returns {String} cadena de texto con la fecha convertida, si falla retorna null.
 */
//formatos posibles para las fechas
const CORTO = 'corto';
const LARGO = 'largo';

function convertirFecha ( date, formato ){
	var resul = "";
	var ames = ['enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre'];
	
	if (date instanceof Date){
		
		var dia = date.getDate();
		var mes = date.getMonth();
		var ano = date.getFullYear();
		
		switch (formato) {
			case CORTO:
				if (mes < 10){
					resul = dia + "/0" + (mes + 1) + "/" + ano;
				}else{
					resul = dia + "/" + (mes + 1) + "/" + ano; 
				}
				break;
			case LARGO:
					resul = dia + " de " + ames[mes] + " del " + ano; 
				break;
			default:
				resul = null
				break;
		}
	}
	else {
		resul = null;
	}
	return resul;
}




