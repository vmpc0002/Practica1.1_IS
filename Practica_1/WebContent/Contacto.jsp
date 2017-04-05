<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CONTACTO</title>
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
<div class="container-fluid bg-grey">
  <h2 class="text-center">CONTACTO</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contacta con nosotros las 24 horas del dia</p>
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
      <textarea class="form-control" id="comments" name="comments" placeholder="Comentario" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right"  type="submit">Enviar</button>
        </div>
      </div> 
    </div>
    </form>
  </div>
</div>
</div>
</body>
</html>