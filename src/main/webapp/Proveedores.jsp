<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Módulo Proveedores </title>
<link rel='stylesheet'  href="CSS/StyleProveedores.css">
</head>
<body>
<header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="Encabezado">
    </header>

    
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a><!-- pendiente de crear el enlace -->
        <a href="#" class="MenuH">Productos</a><!-- pendiente de crear el enlace -->
        <a href="#" class="MenuH">Ventas</a><!-- pendiente de crear el enlace -->
        <a href="#" class="MenuH">Reportes</a><!-- pendiente de crear el enlace -->
    </nav>

    <section>
        <img class="imagen" src="Imagenes/Proveedores.jpeg"alt="Proveedores">
    </section>
   
    <section class="form-login">
        <input class="controls" type="text" name="NIT" value=""placeholder="NIT" >
        <input class="controls" type="text" name="Nombre Completo" value=""placeholder="Nombre completo">
        <input class="controls" type="text" name="Dirección" value=""placeholder="Dirección">
        <input class="controls" type="number" name="Teléfono " value=""placeholder="Teléfono" >
        <input class="controls" type="text" name="Ciudad" value=""placeholder="Ciudad">
        
        <input class="buttons" type="submit" name="" value="Consultar">
        <input class="buttons" type="submit" name="" value="Crear">
        <input class="buttons" type="submit" name="" value="Actualizar">
        <input class="buttons" type="submit" name="" value="Borrar">
    </section>

</body>
</html>