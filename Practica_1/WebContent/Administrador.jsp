<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenido administrador</title>
<style type="text/css">
#caja{
	
	background:#1CB1B3;
	width:350px;
	border:1px solid white;
	margin: 100px auto;
	padding: 1em;
	border-radius:6px;
}

</style>
</head>
	<body style="background-color:#72959C;">
		<div id="caja">
			<form>
				<h1>Cookie: </h1>
			</form>
			${cookie.JSESSIONID.value}
		</div>
	</body>
</html>