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
	
	$('#tabla_plugin').DataTable({
		"language": {					
				"sProcessing":     "Procesando...",
				"sLengthMenu":     "Mostrar _MENU_ registros",
				"sZeroRecords":    "No se encontraron resultados",
				"sEmptyTable":     "NingÃºn dato disponible en esta tabla",
				"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
				"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
				"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
				"sInfoPostFix":    "",
				"sSearch":         "Buscar:",
				"sUrl":            "",
				"sInfoThousands":  ",",
				"sLoadingRecords": "Cargando...",
				"oPaginate": {
					"sFirst":    "Primero",
					"sLast":     "Ãltimo",
					"sNext":     "Siguiente",
					"sPrevious": "Anterior"
				},
				"oAria": {
					"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
					"sSortDescending": ": Activar para ordenar la columna de manera descendente"
				}				
		  }
	});
	

	
	if (window.sessionStorage && window.localStorage) { 
				
		//Mostrar valores de ultima pagina y fecha
		var last_visited = $('#last_visited');
		var last_page = localStorage.getItem('last_page');
		var last_time = localStorage.getItem('last_time');
		last_visited.append('<p><strong>Ultima pagina visitada:</strong> "'+ last_page +'" '+ last_time );
		
		//Ultima pagina visitada
		localStorage.setItem('last_page', window.location.href);
		//Hora de la ultima pagina visitada
		var fecha = new Date();
		localStorage.setItem('last_time', convertirFecha(fecha,CORTO));
		
		//Ultimas 5 paginas visitadas
		//MOSTRAR Ultimas 5 paginas visitadas
		var ultimas_visitas = $('#ultimas_visitas');
		var page_v0 = localStorage.getItem('v0');
		var page_v1 = localStorage.getItem('v1');
		var page_v2 = localStorage.getItem('v2');
		var page_v3 = localStorage.getItem('v3');
		var page_v4 = localStorage.getItem('v4');
		
		ultimas_visitas.append('<li>'+ ((page_v0.split('/'))[page_v0.split('/').length-1]).substring(0,((page_v0.split('/'))[page_v0.split('/').length-1]).length-4) +'</li>');
		ultimas_visitas.append('<li>'+ ((page_v1.split('/'))[page_v1.split('/').length-1]).substring(0,((page_v1.split('/'))[page_v1.split('/').length-1]).length-4) +'</li>');
		ultimas_visitas.append('<li>'+ ((page_v2.split('/'))[page_v2.split('/').length-1]).substring(0,((page_v2.split('/'))[page_v2.split('/').length-1]).length-4) +'</li>');
		ultimas_visitas.append('<li>'+ ((page_v3.split('/'))[page_v3.split('/').length-1]).substring(0,((page_v3.split('/'))[page_v3.split('/').length-1]).length-4) +'</li>');
		ultimas_visitas.append('<li>'+ ((page_v4.split('/'))[page_v4.split('/').length-1]).substring(0,((page_v4.split('/'))[page_v4.split('/').length-1]).length-4) +'</li>');
			
		
		
		
		//ACTUALIZAR Ultimas 5 paginas visitadas
		var pagina_actual = window.location.href;
		localStorage.setItem('v0', pagina_actual);
		localStorage.setItem('v1', page_v0);
		localStorage.setItem('v2', page_v1);
		localStorage.setItem('v3', page_v2);
		localStorage.setItem('v4', page_v3);
		
		
		console.info('Almacenamiento local soportado');
		//pintar todas las LocalStorages
//		for(i=0;i<localStorage.length;i++){
//			console.debug( localStorage.key(i) + '->' + localStorage.getItem(localStorage.key(i)));
//		}		
	}else{ 
		alert('Lo siento, pero tu navegador no acepta almacenamiento local'); 
	} 
	
	
	
	/****************************************************
	 * 	  TEXTAREA LIMITADO A 256 CARACTERES (PARTE 1)	*
	 ****************************************************/
	//Creacion del span char_max
	$('textarea[data-role="observaciones"]').after('<span class="char_max">0/256</span>');
	
});

/****************************************************
 * 	  TEXTAREA LIMITADO A 256 CARACTERES (PARTE 2)	*
 ****************************************************/

//
$('textarea[data-role="observaciones"]').focus(function(){
	$('textarea[data-role="observaciones"]').keypress(function(){
		console.info('tecla pulsada');
		var cont_caracteres = ($('textarea[data-role="observaciones"]').val().length)+1;
		if(cont_caracteres <= 256){
			$('.char_max').html('');
			$('.char_max').append(cont_caracteres + '/256');
		}
		
		/*************
		 * TODO
		 * onkeypress="return justNumbers(event);
		 * 
		 * function justNumbers(event) {
    			return event.charCode >= 48 && event.charCode <= 57;
			} //end:function justNumbers
		 * 
		 */
	});
	
		
});
	

/* REGISTRO USUARIOS control de usuarios existentes */

function llamadaAjax(code){
	
	var usuario = $("#usuario");
	
	//Url donde se encuentra el servicio Ajax
	var url = "NuevoUsuario";
	
	$.ajax(url, {
		"type": "get", // usualmente post o get
		"success": function(result) {
			console.log(result);				
			switch (code) {
				case "user":
					$(".msg_user_delete").remove();
					var user_mensaje =  "<span class='msg_user_delete'>";
					if(result.valid_user){
						user_mensaje += "<i class='fa fa-check'></i>";
					}else{
						user_mensaje += "<i class='fa fa-times'></i>";
					}
					user_mensaje += "</span>"; 
					$("#usuario").after(user_mensaje);
					break;
					
				case "mail":
					$(".msg_mail_delete").remove();
					var mail_mensaje =  "<span class='msg_mail_delete'>";
					if(result.valid_mail){
						mail_mensaje += "<i class='fa fa-check'></i>";
					}else{
						mail_mensaje += "<i class='fa fa-times'></i>";
					}
					mail_mensaje += "</span>"; 
					$("#mail").after(mail_mensaje);
					
					break;
			}			
		},
		"error": function(result) {
			console.error("Este callback maneja los errores", result);
		},
		"data": {usuario: $("#usuario").val(), mail: $("#mail").val() },
					
		"async": true,
		});
};

//Seleccionar usuario del formulario
$("#form_new_user #usuario").blur(function(){
	var code = "user";
	llamadaAjax(code);	
}); 
//Seleccionar email del formulario
$("#form_new_user #mail").blur(function(){
	var code = "mail";
	var correo = $("#form_new_user #mail")
	expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if ( expr.test(correo.val()) ){
    	llamadaAjax(code);
    }else{
    	$(".msg_mail_delete").remove();
    	$("#mail").after("<span class='msg_mail_delete'><i class='fa fa-times'></i></span>");
    }
}); 
//Seleccionar pass/repass del formulario
$("#form_new_user #repass").blur(function(){
	var pass = document.getElementById("pass");
	var repass = document.getElementById("repass");

	$(".msg_pass_delete").remove();
	var pass_mensaje = "<span class='msg_pass_delete'>";
	if (pass.value == repass.value && pass.value != "") {
		pass_mensaje += "<i class='fa fa-check'></i>";
	}else{
		pass_mensaje += "<i class='fa fa-times'></i>";
	}
	pass_mensaje += "</span>"; 
	
	$("#repass").after(pass_mensaje);
	
});

function validar(formulario){
	var check = $(".fa-check");
	
	if (check.length == 3 ){
		formulario.submit();
	}else{	
		return false;
	}
};

function ordenar() {
	$('#ranking').dataTable( {
	    "order": [[ 1, "desc" ]]
	} );
}




