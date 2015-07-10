package com.ipartek.formacion.holamundoieltxu.poo.bean;

public class Perro {
	
	//ATRIBUTOS
	private String  nombre;
	private int     edad;
	private String	raza;
	private Persona amo;
	private boolean vacunado;
	private long    peso;
	
	//CONSTRUCTORES
	/**
	 * Constructor para perro abandonado
	 * @param nombre nombre del perro
	 */
	public Perro(String nombre) {
		super();
		this.setNombre(nombre);
		this.setEdad(0);
		this.setRaza("desconocida");
		this.setAmo(new Persona("Abandonado", Persona.EDAD_MINIMA));
		this.setVacunado(false);
		this.setPeso((long)0.0);
	}
	/**
	 * Constructor para perro con amo
	 * @param nombre nombre del perro
	 * @param amo amo al que pertenece el perro
	 */
	public Perro(String nombre, Persona amo) {
		super();
		this.setNombre(nombre);
		this.setAmo(amo);
	}
	
	//GETTERS & SETTERS
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getRaza() {
		return raza;
	}

	public void setRaza(String raza) {
		this.raza = raza;
	}

	public Persona getAmo() {
		return amo;
	}

	public void setAmo(Persona amo) {
		this.amo = amo;
	}

	public boolean isVacunado() {
		return vacunado;
	}

	public void setVacunado(boolean vacunado) {
		this.vacunado = vacunado;
	}

	public long getPeso() {
		return peso;
	}

	public void setPeso(long peso) {
		this.peso = peso;
	}

	
	//METODOS O UTILIDADES
	@Override
	public String toString() {
		return "Perro [nombre=" + nombre + ", edad=" + edad + ", amo=" + amo
				+ ", vacunado=" + vacunado + ", peso=" + peso + "]";
	}

	/**
	 * Ladrido del Perro
	 * @return String con el ladrido
	 */
	public String ladrar(){
		return ("GUAU GUAU GUAU");
	}


	
}
