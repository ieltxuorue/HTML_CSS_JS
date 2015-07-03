<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>BOOTSTRAP</title>
	
	<!-- ViewPort imprescindible para RWD -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<!-- Custom estilos.css -->
	<link rel="stylesheet" href="estilos.css">	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>

<!-- HEADER -->
	<header>
		<div class="container row">
			<div id="logo" class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
				<h1>Header</h1>
				<h3>12 columnas</h3>
			</div>	
			<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">		
				<div class="dropdown">
	                <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-info btn-lg dropdown-toggle"><i class="glyphicon glyphicon-user"></i> Login <span class="caret"></span></button>
	                <ul class="dropdown-menu">
	                  <li style="width: 300px;">
	                        <form class="nav-form form" role="form">
	                            <div class="form-group">
	                              <div class="input-group">
	                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
	                                    <!--EMAIL ADDRESS-->
	                                    <input id="emailInput" placeholder="email address" class="form-control" type="email" oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try{setCustomValidity('')}catch(e){}" required>
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <div class="input-group">
	                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
	                                    <!--PASSWORD-->
	                                    <input id="passwordInput" placeholder="password" class="form-control" type="password" oninvalid="setCustomValidity('Please enter a password!')" onchange="try{setCustomValidity('')}catch(e){}" required>
	                                </div>
	                            </div>
	                            <!--  BASIC ERROR MESSAGE
	                            <div class="form-group">
	                            <label class="error-message color-red">*Email &amp; password don't match!</label>
	                            </div>
	                            -->
	                            <div class="form-group">
	                                <!--BUTTON-->
	                                <button type="submit" class="btn btn-primary form-control">Login</button>
	                            </div>
	                            <div class="form-group">
	                                <!--RESET PASSWORD LINK-->
	                                <span class="pull-right"><a href="#">Forgot Password?</a></span>
	                            </div>
	                        </form>
	                    </li>
	                </ul>
	            </div>
                <!-- DROPDOWN LOGIN ENDS HERE  -->
        	</div>			
		</div>		
	</header>



<!-- MAIN -->		
		<div id="main" class="container">
		
<!-- ALERT -->	
			<div id="alert-area" class="row">
				
			</div> <!-- END #alert-area -->	
		
<!-- SLIDER -->	
			<div id="slider" class="row">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="http://lorempixel.com/1170/400/nature" alt="foto de naturaleza"/>
						<div class="carousel-caption">
				      		<h3>SLIDE 1</h3>
	    					<p>texto de imagen 1</p>
				    	</div>
				 	 </div>
				  	<div class="item">
				    	<img src="http://lorempixel.com/1170/400/sports" alt="foto de deportes"/>
				   		<div class="carousel-caption">
				      		<h3>SLIDE 2</h3>
	    					<p>texto de imagen 2</p>
				    	</div>
				  	</div>
				  	<div class="item">
				    	<img src="http://lorempixel.com/1170/400/food" alt="foto de comida"/>
				   		<div class="carousel-caption">
				      		<h3>SLIDE 3</h3>
	    					<p>texto de imagen 3</p>
				    	</div>
				  	</div>
				</div>
				
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				  	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				  	<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				  	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				 	<span class="sr-only">Next</span>
				</a>
			</div>
		</div> <!-- END #slider -->
		
<!-- ARTICULOS -->			
		<section class="main row">
			<article class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
				<h2>Articulo - Article</h2>
				<h4>9 Columnas</h4>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere luctus tincidunt. Vestibulum ante ipsum 
					primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras lacinia neque euismod, fermentum tortor 
					varius, blandit ante. Proin tempor dapibus velit, blandit sagittis ex pretium id. In congue nec lectus in 
					commodo. Morbi in leo lorem. Donec ut purus tortor. Morbi aliquet arcu egestas tincidunt lacinia.
				</p>
				<!-- link button -->
				<a href="http://localhost:8080/HolaMundoIeltxu/" class="btn btn-primary" role="button">
					<span class="glyphicon glyphicon-home"></span> Volver</a>
					
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
				  <span class="glyphicon glyphicon-modal-window"></span> Launch demo modal
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
				      </div>
				      <div class="modal-body">
				        ... <br> Modal body <br> ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
				        <button type="button" class="btn btn-primary">Guardar Cambios</button>
				      </div>
				    </div>
				  </div>
				</div>
				
				<!-- dropdown alert message -->
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Mostrar Alerta <span class="caret"></span></button>				 
				  	<ul class="dropdown-menu" role="menu">
				   		<li class="bg-info" onclick="newAlert('info', 'Información');"><a href="#">info</a></li>
				    	<li class="bg-success" onclick="newAlert('success', 'Todo correcto');"><a href="#">success</a></li>
				    	<li class="bg-warning" onclick="newAlert('warning', 'Ten cuidado');"><a href="#">warning</a></li>
				    	<li class="bg-danger" onclick="newAlert('danger', 'Peligrooooo.');"><a href="#">error</a></li>
				  	</ul>
				</div>
				<script>
					function newAlert (type, message) {
					    $("#alert-area").append("<div class='alert alert-"+ type +"'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Alert " + type + "</strong> " + message + "</div>");    
					}						
				</script>	
				
				<div class="row">
					<div class="col-md-2">
						<button type="button" class="btn btn-primary btn-xs" onclick="autopogress()">
				  			<span class="glyphicon glyphicon-play-circle"></span> Launch ProgressBar
						</button>
					</div>
					<div class="col-md-10">
						<div class="progress progress-striped active">
							<div class="progress-bar" role="progressbar" id ="barra" style="width: 0">
				 			</div>
						</div>
					</div>
					
					<script type="text/javascript">
					function sleep(milliseconds) {
						var start = new Date().getTime();
						for (var i = 0; i < 1e7; i++) {
							if ((new Date().getTime() - start) > milliseconds){
								break;
						    }
						}
					};
					
					function autopogress() {					
						var barra = $('#barra');
						for(i=0;i<101;i++){
							sleep(50);
							barra.css('width', '' + i +'%');
						}
					}	

					</script>
								
				</div>
				
									
			</article>
			
			<aside class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
				<h2>Sidebar - Aside</h2>
				<h4>3 Columnas</h4>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere luctus tincidunt. Vestibulum ante ipsum 
					primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras lacinia neque euismod, fermentum tortor 
					varius, blandit ante. Proin tempor dapibus velit, blandit sagittis ex pretium id. In congue nec lectus in 
					commodo. Morbi in leo lorem. Donec ut purus tortor. Morbi aliquet arcu egestas tincidunt lacinia.
				</p>
			</aside>
		</section>
		<div class="row">
			<div class="color1 col-xs-12 col-sm-6 col-md-3">
				<h3>3 Columnas</h3>
				<p>					
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere luctus tincidunt. Vestibulum ante ipsum 
					primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras lacinia neque euismod, fermentum tortor 
					varius, blandit ante. Proin tempor dapibus velit, blandit sagittis ex pretium id. In congue nec lectus in 
					commodo. Morbi in leo lorem. Donec ut purus tortor. Morbi aliquet arcu egestas tincidunt lacinia.
				</p>
				<p>					
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere luctus tincidunt. Vestibulum ante ipsum 
					primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras lacinia neque euismod, fermentum tortor 
					varius, blandit ante. Proin tempor dapibus velit, blandit sagittis ex pretium id. In congue nec lectus in 
					commodo. Morbi in leo lorem. Donec ut purus tortor. Morbi aliquet arcu egestas tincidunt lacinia.
				</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<h3>3 Columnas</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere luctus tincidunt. Vestibulum ante ipsum 
					primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras lacinia neque euismod, fermentum tortor 
					varius, blandit ante. Proin tempor dapibus velit, blandit sagittis ex pretium id. In congue nec lectus in 
					commodo. Morbi in leo lorem. Donec ut purus tortor. Morbi aliquet arcu egestas tincidunt lacinia.
				</p>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="color2 col-xs-12 col-sm-6 col-sm-offset-6 col-md-3 col-md-offset-3">
				<h3>3 Columnas</h3>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere luctus tincidunt. Vestibulum ante ipsum 
					primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras lacinia neque euismod, fermentum tortor 
					varius, blandit ante. Proin tempor dapibus velit, blandit sagittis ex pretium id. In congue nec lectus in 
					commodo. Morbi in leo lorem. Donec ut purus tortor. Morbi aliquet arcu egestas tincidunt lacinia.
				</p>
			</div>
		</div>
	</div> <!-- END #main -->

<!-- FOOTER -->	
	<footer>
		<div class="container">
			<h1>Pie de pagina - footer</h1>
			<h3>12 columnas</h3>
		</div>
	</footer>	
	
	
	<script type="text/javascript">
		console.warn('Jugando con la aPI classList');
		var titulo = document.getElementById('logo');
		
		console.debug('tiene '+ titulo.classList.length +' clases: '+ titulo.classList.toString() );
				
		console.log('toggle con la clase bg-danger');
		titulo.classList.toggle('bg-danger');
		
		console.debug('tiene '+ titulo.classList.length +' clases: '+ titulo.classList.toString() );
		
		console.log('toggle con la clase bg-danger');
		titulo.classList.toggle('bg-danger');
		
		console.debug('tiene '+ titulo.classList.length +' clases: '+ titulo.classList.toString() );
		
		for(i=0;i<titulo.classList.length;i++){
			console.debug('posicion ['+ i +'] -> ' + titulo.classList.item(i) );
		}
		
		console.info ('contiene la clase "pepe" -> ' + titulo.classList.contains("pepe"));
		console.info ('contiene la clase "col-md-9" -> ' + titulo.classList.contains("col-md-9"));
		
		titulo.classList.replace = function(classes) {
		    var i = 0,
		        ii = this.length,
		        old_string = this.toString(),
		        old_array = old_string.split(' '),
		        new_array = classes.split(' '),
		        j = 0,
		        jj = new_array.length;

		    // remove all the existing classes
		    for(i; i<ii; i++) {
		        this.remove(old_array[i]);
		    }

		    // add the new ones
		    for(j; j<jj; j++) {
		        this.add(new_array[j]);
		    }
		};
		titulo.classList.insert = function(insert,position) {
		    // check if the class is already in classList
		    if(this.contains(insert)) {
		        if(this.item(position) === insert) {
		            // if it is already at the right position there's no need to continue
		            return;
		        } else {
		            // remove it, we don't want it here
		            this.remove(insert);
		        }
		    }

		    var classes = this.toString(),
		        classes_array = classes.split(' ');

		        classes_array.splice(position, 0, insert);

		        new_list = classes_array.join(' ');

		        // use the custom replace method to replace the current classList
		        this.replace(new_list);
		};
			
		titulo.classList.insert('pepe',2);
		console.debug('tiene '+ titulo.classList.length +' clases: '+ titulo.classList.toString() );
		
	</script>

</body>
</html>

