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

	<h1>Clientes</h1>
	
			<button onclick="window.location.href)'/ismac-libreria-web/clientes/findOne?opcion=';returnfalse;">
		Agregar 
		</button>
	
	<table>
			<thead>
				<tr> 
			
					<th>idCliente </th>
					<th>Cedula </th>
					<th>Nombre </th>
					<th>Apellido </th>
					<th>Direccion </th>
					<th>Telefono </th>
					<th>Correo </th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${clientes}"> 
				<tr>
						<td> ${item.idCliente}</td>
						<td> ${item.cedula}</td>
						<td> ${item.nombre}</td>
						<td> ${item.apellido}</td>
						<td> ${item.direccion}</td>
						<td> ${item.telefono}</td>
						<td> ${item.correo}</td>
						
						<td>
                        <!-- Botón para Actualizar -->
                        <form action="${pageContext.request.contextPath}/clientes/findOne" method="get" style="display:inline;">
                            <input type="hidden" name="idCliente" value="${item.idCliente}" />
                            <input type="hidden" name="opcion" value="1" />
                            <button type="submit">Actualizar</button>
                        </form>

                        <!-- Botón para Eliminar -->
                        <form action="${pageContext.request.contextPath}/clientes/del" method="get" style="display:inline;">
                            <input type="hidden" name="idCliente" value="${item.idCliente}" />
                            <button type="submit">Eliminar</button>
                        </form>
                    </td>
				</tr>
			</c:forEach>
			</tbody>
	</table>
			
			
</body>
</html>