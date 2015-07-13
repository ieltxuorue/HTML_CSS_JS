package com.ipartek.formacion.holamundoieltxu.poo.bean;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class TestLibro {
	
	Libro libroVacio;
	Libro libroParametros;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		libroVacio 		= new Libro();
		libroParametros = new Libro("TITULO", 125);
	}

	@After
	public void tearDown() throws Exception {
		libroVacio 		= null;
		libroParametros = null;
	}

	@Test
	public void testLibro() {
		assertSame("Sin titulo", libroVacio.getTitulo());
		assertEquals(0, libroVacio.getNumPaginas());
		assertSame("", libroVacio.getDimensiones());
		assertSame("Anonimo", libroVacio.getAutor());
		assertSame("", libroVacio.getColorPortada());
		assertEquals(0, libroVacio.getMarcador());
	}

	@Test
	public void testLibroStringInt() {
		assertSame("TITULO", libroParametros.getTitulo());
		assertEquals(125, libroParametros.getNumPaginas());
		assertSame("", libroParametros.getDimensiones());
		assertSame("Anonimo", libroParametros.getAutor());
		assertSame("", libroParametros.getColorPortada());
		assertEquals(0, libroParametros.getMarcador());
	}

	@Test
	public void testLeer() {
		
		libroVacio.setNumPaginas(75);
		int paginasALeer = 50;
		int paginasLeidas = 0;
		
		//repeticion de 0 a N
		while (paginasLeidas < paginasALeer){
			libroVacio.leer();
			paginasLeidas++;
		}
		
		assertEquals(50, libroVacio.getMarcador());	
		
		for(int i=0 ; i < paginasALeer ; i++ ){
			libroVacio.leer();
		}
		
		assertEquals("No se pueden leer mas paginas de las que contiene el Libro", libroVacio.getNumPaginas(), libroVacio.getMarcador());
		
	}

	@Test
	public void testEscribir() {
		
		libroVacio.escribir();
		assertEquals(1, libroVacio.getNumPaginas());
		assertEquals(0, libroVacio.getMarcador());
		
		libroVacio.escribir();
		assertEquals(2, libroVacio.getNumPaginas());
		assertEquals(0, libroVacio.getMarcador());
		
		int paginasAEscribir = 5;
		int paginasEscritas	 = 0;
		
		//repeticiones de 1 a N
		do{
			libroVacio.escribir();
			paginasEscritas++;
		}while(paginasEscritas < paginasAEscribir);
		assertEquals(7, libroVacio.getNumPaginas());
		assertEquals(0, libroVacio.getMarcador());
	}

	@Test
	public void testAbrirCerrar() {
		assertEquals(0, libroVacio.abrir());
		assertEquals(0, libroVacio.cerrar());
		
		libroVacio.setNumPaginas(1000);
		
		libroVacio.leer();
		libroVacio.leer();
		
		assertEquals(2, libroVacio.abrir());
		assertEquals(libroVacio.getMarcador(), libroVacio.abrir());
		
		assertEquals((1000-2), libroVacio.cerrar());
		assertEquals((libroVacio.getNumPaginas()-libroVacio.getMarcador()), libroVacio.cerrar());
	}
}
