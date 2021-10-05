<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Producto Tienda Génerica</title>
<link rel='stylesheet'  href="CSS/StyleProductos.css">
</head>
<body>
<header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="encabezado">
    </header>

    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a>
        <a href="Ventas.jsp" class="MenuH">Ventas</a>
        <a href="Reportes.jsp" class="MenuH">Reportes</a>
    </nav>
    
    <fieldset>

        <form action="Productos" method="post" enctype="multipart/form-data">
        <div> 
            <label>Archivo:</label>
            <input type="file" value="Examinar" name="archivo" >
            <input class="buttons" type="submit" name="cargar" value="Cargar Archivo">
        </div>
        </form>
    </fieldset>
<%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>


</body>
</html>