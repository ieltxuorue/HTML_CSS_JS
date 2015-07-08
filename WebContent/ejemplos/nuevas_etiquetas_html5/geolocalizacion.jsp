<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	<header>
		<h1>Ejemplo de la API GEOLOCATION</h1>
	</header>
	
	<style>
		#map { width: 100%; height: 500px; margin: 0px; padding: 0px; }
    </style>	
		
	<div class="cnt_article">
	<!-- div sobre el que se cargara el mapa de google -->
		<div id="map"></div>
	</div>	
		
	
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <script>
		var map;
		var lat = 0;
		var lng = 0;
		
		function show_map(position) {
			
			//Obtener posicion de la localizacion
			var pos = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
			
			//Opciones extra del mapa
			var mapOptions = {
				    			zoom: 18,
				    			center: pos,
				    			mapTypeId: google.maps.MapTypeId.SATELLITE,
				    			mapTypeControl: false,
// 				    		    mapTypeControlOptions: {
// 				    		      style: google.maps.MapTypeControlStyle.DEFAULT,
// 				    		      mapTypeIds: [
// 				    		        google.maps.MapTypeId.ROADMAP,
// 				    		        google.maps.MapTypeId.TERRAIN
// 				    		      ]
// 				    		    },
				    		    zoomControl: false,
// 				    		    zoomControlOptions: {
// 				    		      style: google.maps.ZoomControlStyle.SMALL
// 				    		    }
				    		    disableDefaultUI: true
			  				 };
			
			//inicializar Mapa
			map = new google.maps.Map(document.getElementById('map'), mapOptions);
			
			//Añadir markador
			var image = {
							path: 'M 125,5 155,90 245,90 175,145 200,230 125,180 50,230 75,145 5,90 95,90 z',
						    fillColor: 'yellow',
						    fillOpacity: 0.8,
 						    scale: 0.1,
						    strokeColor: 'gold',
						    strokeWeight: 8,
					    };
			var marker = new google.maps.Marker({
													position: pos,
													map: map,
													title: 'mi posicion',
													icon: image
												});
			
			//Añadir ventana con testo al pinchar sobre el markador
			var contentString = '<div> HOLAAAAAAAAA textooooo </div>';
		  	var infowindow = new google.maps.InfoWindow({ content: contentString });
		  	google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map,marker);
			});
			
		};
		
    	function geolocalizarme(){
    		if(navigator.geolocation){
    			console.debug('Geolocalizando...');
    			navigator.geolocation.getCurrentPosition(show_map);
    		}else{
    			console.debug('Geolocation No soportado');
    		};
    	}

		google.maps.event.addDomListener(window, 'load', geolocalizarme);
		
		
		
		/**
		*	TODO	- Ampliar Zoom
		*			- Cambiar Mapa a satelite
		*			- Añadir Marker
		*/
		
	</script>
	
	<footer>
		<ul>
			<li><a href="http://diveintohtml5.info/geolocation.html" target="_blank">Articulo sobre geolocalizacion</a></li>
			<li><a href="https://developers.google.com/maps/documentation/javascript/examples/" target="_blank">API Google Maps</a></li>
		</ul>
	</footer>
</section>
		
<jsp:include page="../../plantillas/foot.jsp"></jsp:include>