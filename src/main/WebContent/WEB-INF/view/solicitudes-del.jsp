<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilosdel.css"/>

</head>
<body>
<section class="py-80 px-80">
<div class="container">
<h1>Desea eliminar el dato</h1>
	<form action="del" method="get">

			<input type="hidden" id="idSolicitud" name="idSolicitud" value="${solicitudes.idSolicitud}"/>
				<strong>¿Desea Eliminar el Dato?</strong>
					<br>
						<button class="btn btn-danger" type="submit">Aceptar</button>
				 		<button class="btn btn-info" onclick="window.location.href ='/bdrrhhw-web/solicitudes/findAll';return false;">
				 					Cancelar y Regresar
				 					</button>
				 								 					
 	</form>
 	<img alt="imagen de eliminar" width="500px" src="${pageContext.request.contextPath}/resources/img/elimar.jpg">
 				<footer>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.table-es-MX.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
 				</footer>
 			</div>
 		</section>
</body>
</html>