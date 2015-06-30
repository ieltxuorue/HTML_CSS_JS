package com.ipartek.formacion.holamundoieltxu.controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControladorAjaxRegistroUsuario
 */
public class ControladorAjaxRegistroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorAjaxRegistroUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//declarar array con nombres de usuarios
		ArrayList<String> listaUsuarios = new ArrayList<String>();
		listaUsuarios.add("ander");
		listaUsuarios.add("pepe");
		listaUsuarios.add("marimotots");
		listaUsuarios.add("ambrosio");
		listaUsuarios.add("doraemon");
		listaUsuarios.add("callou");
		
		//declarar array con emails de usuarios
		ArrayList<String> listaEmails = new ArrayList<String>();
		listaEmails.add("ander@hotmail.com");
		listaEmails.add("ander@gmail.com");
		listaEmails.add("ander@yahoo.com");
		listaEmails.add("ander@ipartek.com");
		
		//respuesta tipo Json
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		//variable tipo PrintWriter para escribir response
		PrintWriter out = response.getWriter();
		
		//parametro usuario
		//operador ternario var = (condicion)? valor1 : valor2;
		//	condicion = true => var = valor1
		//	condicion = false => var = valor2
		String usuario = (request.getParameter("usuario") == null) ? "" : request.getParameter("usuario");
		String email = (request.getParameter("mail") == null) ? "" : request.getParameter("mail");
		boolean libre_user = false;
		boolean libre_email = false;
		
		if (!"".equalsIgnoreCase(usuario)&&!listaUsuarios.contains(usuario)){
			libre_user = true;
		}
		
		if (!"".equalsIgnoreCase(email)&&!listaEmails.contains(email)){
			libre_email = true;
		}
		
		//TODO comprobar email valido
		
		//formatear las response	
		out.print("{ ");
		out.print("\"valid_user\": " + libre_user + ",");
		out.print("\"user\": \""+usuario+"\" ,");
		out.print("\"valid_mail\": " + libre_email + ",");
		out.print("\"mail\": \""+email+"\"");
		out.print(" }");

	}

}
