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


public class ValidarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidarServlet() {
       
    }
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO dao= new DAO();
		
		String email, pass;
		
		email= request.getParameter("txtMail");
		pass=request.getParameter("txtPass");
		
		Usuario u = new Usuario(email,pass);
		
		//devolvera ese exist si existe o no
		//Dvolvera el return del metodo de la clase DAO para saber si hay errores
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
			System.out.println("Clave no validada");
			//getServletContext().getRequestDispatcher("/error.vista").forward(request, response);
	    	request.getRequestDispatcher("ErrorJSP.jsp").forward(request,response);
			
		}else{
			/*Dirigirme al menu*/
			HttpSession session=request.getSession();
			session.setAttribute("usuario", usuario2);
			//Redirigirme al menu
			System.out.println("Clave validada");
			//getServletContext().getRequestDispatcher("/menu.vista").forward(request, response);
	    	request.getRequestDispatcher("Menu.jsp").forward(request,response);
		}
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
