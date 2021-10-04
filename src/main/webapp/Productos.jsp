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

        <form action="Productos" method="post">
        <div> 
            <label>Nombre del producto:</label>
            <input class="Use" type="text" name="producto" required>
            <input class="button" type="submit" name="Examinar" value="Examinar">
        </div>
        </form>
    </fieldset>

    <form action="Producto">
    <section class="form-login">
        <input class="buttons" type="submit" name="" value="Cargar">
    </section>
    </form>

</body>
</html>