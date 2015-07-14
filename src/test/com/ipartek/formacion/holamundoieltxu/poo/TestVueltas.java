package com.ipartek.formacion.holamundoieltxu.poo;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TestVueltas {
	Vueltas vueltas;
	float precio;
	float pago;

	@Before
	public void setUp() throws Exception {
		precio = (float) 2000;
		pago = (float) 1326.24;
		vueltas = new Vueltas(precio, pago);	
	}

	@After
	public void tearDown() throws Exception {
		precio = 0;
		pago = 0;
		vueltas = null;
	}

	@Test
	public void testCalcularVueltas() {
		
		int[] cambio = vueltas.getCantidadBilletesMonedas();
		
		assertEquals(13, cambio[0]);
		assertEquals(1, cambio[1]);
		assertEquals(0, cambio[2]);
		assertEquals(0, cambio[3]);
		assertEquals(1, cambio[4]);
		assertEquals(1, cambio[5]);
		assertEquals(1, cambio[6]);
		assertEquals(1, cambio[7]);
		assertEquals(0, cambio[8]);
		assertEquals(1, cambio[9]);
		assertEquals(0, cambio[10]);
		assertEquals(1, cambio[11]);
	}

}
