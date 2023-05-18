<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*" session="true"%>

<!DOCTYPE html>
<html>

<head>
<title>Cafeteria FLat&White</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<h1>Cafeteria Flat&White</h1>

		<nav>
			<a href="index.jsp" class="active">Inicio</a> 
			<a href="tienda.jsp">Ver Productos</a> 
			<a href="categoria.jsp">Buscar Por Categoria</a> 
			<a href="info.jsp">Quienes somos?</a> 
			<a href="registro.jsp">Registrar Productos</a> 
			<a href="session/login.jsp">Login</a>
		</nav>
	</header>
	<main>

		<%
		int cod = Integer.parseInt(request.getParameter("cod"));
		Producto mp = new Producto();
		mp.ConsultarEditarProductos(cod);
		%>

		<form action="EditarProducto.jsp" method="post">
			<table>
				<tr>
					<td><label for="codigo">Código:</label></td>
					<td><input type="text" name="codigo" value="<%=cod%>" /></td>

					<td><label for="categoria">Categoría:</label></td>
					<td><output><%=mp.getId_cat()%></output></td>

					<td><label for="name">Descripción:</label></td>
					<td><input type="text" name="descripcion" value="<%=mp.getDescripcion_pr()%>" /></td>

					<td><label for="name">Precio:</label></td>
					<td><input type="text" name="precio" value="<%=mp.getPrecio_pr()%>" /></td>

					<td><label for="name">Cantidad:</label></td>
					<td><input type="text" name="cantidad" value="<%=mp.getCantidad_pr()%>" /></td>
				</tr>
			</table>
			<input type="submit" name="Actualizar" />
		</form>

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