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

function validarEmail( email ) {
    expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if ( !expr.test(email) )
        alert("Error: La dirección de correo " + email + " es incorrecta.");
}



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
}




