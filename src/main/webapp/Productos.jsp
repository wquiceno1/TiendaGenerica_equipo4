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
        <a href="" class="MenuH">Usuarios</a>
        <a href="" class="MenuH">Clientes</a>
        <a href="" class="MenuH">Proveedores</a>
        <a href="" class="MenuH">Productos</a>
        <a href="" class="MenuH">Ventas</a>
        <a href="" class="MenuH">Reportes</a>
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



</body>
</html>