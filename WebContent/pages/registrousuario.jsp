<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="shortcut icon"
	href="https://img.icons8.com/color/48/000000/park-and-charge.png"
	type="image/x-icon">
<title>EXAMEN FINAL | WEB</title>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="../css/style.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>

<body>
	<jsp:useBean id="ppDao" class="dao.ProgramaDao" scope="request"></jsp:useBean>
	<header>
		<div class="navbar-fixed">
			<nav>
				<div class="nav-wrapper light-blue darken-3">
					<a href="index.html" class="center brand-logo"><i
						class="material-icons"> </i>ADMINISTRADOR</a> <a href="#"
						data-target="mobile-demo" class="sidenav-trigger"><i
						class="material-icons">book</i></a>

				</div>
			</nav>
		</div>

		<ul class="sidenav light-green darken-3" id="mobile-demo">
			<li><a class="subheader white-text">Enlaces</a></li>
			<li>
				<div class="divider"></div>
			</li>

			<li><a href="listado.jsp"
				class="waves-effect waves-light btn deep-purple darken-2"><i
					class="material-icons left"> movie</i>LIST PELIS</a></li>
			<li><a href="registro.jsp"
				class="waves-effect waves-light btn deep-purple darken-2"><i
					class="material-icons left"> movie</i>REG PELI</a></li>
		</ul>
	</header>

	<main class="lighten-5">

		<section class="container">
			<div class=" row" style="margin-top: 35px; margin-bottom: 35px;">
				<h4 class="center-align">REGISTRAR UN NUEVO ADMINISTRADOR</h4>
				<article class="card-panel hoverable col s8 offset-s2">
					<form style="padding: 10px;" parent="_blank" method="POST"
						action="RegistrarUsuarioController" runat="server">

						<div class="input-field">
							<i class="material-icons prefix"></i> <label for="usuario">Ususario</label>
							<input type="text" name="usuario" required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix"></i> <label for="nombre">Nombre</label>
							<input type="text" name="nombre" required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix"></i> <label for="clave">Clave</label>
							<input type="password" name="clave" required>
						</div>

						<div class="input-field">
							<i class="material-icons prefix"></i> <label for="email">Email</label>
							<input type="email" name="email" required>
						</div>
						
						
						
						
						
						
						<div class="input-field col s6">
							<select name="programa" id="programa">
								<option value="" name="programa" id="programa"disabled selected>Elija El Programa</option>
								<c:forEach var="p" items="${ppDao.list()}">
									<option value="${p.codigo}" name="programa" id="programa"><c:out value="${p.nombre}"/></option>
								</c:forEach>
							</select> <label>Escoja Programa</label>
					</div>
						


						<div class="row">
							<div class="form-group col-md-3">
								<label for="programa">Programa</label> <select name="programa"><br>
									<c:forEach var="p" items="${ppDao.list()}">
										<option value="${p.codigo}">${p.nombre}</option>
									</c:forEach>
								</select>
							</div>
						</div>




						<p class="center-align">
							<button class="waves-effect waves-light btn teal darken-4"
								type="submit">
								<i class="material-icons right">person_add</i>REGISTRAR
							</button>
						</p>

					</form>
					<p class="center-align">
						<button class="waves-effect waves-light btn teal darken-4"
							type="submit">
							<i class="material-icons left">arrow_back</i>VOLVER
						</button>
					</p>

				</article>
			</div>
		</section>
	</main>

	<footer class="page-footer light-blue darken-3">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<h5 class="white-text">GESTION EGRESADOS</h5>
					<p class="grey-text text-lighten-4">Texto descriptivo.</p>
				</div>
				<div class="col l4 offset-l2 s12">
					<h5 class="white-text">Links</h5>
					<ul>
						<li><a class="grey-text text-lighten-3"
							href="https://github.com/camiloabrilth1999/egresados">GitHub</a></li>
						<li><a class="grey-text text-lighten-3"
							href="https://ingsistemas.cloud.ufps.edu.co/index.php">Ing.
								Sistemas UFPS</a></li>
						<li><a class="grey-text text-lighten-3"
							href="https://materializecss.com">Materialize</a></li>
						<li><a class="grey-text text-lighten-3"
							href="https://theuselessweb.com">Random</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				© 2019 Programación Web <a class="grey-text text-lighten-4 right"
					href="#!">Mail</a>
			</div>
		</div>
	</footer>
	<!-- Compiled and minified JavaScript -->
	<script src="../js/function.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>

</html>