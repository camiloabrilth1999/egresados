<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio de Sesion</title>
<%@include file="../html/meta.html"%>
</head>
<body>
	<%@include file="../html/header.html"%>
	<%@include file="../html/nav.html"%>

	<div class="">

		<div class="card col-11 col-sm-4 mx-auto">
			<!-- Default form login -->
			<form class="text-center p-5" method="post"
				action="../LoginController">
				<h2 class="h4 mb-4">Iniciar Sesion</h2>
				<!-- Email -->
				<input type="text" name="id" class="form-control mb-4 col-sm"
					placeholder="id" required />
				<!-- Password -->
				<input type="password" name="clave" class="form-control mb-4"
					placeholder="Clave" required />
				<div class="form-group mb-2">
					<div class="btn-group  mb-3">
						<label class="btn btn-white"> <input type="radio"
							name="tipo_usuario" autocomplete="off" value="EGRESADO" checked>
							EGRESADO
						</label> <label class="btn btn-white"> <input type="radio"
							name="tipo_usuario" autocomplete="off" value="ADMINISTRADOR">
							ADMINISTRADOR
						</label>
					</div>
				</div>
				<c:if test="${fail_login!=null}">

					<label class="text-danger"><c:out value="${fail_login}"></c:out></label>
				</c:if>
				<div class="d-flex justify-content-around">

					<div>
						<!-- Forgot password -->
						<a href="RecoveryPass.jsp">Olvidaste tu contraseña?</a>
					</div>
				</div>

				<div class="d-flex justify-content-around">
					
					<div>
						<!-- Forgot password -->
						<a href="signUp.jsp"> Registrar Egresado</a>
					</div>
					<div>
						<!-- Forgot password -->
						<a href="registrousuario.jsp">Registrar Usuario</a>
					</div>
				</div>
				<!-- Sign in button -->
				<button class="btn btn-info btn-block my-4" type="submit"
					id="btnIngresar">Ingresar</button>
				<!--mensaje de error usuario y contraseña-->
				<a class="text-danger text-semibold" value="" id="labelErrorLogin"></a>
				<!-- Register -->
				<!--   <p>No estas registrado?
                <a href="">Registrate</a>
            </p> -->
			</form>
		</div>


	</div>

	<%@include file="../html/footer.html"%>
</body>
</html>