	</div> <!-- content -->
	<style>
		.copy, #list_paginas, #list_rrss{
			float: left;
		}
		#list_paginas li, #list_rrss li {
			float: left;	
			text-decoration: none;
		}
		
		#list_paginas, #list_rrss {
			list-style: none;
			margin: 0px;
		}
		
		#foot{
			margin: 0px auto;
			width: 719px;
			font-size: 15px;
			font-family: Arial, Helvetica, sans-serif;
			background-color: black;
		}
		#list_paginas li a, #list_rrss li a, .copy{
			background-color: white;
			color: black;
			text-decoration: none;
			text-align: center;
			padding: 10px 10px;
			display: block;
		}
		
	</style>
	
	<footer>
		<div id="foot">
			<span class="copy">COPYRIGHT &copy; Ipartek</span>
			<!-- Enlaces de paginas estaticas -->
			<ul id="list_paginas" class="clearfix">
				<li><a href="#">Contacto</a></li>
				<li><a href="#">Aviso legal</a></li>
			</ul>
			<!-- Enlaces de redes sociales -->
			<ul id="list_rrss">
				<li><a href="#" target="_blank">facebook</a></li>
				<li><a href="#" target="_blank">twitter</a></li>
				<li><a href="#" target="_blank">youtube</a></li>
				<li><a href="#" target="_blank">instagram</a></li>
			</ul>
		</div>
	</footer>

</div> <!-- container -->

	<!-- jQuery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	
	<!-- jQuery UI: User Interface -->
	<script src="js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>

	<!-- Convertir todos los text areas en TinyMCE -->
	<script src="js/tinymce-4.1.10/tinymce.min.js"></script>
	<script>tinymce.init({selector:'textarea'});</script>
	
	<!-- Custom JavaScript despues de cargar todas las librerias -->
	<script src="js/filter_by_text.js" ></script>
	
	<!-- Custom JavaScript despues de cargar todas las librerias -->
	<script src="js/main.js" ></script>
	
	
	
	

</body>
</html>