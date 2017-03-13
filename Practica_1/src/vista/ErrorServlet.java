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


public class ErrorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html; charset=UTF-8"); 
    	PrintWriter out= response.getWriter();
    	
    	HttpSession session=request.getSession();
    	
    	ArrayList<Error> errors= (ArrayList<Error>) session.getAttribute("errores");
    	try{
    		out.println("<!DOCTYPE html>");
    		out.println("<html>");
    		out.println("<head>");
    		out.println("<title>Error </title>");
    		out.println("</head>");
    		out.println("<body>");
    		out.println("<h1>Error!:D </h1>");
    		
    		for(Error e: errors){
    			out.println("["+e.getCodigo()+"]"+e.getDescripcion());
    		}
    		out.println("<a href='index.jsp'>Volver</a>");
    		out.println("</body>");
    		out.println("</html>");
    		
    	}finally{
    		 out.close();
    	}
    }
    public ErrorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Error Served at: ").append(request.getContextPath());
		Llamamos al modulo paraa que nos diga que tipo de error se ha cometido
		processRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}*/
