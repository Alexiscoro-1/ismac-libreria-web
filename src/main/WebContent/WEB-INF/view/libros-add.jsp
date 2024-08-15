<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 
			<form action="add" method="post">
		 
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
		
		Titulo:
		<input type="text" id="titulo" name="titulo" value="${libro.titulo}">
		
		Editorial:
		<input type="text" id="editorial" name="editorial" value="${libro.editorial}">
		
		Numero de paginas:
		<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}">
		
		Edicion:
		<input type="text" id="edicion" name="edicion" value="${libro.edicion}">
		
		Idioma:
		<input type="text" id="idioma" name="idioma" value="${libro.idioma}">
		
		Fecha de publicacion:
		<input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${libro.fechaPublicacion}">
		
		Tipo pasta:
		<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}">
		
		ISBN:
		<input type="text" id="ISBN" name="ISBN" value="${libro.ISBN}">
		
		Numero Ejemplares:
		<input type="number" id="numeroEjemplares" name="numeroEjemplares" value="${libro.numeroEjemplares}">
		
		Portada:
		<input type="text" id="portada" name="portada" value="${libro.portada}">
		
		Presentacion:
		<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}">
		
		Precio:
		<input type="number" id="precio" name="precio" value="${libro.precio}">
		
		Categoria
			 
			 
			<select id="idCategoria" name="idCategoria">
			  <c:forEach var="item" items="${categoria}"> 
			  <option value="${item.idCategoria}"> ${item.categoria } </option>
			  </c:forEach>
			</select>
			
		 	<br/>
			Autor
			<select id="idAutor" name="idAutor">
			  <c:forEach var="item" items="${autores}"> 
			  <option value="${item.idAutor}"> ${item.Nombre ${item.Apellido} </option>
			  </c:forEach>
			</select>

 
 </form>
</body>
</html>