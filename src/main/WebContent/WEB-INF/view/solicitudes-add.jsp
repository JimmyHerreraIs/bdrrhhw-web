<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Solicitudes</h1>
<form action="add" method="post">

	<input type="hidden" name="idSolicitud" value="${solicitudes.idSolicitud}"/>
	Fecha Solicitud Peticion
	<input type="date" id="fechasolicitudpeticion" name="fecha_solicitud_peticion" value="${solicitud.fechasolicitudpeticion}"/>
	<br/>
	Fecha Solicitud Revision
	<input type="date" id="fechasolicitudrevision" name="fecha_solicitud_revision" value="${solicitud.fechasolicitudrevision}"/>
	<br/>
	Estado Solicitud
	<input type="text" id="estadosolicitud" name="estadosolicitud" value="${solicitud.estadosolicitud}"/>
	<br/>
	Pdf Solicitud
	<input type="text" id="pdfsolicitud" name="pdfsolicitud" value="${solicitud.pdfsolicitud}"/>
	<br/>
	Descripcion
	<input type="text" id="descripcion" name="descripcion" value="${solicitud.descripcion}"/>
	<br/>
		<!--  Empleado 
			<select id="idEmpleado" name ="idEmpleado">
				<c:forEach var="item" items="${empleado}"> 
				<option value="${item.idEmpelado}">${item.empleado}</option>
				
			</c:forEach>
				
			</select>-->
	<button type="submit">Guardar</button>
	<button onclick="window.location.href='findAll';return false;">
	Cancelar
	</button>
 </form>
</body>
</html>