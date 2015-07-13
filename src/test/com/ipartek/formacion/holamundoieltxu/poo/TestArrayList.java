package com.ipartek.formacion.holamundoieltxu.poo;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class TestArrayList {

	@Test
	public void test() {
		
		ArrayList<Integer> listaEnteros = new ArrayList<Integer>();
		
		assertEquals("Lista no vacia", 0, listaEnteros.size());
		
		listaEnteros.add(1);
		listaEnteros.add(2);
		listaEnteros.add(3);
		
		//comprobar que se insertan al final
		assertTrue("comprobar que se insertan al final", 3 == listaEnteros.get( (listaEnteros.size()-1) ) );
		
		//insertar en una posicion concreta
		listaEnteros.add(1, 100);
		assertEquals( 4, listaEnteros.size());
		assertTrue("comprobar que se insertan en sicha posicion", 100 == listaEnteros.get( 1 ) );
		
		
		
	}

}
