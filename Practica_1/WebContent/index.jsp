<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK REL="stylesheet" TYPE="text/css" HREF="css/bootstrap.min.css"/>
<title>Inicio Sesion</title>
</head>
<body>
	<h1> Inicio de sesión</h1>
		<form action="validar.do">
			<input type="text" name="txtMail" placeholder="E-Mail" required="required"/><br/>
			<input type="password" name="txtPass" placeholder="Contraseña" required="required"/><br/>
			<button class="btn btn-primary" type="submit" value="Iniciar Sesion">Iniciar Sesion</button><br/>
		</form>
</body>
</html>