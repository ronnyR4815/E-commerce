<!DOCTYPE html>
<html>

<head>
<%@page language="Java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<%@page import="java.util.*" session="true"%>
	<header>
		<title> Cafeteria FLat&White </title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
	</header>
</head>

<body>
	<main>
		<header>
			<h1> Cafeteria Flat&White </h1>
		</header>

		<nav>
			<a href="index.jsp">Inicio</a>
			<a href="tienda.jsp">Ver Productos</a>
			<a href="categoria.jsp" class="active">Buscar Por Categoria</a>
			<a href="info.jsp">Quienes somos?</a>
			<a href="registro.jsp">Registrar Productos</a>
			<a href="session/login.jsp">Login</a>
		</nav>

		<div>
		
			<%
				Producto producto = new Producto();
				out.print(producto.consultart());
			%>
		</div>

		<footer>
			<ul>
				<li>Facebook</li>
				<li>Instagram</li>
				<li>Twitter</li>
			</ul>
		</footer>
	</main>
</body>

</html>