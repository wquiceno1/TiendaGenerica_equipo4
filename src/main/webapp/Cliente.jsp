<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>M�dulo Clientes</title>
<link rel='stylesheet'  href="CSS/StyleClientes.css">
</head>
<body>
<header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="Encabezado">
 </header>
<%!
int cedula;
String nombre = "", correo = "", direccion = "", telefono = "", estado = "";
%>
<%

if(request.getAttribute("cedula") != null){
	cedula = Integer.parseInt(String.valueOf(request.getAttribute("cedula")));
	nombre = String.valueOf(request.getAttribute("nombre"));
	correo = String.valueOf(request.getAttribute("correo"));
	direccion = String.valueOf(request.getAttribute("direccion"));
	telefono = String.valueOf(request.getAttribute("telefono"));
	estado = "disabled";
}


%>
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="#" class="MenuH">Productos</a><!-- pendiente de crear el enlace -->
        <a href="#" class="MenuH">Ventas</a><!-- pendiente de crear el enlace -->
        <a href="#" class="MenuH">Reportes</a><!-- pendiente de crear el enlace -->
    </nav>
    
    <section>
        <img class="imagen" src="Imagenes/Clientes.jpg"alt="Cliente">
    </section>
<form action="Clientes" method="post" id="cliente">
    <section class="form-login">
        <input class="controls" type="number" name="cedula" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>" placeholder="C�dula" <%=estado %> required>
        <input type="hidden" name="ced" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>">
        <input class="controls" type="text" name="nombre" value="<%if(request.getAttribute("cedula") != null){out.print(nombre);}%>"  placeholder="Nombre completo" required>
        <input class="controls" type="text" name="direccion" value="<%if(request.getAttribute("cedula") != null){out.print(direccion);}%>" placeholder="Direcci�n" required>

        <input class="controls" type="text" name="telefono" value="<%if(request.getAttribute("cedula") != null){out.print(telefono);}%>" placeholder="Tel�fono" required>
        <input class="controls" type="email" name="correo" value="<%if(request.getAttribute("cedula") != null){out.print(correo);}%>"placeholder="Correo Electr�nico" required>

        <input class="buttons" type="submit" name="insertar" value="Crear">
        <input class="buttons" type="submit" name="" value="Actualizar">
        <input class="buttons" type="submit" name="" value="Borrar">
    </section>
  </form>
    
    <fieldset>

<legend>Consultar Clientes :</legend>

	<form action="Usuarios" method="post">
	
	<div> 
		<label>C�dula:</label>
		<input class="Use" type="text" name="act_cedula" required>
		<input class="button" type="submit" name="consultar" value="Consultar">
	</div>
	
	</form>
	
</fieldset>
</body>
</html>