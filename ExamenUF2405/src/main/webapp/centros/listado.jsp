<%@ page import="modelo.Centro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<jsp:include page="/plantillas/cabecera.jsp"></jsp:include>

<a href="?opcion=nuevo"  class="boton">Insertar Centro</a>

<h1>listado de Centros</h1>
<% List<Centro> lista = (List<Centro>) request.getAttribute("listaCentros"); 
   if (lista==null) {
%>
<h2>No hay datos de Centros registrados</h2>
<% } else {%>
<table class="estilo-tabla">
	<tr>
		<th>C�digo Centro</th>
		<th>Nombre</th>
		<th>Direcci�n</th>
		<th>Editar</th>
		<th>Eliminar</th>
	</tr>
	<% 
		for (Centro centro:lista) {
			%>
			<tr>
				<td><%=centro.getCod_centro() %></td>
				<td><%=centro.getNombre() %></td>
				<td><%=centro.getDireccion() %></td>
				<td><a href="centros?opcion=editar&codCentro=<%=centro.getCod_centro()%>">Editar</a></td>
				<td><a href="centros?opcion=eliminar&codCentro=<%=centro.getCod_centro()%>">X</a></td>
			</tr>
			<%
		}
}
	%>
	
</table>


<jsp:include page="/plantillas/pie.jsp"></jsp:include>