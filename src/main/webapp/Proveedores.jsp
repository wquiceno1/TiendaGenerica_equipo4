<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proveedores Tienda Genérica</title>
<link rel='stylesheet'  href="CSS/StyleProveedores.css">
</head>
<body>
<header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="Encabezado">
    </header>

    <nav>
    <nav>
        <a href="" class="MenuH">Usuarios</a>
        <a href="" class="MenuH">Clientes</a>
        <a href="" class="MenuH">Proveedores</a>
        <a href="" class="MenuH">Productos</a>
        <a href="" class="MenuH">Ventas</a>
        <a href="" class="MenuH">Reportes</a>
    </nav>

    <section>
        <img class="imagen" src="Imagenes/Proveedores.jpeg"alt="Proveedores">
    </section>
   
    <section class="form-login">
        <input class="controls" type="text" name="NIT" value=""placeholder="NIT" >
        <input class="controls" type="text" name="Nombre Completo" value=""placeholder="Nombre completo">
        <input class="controls" type="text" name="Dirección" value=""placeholder="Dirección">
    </section>

    <section class="form-dato">
        <input class="controlsF" type="number" name="Teléfono " value=""placeholder="Teléfono" >
        <input class="controlsF" type="text" name="Ciudad" value=""placeholder="Ciudad">
    </section>

    <section >
        <input class="buttons" type="submit" name="" value="Consultar">
        <input class="buttons" type="submit" name="" value="Crear">
        <input class="buttons" type="submit" name="" value="Actualizar">
        <input class="buttons" type="submit" name="" value="Borrar">
    </section>

</body>
</html>