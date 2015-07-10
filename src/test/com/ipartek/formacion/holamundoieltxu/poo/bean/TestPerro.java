package com.ipartek.formacion.holamundoieltxu.poo.bean;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TestPerro {
	
	Perro perro1;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		//Se ejecuta ANTES de comenzar esta Clase de Test
		
		/*
		 * Aqui se meten valores que no se vayan a modificar en ninguno de los testes
		 * 		Conexion a base de Datos
		 * 		... 
		 */
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		//Se ejecuta DESPUES de terminar esta Clase de Test
	}

	@Before
	public void setUp() throws Exception {
		//Se ejecuta ANTES de comenzar cada Test
		 perro1 = new Perro("Pintto");
	}

	@After
	public void tearDown() throws Exception {
		//Se ejecuta DESPUES de terminar cada Test
		perro1 = null;
	}

	@Test
	public void testPerroString() {
//		fail("Not yet implemented");
		assertEquals("Pintto", perro1.getNombre());
		assertEquals(0, perro1.getEdad());
		assertEquals("desconocida", perro1.getRaza());
		
		Persona amo = perro1.getAmo();
		if(amo != null){
			assertEquals("Abandonado", amo.getNombre());
			assertEquals(Persona.EDAD_MINIMA, amo.getEdad());
		}else{
			fail("No tiene amo");
		}
		
		assertFalse("Esta Vacunado", perro1.isVacunado());
		assertEquals((long)0.0, perro1.getPeso());
	}

//	@Test
//	public void testPerroStringPersona() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testLadrar() {
//		fail("Not yet implemented");
		
		/*
		 * Siempre al utilizar equals primer parametro procurar que no pueda ser null, 
		 * asi se evitan posibles CRASHES:
		 * 		null.equals("...") CASCA!
		 * 		"...".equals(null) lo admite! 
		 */
		assertTrue("No ladra", "GUAU GUAU GUAU".equals(perro1.ladrar()));	
		assertEquals("GUAU GUAU GUAU", perro1.ladrar());
	}

}
