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