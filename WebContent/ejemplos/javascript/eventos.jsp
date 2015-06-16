<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>



<section>
	<article>
		<header>
			<h2>Eventos b&aacute;icos de JavaScript</h2>
		</header>
		<div class="cnt_article">
		
			<h3>Asociar eventos</h3>
			<ul>
				<li>
					<strong>onclick:</strong>
					<ul>
						<li>
							<span>Asociar evento con atributo en HTML</span>
							<div>
								<i class="fa fa-align-justify fa-4x" onclick="alert('Icono pulsado, evento relacionado con atributo HTML')"></i>
							</div>
						</li>
						<li>
							<span>Asociar evento con objeto por JavaScript</span>
							<div>
								<i class="fa fa-align-justify fa-4x" id="btn_menu"></i>
							</div>
							<script>
								document.getElementById('btn_menu').onclick = function () {
									alert('Icono pulsado, evento relacionado con JavaScript');				
								}	
							</script>
						</li>
						<li>
							<span>Asociar evento con Listener (escuchador de eventos)</span>
							<div>
								<i class="fa fa-align-justify fa-4x"></i>
								<i class="fa fa-align-justify fa-4x"></i>
								<i class="fa fa-align-justify fa-4x"></i>
								<i class="fa fa-align-justify fa-4x"></i>
							</div>
							<script>								
								//declaramos una referencia a la funcion
								function saluda() {
									alert("Hola");
								}
							
								var listaBotones = document.getElementsByTagName('i');
								//recorro todos los elementos para asociarle un Listener (escuchador de eventos)
								for(i= 0;i<listaBotones.length;i++){
									listaBotones[i].addEventListener("click", saluda);
								}
							</script>
						</li>
					</ul>
				</li>				
			</ul>				
						
		</div> <!-- cnt_article -->
		<footer>
			<p>Capitulo 14; pagina 330</p>	
		</footer>
	</article>
	
	<article>
		<header>
			<h2> Mostrar eventos en textarea</h2>
		</header>
		<div class="cnt_article clearfix">
			<div class="clearfix cnt_cols">
				<div class="col1">
					<textarea id="txt_area" rows="20" cols="50"></textarea>
				</div>
				<div class="col2">
					<input type="button" id="boton" value="pulsame">
					<input type="text" id="txt">
					<select id="selec">
						<option value="bio">Bilbao</option>
						<option value="bar">Barakaldo</option>
					</select>
					<p>Sexo:</p>
					<input type="radio" name="sexo" data-value="masculino" value="M" />Masculino
					<input type="radio" name="sexo" data-value="femenino" value="F" />Femenino
					<input type="radio" name="sexo" data-value="indefinido" value="I" />Indefinido
					<p>Conocimientos:</p>
					<input type="checkbox" name="saber" data-value="HTML5" value="0" />HTML5<br>
					<input type="checkbox" name="saber" data-value="JavaScript" value="1" />JavaScript<br>
					<input type="checkbox" name="saber" data-value="CSS3" value="2" />CSS3<br>
					
					<input type="button" id="clear" value="limpiar">
					
				</div>
			</div>
			<script type="text/javascript">
				//buscar objetos por su id
				var txt_area = document.getElementById("txt_area");
				var boton = document.getElementById("boton");
				var txt = document.getElementById("txt");
				var selec = document.getElementById("selec");
				var sexo = document.getElementsByName("sexo");
				var saber = document.getElementsByName("saber");
				var clear = document.getElementById("clear");
				
				boton.onclick = function( event ){
					console.debug("Boton pulsado");
					txt_area.value += "boton pulsado ("+ event.x + "," + event.y + ") \n";
				}
				txt.onblur = function(){
					console.debug("texto escrito");
					txt_area.value += txt.value + "\n";
				}
				selec.onchange = function(){
					console.debug("select cambiado");
					txt_area.value += "opcion cambiada: " + selec.options[selec.selectedIndex].text + " ["+ selec.options[selec.selectedIndex].value + "] \n";
				}
				for (i=0;i<sexo.length;i++){
					sexo[i].onchange = function(event){
						console.debug("sexo cambiado");
						txt_area.value += "Sexo cambiado a " + event.target.dataset.value + " [" + event.target.value + "] \n";
					}
				}
				for (i=0;i<saber.length;i++){
					saber[i].onchange = function(event){
						console.debug("saber cambiado");
						if(event.target.checked){
							txt_area.value += "Sabes de ";
						}else{
							txt_area.value += "Ya no sabes de ";
						}
						txt_area.value += event.target.dataset.value + " [" + event.target.value + "] \n";
					}
				}
				clear.onclick = function(){
					console.debug("Boton Limpiar");
					txt_area.value = "";
				}
			</script>
		</div> <!-- cnt_article -->
		<footer>
			<p>Para visualizar entrar en la console de Chrome 'ctrl+shift+i'</p>
		</footer>
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>