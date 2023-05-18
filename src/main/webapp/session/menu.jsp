<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.producto.seguridad.*"%>
    

			<%
				String usuario;
				HttpSession sesion = request.getSession();
				 if (sesion.getAttribute("usuario") == null){ //Se verifica si existe la variable
				 %>
				 <jsp:forward page="login.jsp">
				 <jsp:param name="error" value="Debe registrarse en el sistema."/>
				 </jsp:forward>
				 <%
				 } else { %>
				 <!DOCTYPE html>
				<html>
				<head>
					<meta charset="ISO-8859-1">
					<title>Cafeteria FLat&White</title>
					<link href="../css/style.css" rel="stylesheet" type="text/css">
					<link href="../css/loginStyle.css" rel="stylesheet" type="text/css">
				</head>
				<body>
				
				    <main>
					<header>
					<h1> Cafeteria Flat&White </h1>
							
						<nav>
							<a href="../index.jsp">Inicio</a>
							<a href="../tienda.jsp">Ver Productos</a>
							<a href="../categoria.jsp">Buscar Por Categoria</a>
							<a href="../info.jsp">Quienes somos?</a>
							<a href="../registro.jsp">Registrar Productos</a>
							<a href="cerrarSesion.jsp">Cerrar Sesion</a>
					    </nav>
				    </header>
					 <%
					 usuario = (String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
					 int perfil = (Integer)sesion.getAttribute("perfil");
					 %>
					<h1>Bienvenido 
					<%
					out.println(usuario);
					%>
					</h1>
					<%
					Pagina pag = new Pagina();
					String menu = pag.mostrarMenu(perfil);
					out.print(menu);
				}
				 
			%>
