<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Contacto</title>
</head>
<body>
<h3>Lista de Contacto</h3>

	<br/>
	<a href="${pageContext.request.contextPath}/viewRegistroContacto?idUsuario=${idUsuario}">Crear Usuario</a>
	<br/>
	
	<table border="1" style="width: 100%">
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Fecha Nacimiento</th>
				<th>Telefono Principal</th>
				<th>Opcion</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listacontacto}" var="con" varStatus="status">
				<tr>
				<td><c:out value="${con.nombre}"/></td>
				<td><c:out value="${con.fechaNacimiento}"/></td>
				<td><c:out value="${con.telefonoPrincipal}"/></td>
				<td><a href="<c:url value='/EliminarContacto?idContacto=${listacontacto[status.index].ID}&idUusario=${listacontacto[status.index].usuarioID}' />" >Delete</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	"${Mensaje}"
</body>
</html>