<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="/plantillas/cabecera.jsp"></jsp:include>



<!--  incio del cuerpo de la p�gina -->
<h1>Nuevo Centro</h1>
<form action="centros" method="post">
<input type="hidden" name="opcion" value="insertar" />
	<div>
		<label for="codCentro">C�digo Centro: </label>
		<input type="text" name="codCentro" id="codCentro" />
	</div>
	<div>
		<label for="nombre">T�tulo: </label>
		<input type="text" name="nombre" id="nombre" />
	</div>
	<div>
		<label for="direccion">Direcci�n: </label>
		<input type="text" name="direccion" id="direccion" />
	</div>
	<input type="submit" value="enviar">
</form>




<jsp:include page="/plantillas/pie.jsp"></jsp:include>