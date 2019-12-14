<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Egresados</title>
<%@include file="../html/meta.html"%>
</head>
<body>
	<%@include file="../html/header.html"%>
	<%@include file="../html/nav.html"%>


	<jsp:useBean id="eDAO" class="dao.EgresadoDao"></jsp:useBean>
	<table class="table mb-5 table-hover">
		<thead class='bg-light'>
			<tr class="table-info">
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Id Egresado</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Documento</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Nombre</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Telefono</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Email</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Programa</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Codigo</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Perfil</th>
				<th scope='col' class='border-0 text-primary text-center text-uppercase'>Clave</th>

			</tr>

		</thead>
		<tbody>
			<c:forEach var="e" items="${eDAO.list()}">
				<tr>
					<td class="text-center font-weight-light"><c:out value="${e.id}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.documento}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.nombre}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.telefono}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.email}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.programa}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.codigo}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.perfil}"/></td>
					<td class="text-center font-weight-light"><c:out value="${e.clave}"/></td>
				</tr>
				</c:forEach>
		</tbody>
	</table>



	<%@include file="../html/footer.html"%>
</body>
</html>