<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK REL="stylesheet" TYPE="text/css" HREF="css/bootstrap.min.css"/>
<title> Devoluciones</title>
<style type="text/css">
#caja{
	
	background:#1CB1B3;
	width:750px;
	border:1px solid white;
	margin: 100px auto;
	padding: 1em;
	border-radius:6px;
}

</style>
</head>
<body background="https://fotos.subefotos.com/b2122af48e98bbb3923030349a0514d8o.png">
<div id="caja">
		<h1 align="center"><img src="https://fotos.subefotos.com/9e555ea03a26b90c8190f2c18ab833eeo.png" width="652" height="308"></h1>
		
  <div class="row">
    <div class="col-sm-5">
      
      <p><span class="glyphicon glyphicon-map-marker"></span> Linares, España</p>
      <p><span class="glyphicon glyphicon-phone"></span> +34 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span> telematica@red.ujaen.es</p> 
    </div>
    <form action="enviarcontacto.do">
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Nombre" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comentario" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          	<h1 align="center"><button class="btn btn-default pull-right"  type="submit">Enviar</button></h1>
         </div>
      </div> 
   
    </form>
    	
		<h2 align="center"><a href='validarmenu.do'><font color="#000000">Atras</font></a></h2>
	</div> 
	</div>
</body>
</html>