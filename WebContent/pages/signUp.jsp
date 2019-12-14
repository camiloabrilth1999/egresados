<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registrar</title>
<%@include file="../html/meta.html"%>
</head>

<body>

	<%@include file="../html/header.html"%>
	<%@include file="../html/nav.html"%>
	<jsp:useBean id="ppDao" class="dao.ProgramaDao" scope="request"></jsp:useBean>


	<div class="container">
		<div class="card col-11 col-sm-4 mx-auto">
			<h2 class="h4 mb-4">Registrar egresado</h2>

			<form action="../SignUpController" method="post">

				<div class="row">
					<div class="form-group col-md-12">
						<label for="documento">Documento</label> <input type="text"
							class="form-control" name="documento" placeholder="1090537651"
							required>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label for="nombre">Nombre</label><input type="text"
							class="form-control" name="nombre" placeholder="Camilo Obando"
							required>
					</div>
				</div>


				<div class="row">
					<div class="form-group col-md-12">
						<label for="telefono">Telefono</label><input type="text"
							class="form-control" name="telefono" placeholder="3187659876"
							required>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label for="email">Email</label><input type="email"
							class="form-control" name="email"
							placeholder="ejemplo@ejemplo.com" required>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label for="codigo">Codigo</label><input type="text"
							class="form-control" name="codigo" placeholder="1151493" required>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label for="clave">Clave</label><input type="password"
							class="form-control" name="clave" placeholder="******" required>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label for="programa">Programa</label> <select name="programa"><br>
							<c:forEach var="p" items="${ppDao.list()}">
								<option value="${p.codigo}">${p.nombre}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label for="perfil">Perfil</label><input type="text"
							class="form-control" name="perfil" placeholder="Tu perfil..." required>
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

		<%@include file="../html/footer.html"%>
	</div>

</body>
</html>