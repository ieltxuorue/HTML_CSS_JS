package com.ipartek.formacion.holamundoieltxu.poo;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestVariablesPrimitivas {

	@Test
	public void testEnteros() {
		
		byte bite	= 0;	//1 byte
		short corto = 0;	//2 bytes
		int entero	= 12;	//3 bytes
		long largo	= 30000;	//4 bytes
		
		//primitiba(WRAPER)
		/**************
		 * byte(Byte) * 
		 **************/
		assertTrue("8 bites o 1 byte", Byte.SIZE == 8 );
		assertTrue("Es menor 127" , bite < Byte.MAX_VALUE);
		assertTrue("Es mayor -128", bite > Byte.MIN_VALUE); 
		
		assertTrue(Byte.valueOf("0") == bite);
		
		bite = (byte) (Byte.MAX_VALUE + 5); 
		assertTrue( bite == -124);
		
		/****************
		 * short(Short) * 
		 ****************/
		assertEquals(Short.SIZE, 8*2);
		assertTrue("Es mayor -32768", corto > Short.MIN_VALUE);
		assertTrue("Es menor 32767" , corto < Short.MAX_VALUE); 
		
		/****************
		 * int(Integer) * 
		 ****************/
		assertEquals(Integer.SIZE, 8*4);
		assertTrue("Es menor 0x80000000", entero > Integer.MIN_VALUE);
		assertTrue("Es mayor 0x7fffffff", entero < Integer.MAX_VALUE); 
		
	}
	
	@Test
	public void testReales() {
		
		float flotante  = 12.03f;
		float flotante2 = (float) 12.03;
		double doble	= 12.04;
		
		/****************
		 * float(Float) * 
		 ****************/
		assertEquals(Float.SIZE, 8*4);
		/******************
		 * double(Double) * 
		 ******************/
		assertEquals(Double.SIZE, 8*8);
	}
	
	@Test
	public void testChar() {
		char caracterAMayus = 'A';
		char caracterAMinus = 'a';
		char caracter9 = '9';
		
		assertEquals(65, (int)caracterAMayus);
		assertEquals(97, (int)caracterAMinus);
		
		/*******************
		 * char(Character) * 
		 *******************/
		assertEquals(10, Character.getNumericValue(caracterAMayus));
		assertEquals(10, Character.getNumericValue(caracterAMinus));
		assertEquals(9, Character.getNumericValue(caracter9));
		
		//convertir primera letra de un String a Mayuscula
		String titulo = "don Quijote de ......";
		
		char letraInicial = titulo.charAt(0);
		letraInicial = Character.toUpperCase(letraInicial);
		
		titulo = letraInicial + titulo.substring(1);
		
		assertEquals("Don Quijote de ......", titulo);
		
	}
	

}
