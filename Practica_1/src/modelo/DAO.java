package modelo;

public class DAO {
	
	public Usuario exist(Usuario u){
		if(!u.getEmail().equalsIgnoreCase("david@gmail.com") && !u.getPass().equalsIgnoreCase("123") ){
			/*Credenciales erroneas*/
			u.AddError(new Error(300, "Email y Contraseña incorrectos"));
			return u;
		}else if(u.getEmail().equalsIgnoreCase("david@gmail.com")){
			/*OK*/	
			if(u.getPass().equalsIgnoreCase("123")){
				/*OK*/
				return new Usuario(u.getEmail(), u.getPass(), "David Padilla");
			}else{
				/*Pass incorrecta*/
				Usuario nuevoUsuario=  new Usuario(u.getEmail(), u.getPass(), "David Padilla");
				//Error(codigo_error, mensaje)
				nuevoUsuario.AddError(new Error(100,"Contraseña incorrecta"));
				return nuevoUsuario;
			}
		}else{
			/*Email erróneo*/
			Usuario nuevoUsuario=  new Usuario(u.getEmail(), u.getPass(), "David Padilla");
			nuevoUsuario.AddError(new Error(200,"Email incorrecta"));
			return nuevoUsuario;
		}
	}
	
}
