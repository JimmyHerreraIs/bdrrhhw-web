<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
	Solicitudes
</h1>
	<button onclick="window.location.href='/bdrrhh-web/solicitudes/findOne?&opcion=1'; return false;">
		Agregar
		</button>
<table>
<thead>
<tr>
 	<th>idSolicitudes</th>
 	<th>Fecha Solicitud Peticion</th>
 	<th>Fecha Solicitud Revision</th>
 	<th>Estado Solicitud</th>
 	<th>Pdf Solicitud</th>
 	<th>Descripcion</th>
 	
</tr>
</thead>
<tbody>
	<c:forEach var="item" items="${solicitudes}">
	<tr> 
		<td>${item.idSolicitud}</td>
		<td>${item.fechasolicitudpeticion}</td>
		<td>${item.fechasolicitudrevision}</td>
		<td>${item.estadosolicitud}</td>
		<td>${item.pdfsolicitud}</td>
		<td>${item.descripcion}</td>
		
		<td>
		<button onclick="window.location.href='
		/bdrrhh-web/solicitudes/findOne?idSolicitud=${item.idSolicitud}&opcion=1'; return false;">
		Actualizar
		</button>
		
		<button onclick="window.location.href='
		/bdrrhh-web/solicitudes/findOne?idSolicitud=${item.idSolicitud}&opcion=2'; return false;">
		Eliminar
		</button>
		
		</td>
	</tr>
	</c:forEach>
</tbody>
</table>
</body>
</html>