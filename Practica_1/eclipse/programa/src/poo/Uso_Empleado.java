package poo;
import java.util.*;

public class Uso_Empleado {

		public static void main(String[] agrs){
			//instanciamos la clase empleado
			//nuestro primero objeto o instancia ya estaria construido
			Empleado empleado1 = new Empleado("David Padilla", 85000, 2016, 12, 17);
			//otro objeto o instancia
			Empleado empleado2 = new Empleado("Tote King", 95000, 2015, 6, 7);
			//otro objeto o instancia de la clase Empleado
			Empleado empleado3 = new Empleado("Shotta", 5000, 2013, 2, 5);
			
			empleado1.subeSueldo(5);
			empleado2.subeSueldo(5);
			empleado3.subeSueldo(5);
			
			System.out.println("Nombre: "+empleado1.dameNombre()+"Sueldo: "+empleado1.dameSueldo()+"Fecha de Alta: "+empleado1.dameSueldo());
		}
}
class Empleado{
	
	private String nombre;
	private double sueldo;
	private Date altaContrato;
	
	public Empleado(String nom, double sue, int anio, int mes, int dia){
		
		nombre=nom;
		sueldo=sue;
		//construye una fecha
		GregorianCalendar calendario = new GregorianCalendar(anio, mes-1, dia);
		
		//getTime devuelve la fecha es un metodo de la clase GrgorianCalendar
		altaContrato=calendario.getTime();
		
	}
	//metodo getter
	public String dameNombre(){
		return nombre;
	}
	//metodo getter
	public double dameSueldo(){
		return sueldo;
	}
	//metogo getter
	public Date dameFechaContrato(){
		return altaContrato;
	}
	//metodo setter
	public void subeSueldo(double porcentaje){
		double aumento=sueldo*porcentaje/100;
		sueldo+=aumento;
	}
}