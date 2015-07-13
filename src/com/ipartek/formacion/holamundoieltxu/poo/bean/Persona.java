package com.ipartek.formacion.holamundoieltxu.poo.bean;

/**
 * Bean para moderar una Persona fisica
 * @author Ieltxu
 *
 */
public class Persona {
	
	//Constantes
	public static final int EDAD_MINIMA = 18;
	public static final int EDAD_MAXIMA = 99;
	
	//Atributos
	private String  nombre;
	private String  apellido;
	private int     edad;
	private String  email;
	private boolean aprobado;
	private long	nota;
	
	//Constructores
		//Constructor vacio
	public Persona() {			
//		super();	//el compilador lo pone automatico, llama al padre - java.lang.Object -
		this.setNombre("Anonimo");
		this.setApellido("Sin Determinar");
		this.setEdad(EDAD_MINIMA);
		this.setEmail("");
		this.setAprobado(false);
		this.setNota((long)0.0);
	}

		//Constructor con parametros	
	/**
	 * Constructor con parametros
	 * @param nombre 	nombre de la Persona
	 * @param edad 		edad de la Persona
	 */
	public Persona(String nombre, int edad) {
		this();	//llamada a constructor por defecto
		this.setNombre(nombre);
		this.setEdad(edad);
	}	

	//Getters y Setters
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {		
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public int getEdad() {
		return edad;
	}
	
	/**
	 * Edad comprendida entre EDAD_MINIMA(18) y EDAD_MAXIMA(99), casos:
	 * <ul>
	 * 	<li>Si es menor que EDAD_MINIMA seteamos a EDAD_MINIMA</li>
	 * 	<li>Si es mayor que EDAD_MAXIMA seteamos a EDAD_MAXIMA</li>
	 * </ul>
	 * @param edad
	 */
	public void setEdad(int edad) {		
		if(edad < EDAD_MINIMA){
			this.edad = EDAD_MINIMA;
		}else if(edad > EDAD_MAXIMA) {
			this.edad = EDAD_MAXIMA;
		}else{
			this.edad = edad;
		}		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isAprobado() {
		return aprobado;
	}

	public void setAprobado(boolean aprobado) {
		this.aprobado = aprobado;
	}

	public long getNota() {
		return nota;
	}

	public void setNota(long nota) {
		this.nota = nota;
	}
		
	//metodos y utilidades
	@Override
	public String toString() {
		return "Persona [nombre=" + nombre + ", apellido=" + apellido
				+ ", edad=" + edad + ", email=" + email + ", aprobado="
				+ aprobado + ", nota=" + nota + "]";
	}
	
}
