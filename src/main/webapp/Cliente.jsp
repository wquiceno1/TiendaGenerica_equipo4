<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clientes Tienda Gen�rica</title>
<link rel='stylesheet'  href="CSS/StyleClientes.css">
</head>
<body>
<header>

        <img src="Imagenes/EncabezadoPagina.jpg" alt="Encabezado">
 </header>

    <nav>
        <a href="" class="MenuH">Usuarios</a>
        <a href="" class="MenuH">Clientes</a>
        <a href="" class="MenuH">Proveedores</a>
        <a href="" class="MenuH">Productos</a>
        <a href="" class="MenuH">Ventas</a>
        <a href="" class="MenuH">Reportes</a>
    </nav>
    
    <section>
        <img class="imagen" src="Imagenes/Clientes.jpg"alt="Cliente">
    </section>

    <section class="form-login">
        <input class="controls" type="number" name="C�dula" value=""placeholder="C�dula" >
        <input class="controls" type="text" name="Nombre Completo" value=""placeholder="Nombre completo">
        <input class="controls" type="text" name="Direcci�n" value=""placeholder="Direcci�n">
    </section>

    <section class="form-dato">
        <input class="controlsF" type="number" name="Tel�fono" value=""placeholder="Tel�fono" >
        <input class="controlsF" type="email" name="Correo Electr�nico" value=""placeholder="Correo Electr�nico">
    </section>

    <section >
        <input class="buttons" type="submit" name="" value="Consultar">
        <input class="buttons" type="submit" name="" value="Crear">
        <input class="buttons" type="submit" name="" value="Actualizar">
        <input class="buttons" type="submit" name="" value="Borrar">
    </section>
</body>
</html>