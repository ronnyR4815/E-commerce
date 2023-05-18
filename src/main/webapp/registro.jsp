<!DOCTYPE html>
<html>

<head>
	<title>Cafeteria FLat&White</title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<main>
		<header>
			<h1>Cafeteria Flat&White</h1>
		</header>

		<nav>
			<a href="index.jsp">Inicio</a>
			<a href="tienda.jsp">Ver Productos</a>
			<a href="categoria.jsp">Buscar Por Categoria</a> 
			<a href="info.jsp">Quienes somos?</a> 
			<a href="registro.jsp" class="active">Registrar Productos</a>
			<a href="session/login.jsp">Login</a>
		</nav>

		<div class="cuadro-registro">
			<form action="formulario.jsp" method="post">
				Nombre: <input type="text" name="txtNombre" /> <br> Cedula: <input
					type="text" name="txtCedula" maxlength="10" /> <br> Estado
				Civil: <select name="cmbECivil">
					<hr>
					<option value="Soltero">Soltero</option>
					<hr>
					<option value="Casado">Casado</option>
					<hr>
					<option value="Divorciado">Divorciado</option>
					<hr>
					<option value="Viudo">Viudo</option>
					<br>
				</select> Lugar residencia <input type="radio" name="rdResidencia"
					value="Sur" />Sur
				<hr>
				<input type="radio" name="rdResidencia" value="Norte" />Norte
				<hr>
				<input type="radio" name="rdResidencia" value="Centro" />Centro
				<hr>
				Foto <input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" />
				<br> Mes y año de nacimiento: <input type="month" name="fecha" />
				<br> Color Favorito <input type="color" name="colorFavorito" />
				<br>
				<hr>

				<input type="submit" /> <input type="reset" />
			</form>
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