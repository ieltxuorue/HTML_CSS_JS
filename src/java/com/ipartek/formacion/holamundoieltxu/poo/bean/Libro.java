package com.ipartek.formacion.holamundoieltxu.poo.bean;

public class Libro {
	private String titulo;
	private int    numPaginas;
	private String dimensiones;
	private String autor;
	private String colorPortada;
	private int    marcador; //pagina actual
	
	
	/**
	 * Contructor por defecto
	 */
	public Libro() {
		super();
		this.setTitulo("Sin titulo");
		this.setNumPaginas(0);
		this.setDimensiones("");
		this.setAutor("Anonimo");
		this.setColorPortada("");
		this.setMarcador(0);			//pagina actual
	}

	/**
	 * Constructor con titulo y numero de paginas
	 * @param titulo titulo del libro
	 * @param numPaginas numero de paginas del libro
	 */
	public Libro(String titulo, int numPaginas) {
		this();
		this.setTitulo(titulo);
		this.setNumPaginas(numPaginas);
	}
	
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getNumPaginas() {
		return numPaginas;
	}

	public void setNumPaginas(int numPaginas) {
		this.numPaginas = numPaginas;
	}

	public String getDimensiones() {
		return dimensiones;
	}

	public void setDimensiones(String dimensiones) {
		this.dimensiones = dimensiones;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getColorPortada() {
		return colorPortada;
	}

	public void setColorPortada(String colorPortada) {
		this.colorPortada = colorPortada;
	}

	public int getMarcador() {
		return marcador;
	}

	public void setMarcador(int marcador) {
		this.marcador = marcador;
	}

	
	
	
	@Override
	public String toString() {
		return "Libro [titulo=" + titulo + ", numPaginas=" + numPaginas
				+ ", dimensiones=" + dimensiones + ", autor=" + autor
				+ ", colorPortada=" + colorPortada + ", marcador=" + marcador
				+ "]";
	}

	/**
	 * Leer una o varias paginas del libro, se actualiza marcador, no se puede leer mas paginas que numPagina
	 * @return pagina actual o marcador
	 */
	public int leer(){
		int result = this.getMarcador();
		
		//No leer mas del numPaginas
		if(result < this.getNumPaginas()){
			result++;
			this.setMarcador(result);
		}
		
		return result;
	}
	
	/**
	 * Aumenta el numero de paginas
	 * @return numero de paginas
	 */
	public int escribir(){
		int result = this.getNumPaginas();
		result++;
		this.setNumPaginas(result);
		return result;
	}
	
	/**
	 * Abre el libro y retorna el marcador con la pagina actual
	 * @return marcador
	 */
	public int abrir(){
		return this.getMarcador();
	}
	
	/**
	 * Cierra el Libro y devuelve numero de paginas para finalizar
	 * @return numero de paginas restantes
	 */
	public int cerrar(){	
		return (this.getNumPaginas()-this.getMarcador());
	}
	
}
