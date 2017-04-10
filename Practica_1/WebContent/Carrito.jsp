
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
		<h2><span><font color="#000000">Bienvenido</font><font color="#FFFFFF"> ${Usuario.nombre}</font></span></h2>
      	<h2><span><font color="#000000">Email: </font><font color="#FFFFFF">${Usuario.mail}</font></span></h2>
      	<h2><span><font color="#000000">Telefono: </font><font color="#FFFFFF">${Usuario.telefono}</font></span></h2>
      	<h2><span><font color="#000000">Codigo Postal:</font><font color="#FFFFFF"> ${Usuario.codigopostal}</font></span></h2>
      	<h2><span><font color="#000000">Contraseña:</font><font color="#FFFFFF"> ${Usuario.contraseña}</font></span></h2>

  <tr bgcolor="black">
  		
  	<th><font color="white">ARTICULOS</font></th>
  	<th><font color="white">ID</font></th>
    <th><font color="white">PRECIO</font></th>
    <th><font color="white">CANTIDAD</font></th>
    
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
	<tr bgcolor="black">
		<th><font color="white">TOTAL</font></th>
		
		<td><font color="white"><c:out value="" /><c:out value="${sumatotal}" /></font></td>
		
	
	</tr>
	
</table>
<table>
<tr bgcolor="#041463">
<form action="productos.do">
	<th><input type="image" src="https://fotos.subefotos.com/56b993a05bd5373d7dd36bb842b0d239o.png" alt="submit" width="180" height="80" align="center"><br/></th>
</form>	

<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
	<td>
		<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
			<input type="hidden" name="cmd" value="_xclick">
			<input type="hidden" name="business" value="KJ3YCCXUX5FSA">
			<input type="hidden" name="lc" value="ES">
			<input type="hidden" name="item_name" value="Pago hecho">
			<input type="hidden" name="item_number" value="001">
			<input type="hidden" name="amount" value="${sumatotal}">
			<input type="hidden" name="currency_code" value="EUR">
			<input type="hidden" name="button_subtype" value="services">
			<input type="hidden" name="no_note" value="0">
			<input type="hidden" name="cn" value="Añadir instrucciones especiales para el vendedor:">
			<input type="hidden" name="no_shipping" value="2">
			<input type="hidden" name="undefined_quantity" value="1">
			<input type="hidden" name="rm" value="1">
			<input type="hidden" name="return" value="http://localhost:8080/Practica_1/Correcto.jsp">
			<input type="hidden" name="cancel_return" value="http://localhost:8080/Practica_1/Menu.jsp">
			<input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynowCC_LG.gif:NonHosted">
			<input type="image" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet.">
			<img alt="" border="0" src="https://www.sandbox.paypal.com/es_ES/i/scr/pixel.gif" width="1" height="1">
</form>

	</td>
</form>
<form action="validarmenu.do">
	<td>
		<input type="image" src="https://fotos.subefotos.com/bd510011367bdfdeaf5b36a13cd62207o.png" alt="submit" width="100" height="80" align="center"><br/>
	</td>
</form>
</tr>
</table>	
</body>
</html>
