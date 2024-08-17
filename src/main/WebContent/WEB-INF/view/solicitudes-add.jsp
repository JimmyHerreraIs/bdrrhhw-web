<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Solicitudes</h1>
<form action="add" method="post">

	<input type="hidden" value="${Solicitudes.idSolicitudes}"/>
	Fecha Solicitud Peticion
	<input type="date" id="fecha_solicitud_peticion" name="fecha_solicitud_peticion" value="${Solicitudes.fecha_solicitud_peticion}"/>
	<br/>
	Fecha Solicitud Revision
	<input type="date" id="fecha_solicitud_revision" name="fecha_solicitud_revision" value="${Solicitudes.fecha_solicitud_revision}"/>
	<br/>
	Estado Solicitud
	<input type="text" id="estado_solicitud" name="estado_solicitud" value="${Solicitudes.estado_solicitud}"/>
	<br/>
	Pdf Solicitud
	<input type="text" id="pdf_solicitud" name="pdf_solicitud" value="${Solicitudes.pdf_solicitud}"/>
	<br/>
	Descripcion
	<input type="text" id="descripcion" name="descripcion" value="${Solicitudes.descripcion}"/>
	<br/>
		<!--  Empleado 
			<select id="idEmpleado" name ="idEmpleado">
				<c:forEach var="item" items="${empleado}"> 
				<option value="${item.idEmpelado}">${item.empleado}</option>
				
			</c:forEach>
				
			</select>-->
	<button type="submit">Guardar</button>
	<button onclick="window.location.href='bdrrhhw-web/Solicitudes/findAll';return false;">
	Cancelar
	</button>
 </form>
</body>
</html>