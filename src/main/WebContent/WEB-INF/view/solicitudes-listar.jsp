<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Formulario de solicitudes</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estiloslistar.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav>
<section class="px-5, py-5">
<h1 style="text-align: center">Solicitudes</h1>
	<div class="container" style="text-align: center;">
	<button class="btn btn-primary" onclick="window.location.href='/bdrrhhw-web/solicitudes/findOne?&opcion=1'; return false;">
		<i class="fa-solid fa-circle-plus"></i>
		</button>
		 
<div class="table-responsive">
		<table id="tabla1"
                   name="tabla1"
                   data-height="600"
                   data-search="true"
                   data-pagination="true"
                   data-toggle="tabla1"
                   data-toolbar=".toolbar"
                   class="table table-striped table-sm">
			<thead>
				<tr>
					<th data-field="Id Solicitud" data-sortable="true">idSolicitud</th>
				 	<th data-field="Fecha Solicitud Petición" data-sortable="true">Fecha Solicitud Peticion</th>
				 	<th data-field="Fecha Solicitud Revisión" data-sortable="true">Fecha Solicitud Revision</th>
				 	<th data-field="Estado Solicitud" data-sortable="true">Estado Solicitud</th>
				 	<th data-field="Pdf Solicitud" data-sortable="true">Pdf Solicitud</th>
				 	<th data-field="Descripción" data-sortable="true">Descripción</th>
				 	
				 </tr>
			</thead>
<tbody>
	<c:forEach var="item" items="${solicitudes}">
		<tr> 
			<td>${item.idSolicitud}</td>
			<td>${fn:substring(item.fechasolicitudpeticion,0,10)}</td>
			<td>${fn:substring(item.fechasolicitudrevision,0,10)}</td>
			<td>${item.estadosolicitud}</td>
			<td>${item.pdfsolicitud}</td>
			<td>${item.descripcion}</td>
		
		<td>
		<button class="btn btn-success" onclick="window.location.href='/bdrrhhw-web/solicitudes/findOne?idSolicitud=${item.idSolicitud}&opcion=1'; return false;">
			 <i class="fa-solid fa-arrows-rotate"></i>
		</button>
		
		<button class="btn btn-danger" onclick="window.location.href ='/bdrrhhw-web/solicitudes/findOne?idSolicitud=${item.idSolicitud}&opcion=2';return false;">
							<i class="fa-solid fa-trash-can"></i>
								</button>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
</section>
	<footer class="py-5 bg-light">
    <div class="container">
        <p class="m-0 text-center">Copyright &copy; Plataforma de Emprendimientos Biz Bloom S.A. - 2024 - Todos los derechos reservados.</p>
    </div>
</footer>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script>
    var $tabla1 = $('#tabla1');
    $(function(){
        $tabla1.bootstrapTable({
            sortReset: true
        });
    });
</script>
	
	</nav>


</body>
</html>