package com.ipartek.formacion.holamundoieltxu.poo;

import java.math.BigDecimal;
import java.util.Arrays;

public class Vueltas {
	
	/**
	 * Array de Strings con los nombres de Monedas y Billetes
	 * <ul>
	 * <li>billete/s de 50€</li>
	 * <li>billete/s de 20€</li>
	 * <li>billete/s de 10€</li>
	 * <li>billete/s de 5€</li>
	 * <li>moneda/s de 2€</li>
	 * <li>etc...</li>
	 * </ul>
	 */
	private static final String[] NOMBRES_BILLETES_MONEDAS = new String[]{"billete/s de 50€", "billete/s de 20€", "billete/s de 10€", "billete/s de 5€", "moneda/s de 2€", "moneda/s de 1€", "moneda/s de 0.50€", "moneda/s de 0.20€", "moneda/s de 0.10€", "moneda/s de 0.05€", "moneda/s de 0.02€", "moneda/s de 0.01€"};
	public static final float[] BILLETES_MONEDAS = new float[]{50, 20, 10, 5, 2, 1, (float) 0.5, (float) 0.2, (float) 0.1, (float) 0.05, (float) 0.02, (float) 0.01};
	
	private int[] cantidadBilletesMonedas = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
	
	/**
	 * dinero a devolver
	 */
	private float valor;
	
	/**
	 * precio de la compra
	 */
	private float precio;
	
	/**
	 * pago realizado o dinero entregado
	 */
	private float pago;

	/**
	 * Constructor de objeto para calcular las vueltas optimas
	 * 	@param precio {@code float} precio de la compra realizada
	 * 	@param pago {@code float} dinero entregado por el comprador
	 */
	public Vueltas(float precio, float pago) {
		super();
		this.setPrecio(precio);
		this.setPago(pago);
		this.valor = (precio-pago);
		calcularVueltas();
	}
	
	/**
	 * Getters y setters
	 */
	public float getValor() {
		return valor;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
		this.valor = (precio - this.getPago());
	}

	public float getPago() {
		return pago;
	}

	public void setPago(float pago) {
		this.pago = pago;
		this.valor = (this.getPrecio() - pago);
	}

	public int[] getCantidadBilletesMonedas() {
		return cantidadBilletesMonedas;
	}


	/**
	 * Funcion toString()
	 */
	@Override
	public String toString() {
		return "Vueltas [cantidadBilletesMonedas="
				+ Arrays.toString(cantidadBilletesMonedas) + ", valor=" + valor
				+ "]";
	}

	
	/**
	 * Calcula las vueltas de forma optima para retornar los minimos billetes y
	 * monedas posibles
	 */
	public void calcularVueltas(){
		
		float cambios = this.getValor();
		
		for(int i=0;i<BILLETES_MONEDAS.length;i++){
			
			while(cambios>BILLETES_MONEDAS[i]){
				cantidadBilletesMonedas[i]++;
				cambios = cambios - BILLETES_MONEDAS[i];
				cambios = round(cambios, 2);
			}
			
		}
		
		//Muestra en pantalla de forma bonita el resultado de calcularVueltas();
		System.out.println("------------- RESULTADO ---------------------");
		System.out.println("Vueltas de "+ this.getValor() + "Euros:");
		for(int i=0;i<BILLETES_MONEDAS.length;i++){
			System.out.println(cantidadBilletesMonedas[i] + " " + NOMBRES_BILLETES_MONEDAS[i]);			
		}
		System.out.println("--------------------------------------------------------");
	}
	
	/**
     * Round redondea numeros decimales
     * 
     * @param d numero decimal a redondear
     * @param decimalPlace numero de decimales
     * @return numero redondeado
     */

    public static float round(float d, int decimalPlace) {
         return BigDecimal.valueOf(d).setScale(decimalPlace,BigDecimal.ROUND_HALF_UP).floatValue();
    }
	
	
	
	
	

}
