<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Módulo Clientes</title>
<link rel='stylesheet'  href="CSS/StyleUsuarios.css">
</head>
<body>
<header>
        <img src="Imagenes/tiendita.png" alt="Encabezado">
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
	estado = String.valueOf(request.getAttribute("estado"));
}


%>
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a><!-- pendiente de crear el enlace -->
        <a href="Ventas.jsp" class="MenuH">Ventas</a><!-- pendiente de crear el enlace -->
        <a href="Reportes.jsp" class="MenuH">Reportes</a><!-- pendiente de crear el enlace -->
    </nav>
    
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/wquiceno1/TiendaGenerica_equipo4.git
<form action="Clientes" method="post" id="cliente">
    <section class="form-login">
        <input class="controls" type="number" name="cedula" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>" placeholder="Cédula" <%if(request.getAttribute("cedula") != null){out.print(estado);}%> required>
        <input type="hidden" name="ced" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>">
        <input class="controls" type="text" name="nombre" value="<%if(request.getAttribute("cedula") != null){out.print(nombre);}%>"  placeholder="Nombre completo" required>
        <input class="controls" type="text" name="direccion" value="<%if(request.getAttribute("cedula") != null){out.print(direccion);}%>" placeholder="Dirección" required>

        <input class="controls" type="text" name="telefono" value="<%if(request.getAttribute("cedula") != null){out.print(telefono);}%>" placeholder="Teléfono" required>
        <input class="controls" type="email" name="correo" value="<%if(request.getAttribute("cedula") != null){out.print(correo);}%>"placeholder="Correo Electrónico" required>

        <input class="buttons" type="submit" name="insertar" value="Crear" <%if(request.getAttribute("cedula") != null){out.print(estado);}%> >
        <input class="buttons" type="submit" name="actualizar" value="Actualizar">
        <input class="buttons" type="submit" name="borrar" value="Borrar">
        <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>
    </section>
</form>
    
    <fieldset>

<legend>Consultar Clientes :</legend>

	<form action="Clientes" method="post">
	
	<div> 
		<label>Cédula:</label>
		<input class="Use" type="text" name="act_cedula" required>
		<input class="button" type="submit" name="consultar" value="Consultar">
	</div>
	
	</form>
	
</fieldset>
</body>
</html>