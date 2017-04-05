<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK REL="stylesheet" TYPE="text/css" HREF="css/bootstrap.min.css"/>
<title>Inicio Sesion</title>
<style type="text/css">
#caja{
	
	background:#1CB1B3;
	width:350px;
	border:1px solid white;
	margin: 100px auto;
	padding: 1em;
	border-radius:6px;
}
#caja1{
	background:#1CB1B3;
	width:350px;
	border:1px solid white;
	margin: 1px auto;
	padding: 0.5em;
	border-radius:6px;
}

</style>
</head>
<body style="background-color:#72959C;">
<div id="caja">
	<h1><b> Inicio de sesion</b></h1>
		<form action="validar.do">
			<input type="text" name="txtMail" value="david@gmail.com" placeholder="E-Mail" required="required"/><br/>
			<input type="password" name="txtPass" value="123" placeholder="Contraseña" required="required"/><br/>
			<button class="btn btn-primary" type="submit" value="Iniciar Sesion">Iniciar Sesion</button><br/>
		</form>
		</div>
		<div id="caja1">		
		<form action="registrarse.do">
		<button class="btn btn-primary" type="submit" value="Registrarse">Registrarse</button><br/>
		</form>
		</div>
	
</body>
</html>