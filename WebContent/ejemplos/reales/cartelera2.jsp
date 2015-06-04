<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
		<div id="cartelera">
						
			<h1>CARTELERA</h1>
			<h2>-.- Peliculas -.-</h2>
			
			<ul class="clearfix">
				
				<% for(int i=0;i<3;i++) {%>
				<li>
					<div class="pelicula">
						<a href="ejemplos/reales/cartelera_detalle.jsp">
							<img class="pelicula imagen" alt="Cartel representativo de la pelicula 'Atlas de las Nuves'" src="img/cine/atlas.jpg" />
						</a>
						<div class="titulo">
							<h3>Atlas de las Nubes</h3>
						</div>
					</div>
				</li>
			
				<li>
					<div class="pelicula">	
						<a href="ejemplos/reales/cartelera_detalle.jsp">
							<img class="imagen" alt="Cartel representativo de la pelicula 'Gangster Squad'" src="img/cine/gangster.jpg" />
						</a>
						<div class="titulo">
							<h3>Gangster Squad</h3>
							<p>Gangster Squad</p>
						</div>
					</div>		
				</li>
			
				<li>
					<div class="pelicula">	
						<a href="ejemplos/reales/cartelera_detalle.jsp">	
							<img class="imagen" alt="Cartel representativo de la pelicula 'Real Steel'" src="img/cine/real.jpg" />
						</a>
						<div class="titulo">
							<h3>Reale Steel</h3>
						</div>
					</div>		
				</li>
				
				<li>
					<div class="pelicula">	
						<a href="ejemplos/reales/cartelera_detalle.jsp">		
							<img class="imagen" alt="Cartel representativo de la pelicula 'Total Recall'" src="img/cine/total.jpg" />
						</a>
						<div class="titulo">
							<h3>Total Recall</h3>
						</div>
					</div>		
				</li>
			
				<li>
					<div class="pelicula">	
						<a href="ejemplos/reales/cartelera_detalle.jsp">	
							<img class="imagen" alt="Cartel representativo de la pelicula 'Verbo'" src="img/cine/verbo.jpg" />
						</a>
						<div class="titulo">
							<h3>Verbo</h3>
						</div>
					</div>		
				</li>					
				<% } %>
						
			</ul>
		</div> <!-- cartelera -->
		
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>