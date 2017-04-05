package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import com.sun.org.glassfish.gmbal.Description;

import modelo.DAO;
import modelo.Usuario;
import modelo.Error;


public class ValidarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidarServlet() {
       
    }
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO dao= new DAO();
		String email, pass;
		
		//Se leen los parametros
		email= request.getParameter("txtMail");
		pass=request.getParameter("txtPass");
		
		//Se crea el objeto Usuario
		Usuario u = new Usuario(email,pass);
		
		//devolvera ese exist si existe o no
		//Devolvera el return del metodo de la clase DAO para saber si hay errores
		Usuario usuario2= dao.exist(u);
		//Comprobar si hay errores
		if(usuario2.ErrorExiste()){
			/*Dirigirme a error.vista (Lista errores)*/
			ArrayList<Error> errors= usuario2.getErrors();
			//Los tengo que enviar a traves de la sesion
			//Le entrego errors y lo llamo "errores"
			int codigo = 0;
			String descripcion = null;
    		for(Error e: errors){
    			codigo = e.getCodigo();
    			descripcion = e.getDescripcion();
    			
    		}
			request.setAttribute("codigo", codigo);
			request.setAttribute("descripcion", descripcion);
			//Ahora tengo que enviar a errors.u
			//Tengo que redidirigirme
			//getServletContext().getRequestDispatcher("/error.vista").forward(request, response);
	    	request.getRequestDispatcher("ErrorJSP.jsp").forward(request,response);
			
		}else{
			/*Dirigirme al Administrador*/
			//Se guarda el mismo objeto "usuario2" que la base de datos
			HttpSession session=request.getSession();
			session.setAttribute("usuario", usuario2);
			//Se almacena el email en una cookie para poder identificar en el futuro al usuario
			//mediante su email cuando vuelva a navegar por el sitio web
			Cookie c = new Cookie("emailCookie", email);
			c.setMaxAge(60*60*24*365*2);
			c.setPath("/");
			response.addCookie(c);
			//Redirigirme al Administrador
			//getServletContext().getRequestDispatcher("/menu.vista").forward(request, response);
	    	request.getRequestDispatcher("Administrador.jsp").forward(request,response);
	    	
		}
	}

	
	
	/*Metodo doGet donde se hace una llamada a todas las funciones*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		/*Llamamos al modulo en funcon de unos credenciales u otros redigira a menu.vista o error.vista*/
		processRequest(request,response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
