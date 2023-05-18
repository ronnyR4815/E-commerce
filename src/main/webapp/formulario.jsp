<!DOCTYPE html>
<html>

<head>
	<title> Cafeteria FLat&White </title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<main>
		<header>
			<h1> Cafeteria Flat&White </h1>
		</header>

		<nav>
			<a href="index.jsp">Inicio</a>
			<a href="tienda.jsp">Ver Productos</a>
			<a href="categoria.jsp">Buscar Por Categoria</a>
			<a href="info.jsp">Quienes somos?</a>
			<a href="registro.jsp">Registrar Productos</a>
			<a href="session/login.jsp">Login</a>
        </nav>

        <div class="formulario">
        <%

        out.print("Su nombre es " + request.getParameter("txtNombre") + "</br>");

        String cedula = request.getParameter("txtCedula");
        String estadoCivil = request.getParameter("cmbECivil");
        String residencia = request.getParameter("rdResidencia");
        String foto = request.getParameter("fileFoto");
        String color = request.getParameter("colorFavorito");

        %>

        <%=cedula %>
        </br> Su estado civil es
        <%=estadoCivil %>
        </br>
        <u><%=foto %></u>
        El año y mes de nacimiento son:
        <strong><% out.print(request.getParameter("fecha")); %></strong>
        </br>
        <font color=<%=color%>> Este es tu color favorito</font>

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