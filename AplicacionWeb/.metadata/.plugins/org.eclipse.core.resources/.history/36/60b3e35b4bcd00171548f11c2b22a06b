<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1 align="center">
	SOWAD T1 - LOGIN
</h1>

<br/>
	<div align="center">
		<frm:form method="POST" action="VerificarAcceso">
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
					<td colspan="2" align="center">
						<input type="submit" value="Ingresar" name="btnIngresar"  >
					</td>					
				</tr>
			</table>
			"${error}"
		</frm:form>
	</div>
	<br/>
	<div align="center">
		<a href="${pageContext.request.contextPath}/viewRegistroUsuario">
		Registrar Usuario
	</a>
	</div>
</body>
</html>
