<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3 align="center">Registro Contacto</h3>
<br/>
<div align="center">
		<frm:form method="POST" action="RegistroContacto?idUsuario=${idUsuario}">
			<table border="1">
				<tr>
					<td><frm:label path="Nombre" name="">Nombre</frm:label></td>
					<td><frm:input path="Nombre"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="Apellido" name="">Apellido</frm:label></td>
					<td><frm:input path="Apellido"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="FechaNacimiento" name="">Fecha Nacimiento</frm:label></td>
					<td><frm:input path="FechaNacimiento" ></frm:input></td>
				</tr>
				
				<tr>
					<td><frm:label path="Genero" name="">Genero</frm:label></td>
					<td><frm:input path="Genero"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="TelefonoPrincipal" name="">Telefono Principal</frm:label></td>
					<td><frm:input path="TelefonoPrincipal"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="TelefonoAuxiliar" name="">Telefono Auxiliar</frm:label></td>
					<td><frm:input path="TelefonoAuxiliar"></frm:input></td>
				</tr>
				
				<tr>
					<td><frm:label path="Direccion" name="">Direccion</frm:label></td>
					<td><frm:input path="Direccion"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="Email" name="">Email</frm:label></td>
					<td><frm:input path="Email"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="DNI" name="">DNI</frm:label></td>
					<td><frm:input path="DNI"></frm:input></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Registrar" name="btnIngresar"  >
					</td>					
				</tr>
			</table>
			"${Mensaje}"
		</frm:form>
	</div>
	<div align="center">
		<a href="${pageContext.request.contextPath}/ListaContacto?idUssuario=${idUsuario}">
		Regresar a Listado
	</a>
	</div>
	
</body>
</html>