<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet'  href="CSS/StyleUsuarios.css">
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

    <section class="form-login">
        <input class="controls" type="number" name="Cedula" value=""placeholder="C�dula" >
        <input class="controls" type="text" name="Nombre Completo" value=""placeholder="Nombre completo">
        <input class="controls" type="email" name="Correo Electr�nico" value=""placeholder="Correo Electr�nico">
    </section>

    <section class="form-dato">
        <input class="controlsF" type="text" name="Usuario" value=""placeholder="Usuario" >
        <input class="controlsF" type="password" name="Contrasena" value=""placeholder="Contrase�a">
    </section>

    <section >
        <input class="buttons" type="submit" name="" value="Consultar">
        <input class="buttons" type="submit" name="" value="Crear">
        <input class="buttons" type="submit" name="" value="Actualizar">
        <input class="buttons" type="submit" name="" value="Borrar">
    </section>
</body>
</html>