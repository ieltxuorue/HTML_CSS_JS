package com.ipartek.formacion.holamundoieltxu.poo;

import com.ipartek.formacion.holamundoieltxu.poo.bean.*;


public class HolaMundo {

	
	public static void main(String[] args) {
	
		System.out.println("Hola Mundo");
		
		//crear o instanciar objeto
		Persona pepe = new Persona();
		Persona persona2 = new Persona("Frank de la Jungla", 1078);
		
		Perro perro = new Perro("lasie");
		Perro perro2 = new Perro("perro", persona2);
		
		
		System.out.println(perro.toString());
		System.out.println(perro2.toString());
		
		System.out.println(perro.getNombre()+ ": " + perro.ladrar());
		;
		
		System.out.println(pepe.toString());		
		System.out.println(persona2.toString());
		
		

		
	}

	
}
