package controlador;

import java.io.IOException;
import java.util.ArrayList;
 
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.glassfish.gmbal.Description;

import modelo.Articulos;
import modelo.DAO;
import modelo.Usuario;
import modelo.Error;


public class ValidarMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidarMenu() {
       
    }
    
	
	protected void EnviarDatos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre,mail, telefono,codigopostal;
		
		nombre=request.getParameter("txtNombre");
		mail=request.getParameter("txtCorreo");
		telefono=request.getParameter("txtTelefono");
		codigopostal=request.getParameter("txtCodigopostal");
		Usuario u = new Usuario(nombre,mail,telefono,codigopostal);
		
		HttpSession session= request.getSession(true);
		session.setAttribute("Usuario", u);
		
		//Esto va aqui?????????????
		String[] nombres;
		nombres= new String[]{"Intel i7-6700K 4.0Ghz Box","Kingston SSDNow 120GB","Asus H81M-P PLUS","GeForce GTX 1080 XDDR5",
				"NOX Coolbay SX USB 3.0","Intel i5-6600K 3.5Ghz","MSI Z270 Gaming Pro","EVGA GeForce GTX 1070"};
		
		ArrayList<Articulos> carrito = new ArrayList<Articulos>();
		for (int i=0;i<8;i++){
			Articulos p=new Articulos("producto"+i,nombres[i],0);
			carrito.add(p);
			session.setAttribute("carrito", carrito);
		}
		
    	request.getRequestDispatcher("Menu.jsp").forward(request,response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		/*Llamamos al modulo en funcon de unos credenciales u otros redigira a menu.vista o error.vista*/
		EnviarDatos(request,response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
