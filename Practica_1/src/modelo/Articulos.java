package modelo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Articulos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String id;
	private String nombre;
	private float precio;
	private int cantidad;
	public ArrayList<Articulos> carrito;
	
	public Articulos(){
		
	}
    public Articulos(String id, String nombre, Integer cantidad) {
        this.id=id;
        this.nombre=nombre;
        this.cantidad=cantidad;
    }
    
    
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public Float getPrecio() {
		return precio;
	}



	public void setPrecio(Float float1) {
		this.precio = (float) float1;
	}



	public Integer getCantidad() {
		return cantidad;
	}



	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}





}
