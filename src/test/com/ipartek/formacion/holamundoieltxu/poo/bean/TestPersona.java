package com.ipartek.formacion.holamundoieltxu.poo.bean;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TestPersona {
	
	Persona personaVacia;
	Persona personaParametros;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		personaVacia 	  = new Persona();
		personaParametros = new Persona("Pepe", 50);
	}

	@After
	public void tearDown() throws Exception {
		personaVacia	  = null;
		personaParametros = null;
	}

	@Test
	public void testPersona() {
		
		assertEquals("Anonimo", personaVacia.getNombre());
		assertEquals("Sin Determinar", personaVacia.getApellido());
		assertEquals(Persona.EDAD_MINIMA, personaVacia.getEdad());
		assertEquals("", personaVacia.getEmail());
		assertFalse("Esta aprobado", personaVacia.isAprobado());
		assertEquals((long)0.0, personaVacia.getNota());
		
	}

	@Test
	public void testPersonaStringInt() {
		
		assertEquals("Pepe", personaParametros.getNombre());
		assertEquals("Sin Determinar", personaParametros.getApellido());
		assertEquals(50, personaParametros.getEdad());
		assertEquals("", personaParametros.getEmail());
		assertFalse("Esta aprobado", personaParametros.isAprobado());
		assertEquals((long)0.0, personaParametros.getNota());
		
		Persona pEdadMinima = new Persona("", -1);
		Persona pEdadMaxima = new Persona("", 1000);
		assertEquals(Persona.EDAD_MINIMA, pEdadMinima.getEdad());
		assertEquals(Persona.EDAD_MAXIMA, pEdadMaxima.getEdad());
		
	}

	@Test
	public void testSetEdad() {	
		
		personaVacia.setEdad(0);
		assertEquals(Persona.EDAD_MINIMA, personaVacia.getEdad());
		
		personaVacia.setEdad(18);
		assertEquals(Persona.EDAD_MINIMA, personaVacia.getEdad());
		
		personaVacia.setEdad(50);
		assertEquals(50, personaVacia.getEdad());
		
		personaVacia.setEdad(99);
		assertEquals(Persona.EDAD_MAXIMA, personaVacia.getEdad());
		
		personaVacia.setEdad(100);
		assertEquals(Persona.EDAD_MAXIMA, personaVacia.getEdad());	
		
	}

}
