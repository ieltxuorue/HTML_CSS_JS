<!DOCTYPE html>
<html>
<head>
  	<meta charset="utf-8">
  	<title>QUnit Example</title>
  	<link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
</head>
<body>
  	<div id="qunit"></div>
  	
  	<div id="qunit-fixture"></div>
  	
  	<script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  	
  	<script src="../../js/utilidades.js"></script>
  	
  	<script>
  		//Nuestro codigo de test
		QUnit.test( "precio_entradas (diaSemna,edad)", function( assert ) {
	 		assert.ok( precio_entrada("lunes",34) == 2, "lunes <35 años = 2€" );
	 		assert.ok( precio_entrada("Lunes",35) == 2, "Lunes 35 años = 2€" );
	 		assert.ok( precio_entrada("LUNES",36) == 5, "LUNES >35 años = 5€" );
	 		assert.ok( precio_entrada("martes",24) == 2, "martes <25 años = 2€" );
	 		assert.ok( precio_entrada("Martes",25) == 2, "Martes 25 años = 2€" );	
			assert.ok( precio_entrada("MARTES",26) == 5, "MARTES >25 y <50 años = 5€" );
			assert.ok( precio_entrada("martes",49) == 5, "martes >25 y <50 años = 5€" );
	 		assert.ok( precio_entrada("Martes",50) == 5, "Martes 50 años = 5€" );
	 		assert.ok( precio_entrada("MARTES",51) == 7, "MARTES >50 años = 7€"	 );
	 		assert.ok( precio_entrada("miercoles",17) == 3,	"miercoles <18 años = 3€" );	
			assert.ok( precio_entrada("Miercoles",18) == 3,	"Miercoles 18 años = 3€" );
			assert.ok( precio_entrada("miercoles",19) == 5,	"miercoles >18 y <50 años = 5€" );
			assert.ok( precio_entrada("MIERCOLES",49) == 5,	"MIERCOLES >18 y <50 años = 5€" );
			assert.ok( precio_entrada("Miercoles",50) == 5,	"Miercoles 50 años = 5€" );	
			assert.ok( precio_entrada("miercoles",51) == 8,	"miercoles >50 años = 8€" );	
			assert.ok( precio_entrada("jueves",17) == 5, "jueves <18 años = 5€" );
			assert.ok( precio_entrada("Jueves",18) == 5, "Jueves 18 años = 5€" );	
			assert.ok( precio_entrada("JUEVES",19) == 7, "JUEVES >18 años = 7€" );	
			assert.ok( precio_entrada("viernes",27) == 10, "viernes = 10€" );	
			assert.ok( precio_entrada("SABADO",27) == 10, "SABADO = 10€" );		
			assert.ok( precio_entrada("Domingo",27) == 10, "Domingo = 10€" );	
		});
			
		QUnit.test( "es_par (numero)", function( assert ) {
	 		assert.ok( es_par (0), "0 es par" );
	 		assert.ok( es_par (2), "2 es par" );
	 		assert.ok( !es_par (3), "3 NO es par" );
	 		assert.ok( !es_par (null), "null NO es par" );
	 		assert.ok( !es_par (), "undefined NO es par" );
	 		assert.ok( es_par (-2), "-2 es par" );
	 		assert.ok( !es_par (-3), "-3 NO es par" );
	 		assert.ok( es_par (2.0), "2.0 es par" );
	 		assert.ok( !es_par (2.1), "2.1 NO es par" );
	 	});	
  </script>
</body>
</html>