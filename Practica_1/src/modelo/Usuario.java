package modelo;

import java.awt.List;
import java.util.ArrayList;

public class Usuario {
	private String email;
	private String pass;
	private String nombre;
	private ArrayList<Error> errors;
	//Este constructor lo vamos a utilizar para validar
	public Usuario(String email, String pass) {
		super();
		this.email = email;
		this.pass = pass;
		errors= new ArrayList<Error>();
	}
	
	//Cuando el usuario este correctamente validado
	public Usuario(String email, String pass, String nombre) {
		super();
		this.email = email;
		this.pass = pass;
		this.nombre = nombre;
		errors= new ArrayList<Error>();
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	//Añadir el error
	public void AddError(Error error){
		errors.add(error);
	}
	//Me va a decir si hay errores
	public boolean ErrorExiste(){
		//Si es verdadero hay errores
		//isEmpty quiere decir 
		return !errors.isEmpty();
	}

	public ArrayList<Error> getErrors() {
		return errors;
	}

	public void setErrors(ArrayList<Error> errors) {
		this.errors = errors;
	}
	
}
