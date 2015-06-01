/**
*	JavaScript para ejecutar en todas las paginas del proyecto 
*	Se carga en foot.jsp despues de incluir todas las librerias necesarias de JS
*/

//Se ejecua cuant todo el HTML se ha cargado

// Asignación del id del <select> y del id del <input type="text">
$(function() {
	  $('#lista_select').filterByText($('#textbox'), true);
	});
