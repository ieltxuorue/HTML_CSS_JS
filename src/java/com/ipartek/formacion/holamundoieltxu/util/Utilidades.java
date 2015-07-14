package com.ipartek.formacion.holamundoieltxu.util;

import java.math.BigDecimal;

public class Utilidades {
	public static final int ASCENDENTE = 0;
	public static final int DESCENDENTE = 1;


	/**
     * Round redondea numeros decimales
     * 		@param d numero decimal a redondear
     * 		@param decimalPlace numero de decimales
     * 		@return numero redondeado
     */
    public static float round(float d, int decimalPlace) {
         return BigDecimal.valueOf(d).setScale(decimalPlace,BigDecimal.ROUND_HALF_UP).floatValue();
    }
    
    /**
     * funcion que ordeana un array de manera ascendente o descendente
     * 	@param array	Array con numeros a ordenar
     * 	@param orden	orden de ordenacion: ascendente o descendente
     * 	@return			retorna el array ordenado
     */
    public static int[] ordenar(int[] array, int orden){
		
    	//clonar array para evitar que array y arrayOrdenado apunten al mismo sitio de memoria
    	int[] arrayOrdenado = array.clone();
    	
    	//Variable para comparar los valores del array de dos en dos.
    	int ayudante1 = 0;
    	int ayudante2 = 0;
    	
    	/**
    	 * Bucle que se repite tantas veces como tamaño del array para cerciorarse de que se ordena correctamente
    	 */
    	for(int cnt=0; cnt<array.length; cnt++){    	
	    	
    		//Intento de ordenacion del array (Ordena el array en distintas pasadas por este codigo)
    		for(int i=0, j=1; j<array.length; i++,j++){
	    		
    			ayudante1 = arrayOrdenado[i];
	    		ayudante2 = arrayOrdenado[j];
	        	
	    		switch (orden){
	    			case ASCENDENTE:
	    				if(ayudante1 < ayudante2){
	    					arrayOrdenado[i] = ayudante1;
	    					arrayOrdenado[j] = ayudante2;
	    				}else{
	    					arrayOrdenado[i] = ayudante2;
	    					arrayOrdenado[j] = ayudante1;
	    				}    			
	    				break;
	    			case DESCENDENTE:
	    				if(ayudante1 > ayudante2){
	    					arrayOrdenado[i] = ayudante1;
	    					arrayOrdenado[j] = ayudante2;
	    				}else{
	    					arrayOrdenado[i] = ayudante2;
	    					arrayOrdenado[j] = ayudante1;
	    				}    			
	    				break;
	        	}	
	    	}
    	}
    	    	
		return arrayOrdenado;
    }
	
	
}
