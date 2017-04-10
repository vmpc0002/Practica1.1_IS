<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Tienda Online</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body style="background-color:#72959C;">

<div class="jumbotron">
  <div class="container text-center">
    <h1>Tienda Online</h1>
    <p>CONECTATELECO</p>     
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Inicio</a></li>
        <li><a href="productos.do">Productos</a></li>
        <li><a href="contacto.do">Contacto</a></li>
        <li><a href="faq.do">Preguntas Frecuentes</a></li>
        <li><a href="quienessomos.do">Quienes Somos</a></li>
        <li><a href="devoluciones.do">Devoluciones</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="registrarse.do"><span class="glyphicon glyphicon-log-in"></span> Identificate</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
    
      <div class="panel panel-primary">
        <div class="panel-heading">MEMORIAS RAM</div>
        <div class="panel-body"><img src="https://fotos.subefotos.com/63986001d7b0a09a64aadb722f56c7f6o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">DISCOS DUROS</div>
        <div class="panel-body"><img src="https://fotos.subefotos.com/9e894732b1ee32da105ed87a976bc1c2o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">PLACAS BASE</div>
        <div class="panel-body"><img src="https://fotos.subefotos.com/7c1d84230f88b4b351defe46134184bfo.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">TARJETAS GRAFICAS</div>
        <div class="panel-body"><img src="https://fotos.subefotos.com/e6105c1a7b207271a6fe85649f372544o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">TORRES </div>
        <div class="panel-body"><img src="https://fotos.subefotos.com/421cb72f4d74de25866311bddf24d4f2o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">PROCESADORES</div>
        <div class="panel-body"><img src="https://fotos.subefotos.com/1ca4aae6cb250bfabc0b82f62a0ea19bo.jpg"  height="530" width="530" class="img-responsive" style="width:100%" alt="Image"></div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Copyright</p>  
  <form class="form-inline">Obtener Ofertas:
    <input type="email" class="form-control" size="50" placeholder="Direccion Email">
    <button type="button" class="btn btn-danger">Registrarse</button>
  	<h2><a href='cerrar.do'>Cerrar sesion</a></h2>
  </form>
</footer>

</body>
</html>
