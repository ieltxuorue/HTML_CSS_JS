/**
*	JavaScript para ejecutar en todas las paginas del proyecto 
*	Se carga en foot.jsp despues de incluir todas las librerias necesarias de JS
*/

//Se ejecua cuant todo el HTML se ha cargado

$(function() {
	console.debug('document ready!')
	
	//Asociar todos los textareas en TinyMCE
	console.warn("TinyMCE deshabilitado");
	//tinymce.init({selector:'textarea'});
	//console.info('datepicker habilitado');
	
	
	//Asignación del id del <select> y del id del <input type="text">
	//console.warn("filterByText deshabilitado");
	$('#lista_select').filterByText($('#textbox'), true);
	console.info('filterByText habilitado');
	
	//Asociar a todos los elementos con clase 'fecha' el datePicker de jQueryUI
	//$(".fecha")..datepicker(); 
	//Asociar a todos los elementos con input[data-widget='calendario' el datePicker de jQueryUI
	//console.warn("datepicker deshabilitado");
	$("input[data-widget='calendario']").datepicker(); 
	console.info('datepicker habilitado');
	
	jQuery(function($){
		$.datepicker.regional['es'] = {
			closeText: 'Cerrar',
			prevText: '&#x3c;Ant',
			nextText: 'Sig&#x3e;',
			currentText: 'Hoy',
			monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio',
			'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
			monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun',
			'Jul','Ago','Sep','Oct','Nov','Dic'],
			dayNames: ['Domingo','Lunes','Martes','Mi&eacute;rcoles','Jueves','Viernes','S&aacute;bado'],
			dayNamesShort: ['Dom','Lun','Mar','Mi&eacute;','Juv','Vie','S&aacute;b'],
			dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],
			weekHeader: 'Sm',
			dateFormat: 'dd/mm/yy',
			firstDay: 1,
			isRTL: false,
			showMonthAfterYear: false,
			yearSuffix: ''};
		$.datepicker.setDefaults($.datepicker.regional['es']);
	});    
	
});


