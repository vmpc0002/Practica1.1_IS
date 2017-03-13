/*package vista;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Error;
import modelo.Usuario;


public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html; charset=UTF-8"); 
    	
    	HttpSession session= request.getSession();
    	
    	Usuario u= (Usuario) session.getAttribute("usuario");*/
    	
    	/*if(u==null){
    		/*Ingreso directamente al menu con la url sin poner las credenciales
    		 * es decir: http://localhost:8080/Practica_1/menu.vista*/
    		/*ArrayList<Error> errors = new ArrayList<Error>();
    		errors.add(new Error(400,"Debe iniciar sesion para acceder al menu"));
    		 
    		session.setAttribute("errores", errors);
    		request.getRequestDispatcher("error.vista").forward(request,response);
    	}
    	
    	
    	PrintWriter out= response.getWriter();
    	
    	try{
    		out.println("<!DOCTYPE html>");
    		out.println("<html>");
    		out.println("<head>");
    		out.println("<title>Servlet MenuServlet </title>");
    		out.println("</head>");
    		out.println("<body>");
    		out.println("<h1>Menu Servlet at "+request.getContextPath()+"</h1>");
    		
    		//Redirigimos a CerrarSesion.java
    		out.println("<a href='CerrarSesion'>Cerrar sesion</a>");
    		
    		out.println("</body>");
    		out.println("</html>");
    		
    	}finally{
    		 out.close();
    	}
    }
    public MenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Llamamos al modulo que hemos creado*/
	/*	processRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
 }*/

