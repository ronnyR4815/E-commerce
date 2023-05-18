<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cafeteria FLat&White</title>
	<link href="../css/style.css" rel="stylesheet" type="text/css">
	<link href="../css/loginStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<h1> Cafeteria Flat&White </h1>
			
		<nav>
			<a href="../index.jsp">Inicio</a>
			<a href="../tienda.jsp">Ver Productos</a>
			<a href="../categoria.jsp">Buscar Por Categoria</a>
			<a href="../info.jsp">Quienes somos?</a>
			<a href="../registro.jsp">Registrar Productos</a>
			<a href="session/login.jsp">Login</a>
	    </nav>
    </header>
    
    <main>
		<div class="cuadro-login">
			<h1>Iniciar sesi�n</h1>
			<form action="verificarLogin.jsp" method="post">
				<label for="usuario">Usuario:</label> 
				<input type="text" id="usuario" name="usuario" required>
				
				<label for="contrase�a">Contrase�a:</label>
				<input type="password" id="contrase�a" name="clave" required>
				
				<button type="submit">Iniciar sesi�n</button>
			</form>
		</div>
	</main>
</body>
</html>