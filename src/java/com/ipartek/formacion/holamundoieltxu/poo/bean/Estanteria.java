package com.ipartek.formacion.holamundoieltxu.poo.bean;

import java.util.ArrayList;

public class Estanteria {

	private ArrayList<Libro> libros;
	
	
	/**
	 * Constructor de la estanteria
	 */
	public Estanteria() {
		super();
		this.libros = new ArrayList<Libro>();
	}
	
	
	public int numLibros(){
		return libros.size();
	}

	public void guardar(Libro libro){
		libros.add(libro);
	}
	
	/**
	 * Obtenemos el Libro por su titulo
	 * @param titulo titulo del Libro
	 * @return Libro solicitado, si no existe null
	 */
	public Libro extraer(String titulo){		
		int posLibro = -1;
				
		for(int i = 0 ; i < libros.size() ; i++){
            if(libros.get(i).getTitulo().equalsIgnoreCase(titulo)){
            	posLibro = i;
            	break;	//Para que seguir buscando?
            }
		}
		
		if (posLibro == -1){
			return null;
		}else{
			return libros.remove(posLibro);
		}
	}
	
}



