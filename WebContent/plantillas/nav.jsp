<style>
	nav * {
		padding: 0px;
		margin: 0px;
	}
	nav {
		margin: 0px auto;
		width: 1500px;
		font-size: 12px;
		font-family: Arial, Helvetica, sans-serif;
	}
	nav ul, nav ol {
		list-style: none;
	}
	nav ul ul {
		margin: 0px;
	}
	nav h2, nav h3 {
		margin: 0px;
	}
	
	.menu li a, .menu li h2, .menu li h3 {
		background-color: black;
		color: white;
		text-decoration: none;
		text-align: center;
		padding: 10px 15px;
		display: block;
	}
	
	.menu li h2:hover, .menu li h3:hover, .menu li a:hover {
		background-color: #434343;
	}

	.menu > li {
		float: left;
	}
	
	.menu li ul {
		display: none;
		position: absolute;
		min-width: 175px;
	}
	
	.menu li:hover > ul{
		display: block;
	}
	
	.menu li ul li{
		position: relative;
	}
	.menu li ul li ul{
		right: -175px;
		top: 0px;
	}

</style>

<nav>	
	<ul class="menu">
		<li><h2>B&aacute;sicos</h2>
			<ul>
				<li><a title="Ir a ejemplos de parrafos y enlaces internos" href="ejemplos/basicos/parrafos_anclas.jsp" >Parrafos y Anclas internos</a></li>
				<li><a title="Ir a ejemplos de bloques y lineas" href="ejemplos/basicos/block_inline.jsp" >Block vs inline</a></li>
				<li><a title="Ir a ejemplos de listas" href="ejemplos/basicos/listas.jsp" >Listas</a></li>
				<li><a title="Ir a ejemplos de tablas simples" href="ejemplos/basicos/tablas.jsp" >Tabla simple</a></li>
				<li><a title="Ir a ejemplos de tablas avanzadas" href="ejemplos/basicos/tabla_avanzada.jsp" >Tabla avanzada</a></li>
			</ul>
		</li>
		<li><h2>Reales</h2>
			<ul>
				<li><a title="Cartelera Cine" href="ejemplos/reales/cartelera.jsp" > Cartelera </a></li>
				<li><a title="Cartelera Cine 2" href="ejemplos/reales/cartelera2.jsp" > Cartelera 2 </a></li>
				<li><a title="Detalles de Cartelera Cine" href="ejemplos/reales/cartelera_detalle.jsp" > Cartelera en detalle </a></li>
			</ul>
		</li>	
		<li><h2>Formularios</h2>
			<ul>
				<li><a title="Login" href="ejemplos/formularios/login.jsp" > Login </a></li>
				<li><a title="Datos Personales" href="ejemplos/formularios/datos_personales.jsp" > Datos Personales </a></li>
			</ul>
		</li>
		<li><h2>Nuevas etiquetas HTML5</h2>
			<ul>
				<li><a title="figure" href="ejemplos/nuevas_etiquetas_html5/figure.jsp" > figure </a></li>
				<li><a title="time" href="ejemplos/nuevas_etiquetas_html5/time.jsp" > time </a></li>
				<li><a title="hgroup" href="ejemplos/nuevas_etiquetas_html5/hgroup.jsp" > hgroup </a></li>
				<li><a title="video" href="ejemplos/nuevas_etiquetas_html5/video.jsp" > video </a></li>
				<li><a title="audio" href="ejemplos/nuevas_etiquetas_html5/audio.jsp" > audio </a></li>
				<li><a title="canvas" href="ejemplos/nuevas_etiquetas_html5/canvas.jsp" > canvas </a></li>
				<li><a title="datalist" href="ejemplos/nuevas_etiquetas_html5/datalist.jsp" > datalist </a></li>
				<li><a title="barra_progreso" href="ejemplos/nuevas_etiquetas_html5/barra_progreso.jsp" > Progres y meter </a></li>
			</ul>
		</li>
		<li><h2>CSS</h2>
			<ul>
				<li><h3>Selectores</h3>
					<ul>
						<li><a title="Atributo" href="ejemplos/CSS/selectores/atributo.jsp" > Atributo </a></li>
						<li><a title="Hijos" href="ejemplos/CSS/selectores/hijos.jsp" > Hijos </a></li>
						<li><a title="Adyacente" href="ejemplos/CSS/selectores/adyacente.jsp" > Adyacente </a></li>
						<li><a title="Pseudo-clases" href="ejemplos/CSS/selectores/pseudo_clases.jsp" > Pseudo-clases </a></li>
						<li><a title="Pseudo-elementos" href="ejemplos/CSS/selectores/pseudo_elementos.jsp" > Pseudo-elementos </a></li>
						<li><a title="CSS3" href="ejemplos/CSS/selectores/css3.jsp" > CSS3 </a></li>
					</ul>
				</li>
				<li><h3>Posicionamiento</h3>
					<ul>
						<li><a title="estatico" href="ejemplos/CSS/posicionamiento/estatico.jsp" > Normal o estatico </a></li>
						<li><a title="relativo" href="ejemplos/CSS/posicionamiento/relativo.jsp" > Relativo </a></li>
						<li><a title="absoluto" href="ejemplos/CSS/posicionamiento/absoluto.jsp" > Absoluto </a></li>
						<li><a title="fijo" href="ejemplos/CSS/posicionamiento/fijo.jsp" > Fijo o fixed </a></li>
						<li><a title="inherit" href="ejemplos/CSS/posicionamiento/inherit.jsp" > Inherit </a></li>
						<li><a title="flotantes" href="ejemplos/CSS/posicionamiento/flotantes.jsp" > Elementos flotantes </a></li>
					</ul>
				</li>
			</ul>
		</li>
		<li><h2>Plugins</h2>
			<ul>
				<li><a title="Ejemplo de plugins dataTable" href="ejemplos/plugins/datatable.jsp" >dataTables</a></li>
			</ul>
		</li>
		<li><h2>Extras</h2>
			<ul>
				<li><a title="font icon" href="ejemplos/extras/font_icon.jsp" >Font Icon</a></li>
			</ul>
		</li>		
	</ul>	
</nav>