<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<body>
	<jsp:useBean id="ppDao" class="dao.ProgramaDao" scope="request"></jsp:useBean>

	<div class="container">
		<form action="../SignUpController" method="post">

			<div class="row">
				<div class="form-group col-md-3">
					<label for="documento">Documento</label> <input type="text"
						class="form-control" name="documento" placeholder="1090537651"
						required>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-3">
					<label for="nombre">Nombre</label><input type="text"
						class="form-control" name="nombre" placeholder="Camilo Obando"
						required>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-3">
					<label for="telefono">Telefono</label><input type="text"
						class="form-control" name="telefono" placeholder="3187659876"
						required>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-3">
					<label for="email">Email</label><input type="email"
						class="form-control" name="email"
						placeholder="ejemplo@ejemplo.com" required>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-3">
					<label for="codigo">Codigo</label><input type="text"
						class="form-control" name="codigo" placeholder="1151493" required>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-3">
					<label for="clave">Clave</label><input type="password"
						class="form-control" name="clave" placeholder="******" required>
				</div>
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

			<div class="row">
				<div class="col-md-6">
					<button type="submit" class="btn btn-primary">Registrate
						ahora</button>
				</div>
			</div>

		</form>
	</div>
</body>
</html>