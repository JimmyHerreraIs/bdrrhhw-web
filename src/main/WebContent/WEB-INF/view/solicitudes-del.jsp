<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Desea eliminar el dato</h1>
	<form action="del" method="get">

		<input type="hidden" id="idSolicitud" name="idSolicitud" value="${solicitudes.idSolicitud}"/>
			<strong>¿Desea Eliminar el Dato?</strong>
				<br>
					<button type="submit">Aceptar</button>
 	
 	
	
 	</form>
 
 		<button onclick="window.location.href ='/bdrrhhw-web/solicitudes/findAll';return false;">
 					Cancelar y Regresar
 					</button>
</body>
</html>