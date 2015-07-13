package com.ipartek.formacion.holamundoieltxu.poo.bean;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TestEstanteria {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		
		Estanteria e = new Estanteria();
		String titulo1 = "Don quijote de la Mancha";
		String titulo2 = "Java 7";
		
		//estanteria Vacia
		assertEquals("No deben existir libros", 0, e.numLibros());		
		assertNull("Si no existe libro null", e.extraer(titulo1));
		
		Libro libro1 =new Libro(titulo1,100);
		e.guardar(libro1);
		Libro libro2 =new Libro(titulo2,100);
		e.guardar(libro2);
		
		//estanteria con libros
		assertEquals(2, e.numLibros());
		
		assertSame(libro1, e.extraer(titulo1));
		
		assertEquals(1, e.numLibros());
		
		assertSame(null, e.extraer(null));
	}
}
