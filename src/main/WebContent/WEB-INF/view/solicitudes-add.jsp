<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Añadir un requerimiento</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilosadd.css"/>

</head>
<body>
	<section class="py-5 px-5">
		<div class="container">
<h1>Solicitudes</h1>
<form action="add" method="post" class="needs-validation" novalidate>
	
	<input type="hidden" id="idSolicitud" name="idSolicitud" value="${solicitudes.idSolicitud}"required/>
	
	
	<div class="form-group">
		<label for="fechasolicitudpeticion" class="form-label">Fecha Solicitud Petición</label>
			<input class="form-control"type="date" id="fechasolicitudpeticion" name="fechasolicitudpeticion" value="${fn:substring(solicitud.fechasolicitudpeticion,0,10)}" required/>
	<br/>
	</div>
	<div class="form-group">
	
	<label for="fechasolicitudpeticion" class="form-label">Fecha Solicitud Revision</label>
	<input type="date" class="form-control" id="fechasolicitudrevision" name="fechasolicitudrevision" value="${fn:substring(solicitud.fechasolicitudrevision,0,10)}"required/>
	<br/>
	
	
	</div>
	<div class="form-group">
	<label for="estadosolicitud" class="form-label">Estado Solicitud</label>
		<input type="text" class="form-control" id="estadosolicitud" name="estadosolicitud" value="${solicitud.estadosolicitud}"required/>
	<br/>
	</div>
	<div class="form-group">
	
	<label for="pdfsolicitud" class="form-label">Pdf Solicitud</label>
	<input type="text" class="form-control" id="pdfsolicitud" name="pdfsolicitud" value="${solicitud.pdfsolicitud}"required/>
	<br/>
	</div>
	<div class="form-group">
	<label for="descripcion" class="form-label">Descripcion</label>
		<input type="text" id="descripcion" class="form-control" name="descripcion" value="${solicitud.descripcion}"required/>
	<br/>
	</div>
		<!--  Empleado 
			<select id="idEmpleado" name ="idEmpleado">
				<c:forEach var="item" items="${empleado}"> 
				<option value="${item.idEmpelado}">${item.empleado}</option>
				
			</c:forEach>
				
			</select>-->
	<button class="btn btn-primary" type="submit">Guardar</button>
	<button class="btn btn-danger"onclick="window.location.href='findAll';return false;">
	Cancelar
	</button>
 </form>
 </div>
 </section>
 
 <footer></footer>
 		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'
 
	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')
 
	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }
 
	      form.classList.add('was-validated')
	    }, false)
	  })
	})()

</script>
</body>
</html>