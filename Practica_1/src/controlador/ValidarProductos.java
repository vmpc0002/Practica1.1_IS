package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Articulos;
//import modelo.CestaCompra;


public class ValidarProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ValidarProductos() {
        super();
        
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	HttpSession session= request.getSession(true);
    	 //Se crea el ArrayList de Articulos
  		ArrayList<Articulos> carrito = (ArrayList<Articulos>)request.getSession().getAttribute("carrito");
  		
    	if(carrito==null){
    		
    		carrito= new ArrayList<Articulos>();
    		
    	}else{
    		
    	float sumatotal=0;
    	
    	
  		Articulos mi_lista=new Articulos();
  		
  		mi_lista.setCantidad(new Integer(request.getParameter("cantidad_productos")));
  		mi_lista.setNombre(request.getParameter("nombre"));
  		mi_lista.setId(request.getParameter("id"));
  		mi_lista.setPrecio(new Float(request.getParameter("precio")));
  		carrito.add(mi_lista);
  		
  		
  		//Hacemos la suma total de los productos
  		for(int i=0;i<carrito.size();i++){
  		
  			sumatotal=sumatotal+(carrito.get(i).getCantidad())*(carrito.get(i).getPrecio());
  		
  		}
  		
  		//Establecemos en dos sesiones el carrito y la sumatotal
		session.setAttribute("carrito", carrito);
  		session.setAttribute("sumatotal", sumatotal);
  		
    	//Nos redirigimos al carrito de JSP
    	request.getRequestDispatcher("Carrito.jsp").forward(request,response);
    	}
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
