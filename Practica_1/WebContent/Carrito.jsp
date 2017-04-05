
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CARRITO</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}

</style>
</head>
<body style="background-color:#72959C;">

<table>
		<h2><span>Nombre: ${Usuario.nombre}</span></h2>
      	<h2><span>Email: ${Usuario.mail}</span></h2>
      	<h2><span>Telefono: ${Usuario.telefono}</span></h2>
      	<h2><span>Codigo Postal: ${Usuario.codigopostal}</span></h2>
      	

  <tr>
  		
  	<th>ARTICULOS</th>
  	<th>ID</th>
    <th>PRECIO</th>
    <th>CANTIDAD</th>
    
  </tr>

 
  <!-- cambiarlo por un for each y para cada entrada del for each es poner c: out value="nombre variable. value. nombre campo" --> 
	<c:set var="tam" value="${fn:length(carrito)}" />
	<c:forEach var="list" items="${carrito}" varStatus="estado">
<tr>
<c:choose>
	<c:when test="${list.cantidad>'0'}" >
		<td><c:out value="" /><c:out value="${list.nombre}" /></td>
		<td><c:out value="" /><c:out value="${list.id}" /></td>
		<td><c:out value="" /><c:out value="${list.precio }" /></td>
		<td><c:out value="" /><c:out value="${list.cantidad}" /></td>
	</c:when>
	<c:otherwise>
		
	</c:otherwise> 
</c:choose>
  </tr>
  	</c:forEach>
 
  
</table>
<table>
	<tr>
		<th>TOTAL</th>
		
		<td><c:out value="" /><c:out value="${sumatotal}" /></td>
		
	
	</tr>
	
</table>
<table>
<tr>
<form action="productos.do">
	<th><input type="image" src="https://fotos.subefotos.com/56b993a05bd5373d7dd36bb842b0d239o.png" alt="submit" width="330" height="118" align="center"><br/></th>
</form>	

<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
	<td>
		<input type="hidden" name="cmd" value="_s-xclick">
		<input type="hidden" name="hosted_button_id" value="TH9AS6QLY4FFQ">
		<input type="image" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet.">
		<img alt="" border="0" src="https://www.sandbox.paypal.com/es_ES/i/scr/pixel.gif" width="1" height="1">
	</td>
</form>
</tr>
</table>	
</body>
</html>
