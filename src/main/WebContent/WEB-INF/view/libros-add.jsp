<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset=""UTF-8"">
<title>Insert title here</title>
</head>
<body>
 
 
		<form action="add" method="post">
		
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
		 <br/>
		Titulo:
		<input type="text" id="titulo" name="titulo" value="${libro.titulo}">
		 <br/>
		Editorial:
		<input type="text" id="editorial" name="editorial" value="${libro.editorial}">
		 <br/>
		Numero de paginas:
		<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}">
		 <br/>
		Edicion:
		<input type="text" id="edicion" name="edicion" value="${libro.edicion}">
		 <br/>
		Idioma:
		<input type="text" id="idioma" name="idioma" value="${libro.idioma}">
		 <br/>
		Fecha de publicacion:
		<input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}">
		 <br/>
		Tipo pasta:
		<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}">
		 <br/>
		ISBN:
		<input type="text" id="ISBN" name="ISBN" value="${libro.ISBN}">
		 <br/>
		Numero Ejemplares:
		<input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}">
		 <br/>
		Portada:
		<input type="text" id="portada" name="portada" value="${libro.portada}">
		 <br/>
		Presentacion:
		<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}">
		 <br/>
		Precio:
		<input type="number" id="precio" name="precio" value="${libro.precio}">
		 <br/>
		Categoria		 
			<select id="id_categoria" name="id_categoria">
        <c:forEach var="item" items="${categorias}">
            <option value="${item.idcategoria}" ${item.idcategoria == libro.categoria.idCategoria ? 'selected' : ''}>${item.categoria}</option>
        </c:forEach>
		</select>
		 	<br/>
		Autor
			<select id="id_autor" name="id_autor">
	    <c:forEach var="item" items="${autores}">
	        <option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor ? 'selected' : ''}>${item.nombre} ${item.apellido}</option>
	    </c:forEach>
		</select>

 			<br/>
    
        <button type="submit">Guardar</button>
        <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/libro/findAll'; return false;">Cancelar</button>




 </form>
</body>
</html>