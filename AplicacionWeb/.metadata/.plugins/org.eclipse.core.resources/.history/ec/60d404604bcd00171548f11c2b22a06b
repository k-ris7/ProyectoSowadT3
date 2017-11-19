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
<h3 align="center">Registro Usuario</h3>
<br/>
<div align="center">
		<frm:form method="POST" action="RegistroUsuario">
			<table border="1">
				<tr>
					<td><frm:label path="Usuario" name="">Usuario</frm:label></td>
					<td><frm:input path="Usuario"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="Password" name="">Password</frm:label></td>
					<td><frm:input path="Password"></frm:input></td>
				</tr>
				<tr>
					<td><frm:label path="Nombre" name="">Nombre</frm:label></td>
					<td><frm:input path="Nombre"></frm:input></td>
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
		<a href="${pageContext.request.contextPath}/">
		Regresar a Login
	</a>
	</div>
</body>
</html>