<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>PRODUCTOS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body style="background-color:#72959C;">

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
        <li class="active"><a href="validarmenu.do">Inicio</a></li>
        <li><a href="contacto.do">Contacto</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="registrarse.do"><span class="glyphicon glyphicon-log-in"></span> Identificate</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="vercarrito.do"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito </a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron">
  <div class="container text-center">
    <h1>PRODUCTOS DISPONIBLES</h1>      
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
  <h3><b>CONECTATELECO</b></h3><br>
  <div class="row">
    <div class="col-sm-3">
    <form action="validarproductos.do">
      <p>Intel i7-6700K 4.0Ghz Box</p>
      <p><b>335 euros</b></p>
      	<img src="https://fotos.subefotos.com/63986001d7b0a09a64aadb722f56c7f6o.jpg" height="530" width="530" class="img-responsive" style="width:100%"" class="img-responsive" style="width:100%" alt="Image">
    	<b>Introduzca cantidad del producto: </b>
    	<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="Intel i7-6700K 4.0Ghz Box"/>
		<input type="hidden" name="precio" value="335.0"/>
		<input type="hidden" name="id" value="producto1"/>
    	<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit" width="160" height="60"><br/>
    	</form>
    </div>
    <div class="col-sm-3"> 
    <form action="validarproductos.do">
      <p >Kingston SSDNow 120GB</p>
      <p><b> 57 euros</b></p>
      	<img src="https://fotos.subefotos.com/9e894732b1ee32da105ed87a976bc1c2o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
    	<b>Introduzca cantidad del producto: </b>
    	<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="Kingston SSDNow 120GB"/>
		<input type="hidden" name="precio" value="57.0"/>
		<input type="hidden" name="id" value="producto2"/>
    	<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit" width="160" height="60"><br/>
    </form>
    </div>
    <div class="col-sm-3"> 
    <form action="validarproductos.do">
      <p>Asus H81M-P PLUS</p>
      <p><b>49 euros</b></p>
      <img src="https://fotos.subefotos.com/7c1d84230f88b4b351defe46134184bfo.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
    	<b>Introduzca cantidad del producto: </b>
    	<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="Asus H81M-P PLUS"/>
		<input type="hidden" name="precio" value="49.0"/>
		<input type="hidden" name="id" value="producto3"/>
    	<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit" width="160" height="60"><br/>
   
    </form>
    </div>
    <div class="col-sm-3">
    <form action="validarproductos.do">
      <p>GeForce GTX 1080 XDDR5</p>
      <p><b>899 euros</b></p>
      <img src="https://fotos.subefotos.com/e6105c1a7b207271a6fe85649f372544o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
   		<b>Introduzca cantidad del producto: </b>
   		<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="GeForce GTX 1080 XDDR5"/>
		<input type="hidden" name="precio" value="899.0"/>
		<input type="hidden" name="id" value="producto4"/>
   		<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit" width="160" height="60"><br/>
    	</form>
    </div>
  </div>
</div><br>

<div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-3">
    <form action="validarproductos.do">
      <p>NOX Coolbay SX USB 3.0</p>
      <p><b>43 euros</b></p>
      <img src="https://fotos.subefotos.com/0f48044a33fc9e78fe03d9e653c7524eo.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
    	<b>Introduzca cantidad del producto: </b>
    	<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="NOX Coolbay SX USB 3.0"/>
		<input type="hidden" name="precio" value="43.0"/>
		<input type="hidden" name="id" value="producto5"/>
    	<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit"  width="160" height="60"><br/>
    </form>
    </div>
    <div class="col-sm-3"> 
    <form action="validarproductos.do">
      <p>Intel i5-6600K 3.5Ghz</p>
      <p><b>239 euros</b></p>
      <img src="https://fotos.subefotos.com/88c85f5d7ba63ebf69854f97248c019co.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
    	<b>Introduzca cantidad del producto: </b>
    	<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="Intel i5-6600K 3.5Ghz"/>
		<input type="hidden" name="precio" value="239.0"/>
		<input type="hidden" name="id" value="producto6"/>
    	<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit"  width="160" height="60"><br/>
    	</form>
    </div>
    <div class="col-sm-3"> 
    <form action="validarproductos.do">
      <p>MSI Z270 Gaming Pro</p>
      <p><b>189 euros</b></p>
      <img src="https://fotos.subefotos.com/510f66add9e09c082bc34db7dd60ff98o.jpg" height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
   		<b>Introduzca cantidad del producto: </b>
   		<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="MSI Z270 Gaming Pro"/>
		<input type="hidden" name="precio" value="189.0"/>
		<input type="hidden" name="id" value="producto7"/>
   		<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit"  width="160" height="60"><br/>
    </form>
    </div>
    <div class="col-sm-3">
    <form action="validarproductos.do">
      <p>EVGA GeForce GTX 1070</p>
      <p><b>539 euros</b></p>
      <img src="https://fotos.subefotos.com/b49f731679e21d36ef1b9c6a4e3305a7o.jpg"  height="530" width="530" class="img-responsive" style="width:100%" alt="Image">
    	<b>Introduzca cantidad del producto: </b>
    	<select name="cantidad_productos">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select>
		<input type="hidden" name="nombre" value="EVGA GeForce GTX 1070"/>
		<input type="hidden" name="precio" value="539.0"/>
		<input type="hidden" name="id" value="producto8"/>
    	<input type="image" src="https://fotos.subefotos.com/063bab2b757e3b47f6e792199b10e438o.jpg" alt="submit"  width="160" height="60"><br/>
    </form>
    </div>
    
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Gracias por confiar en <b>CONECTATELECO</b></p>
</footer>

</body>
</html>
