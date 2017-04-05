package controlador;

import java.io.IOException;
import java.util.ArrayList;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.glassfish.gmbal.Description;

import modelo.DAO;
import modelo.Usuario;
import modelo.Error;


public class ValidarRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidarRegistro() {
       
    }
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    	request.getRequestDispatcher("Registrarse.jsp").forward(request,response);
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("ValidarServlet Served at: ").append(request.getContextPath());
		/*Llamamos al modulo en funcon de unos credenciales u otros redigira a menu.vista o error.vista*/
		processRequest(request,response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
