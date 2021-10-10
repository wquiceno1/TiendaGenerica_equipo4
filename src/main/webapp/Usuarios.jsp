<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuarios Tienda G�nerica</title>
<link rel='stylesheet'  href="CSS/StyleUsuarios.css">
<script type="text/javascript" src="./botones.js"></script>
</head>
<body>
 <header>
        <img src="Imagenes/tiendita.png" alt="Encabezado">
    </header>
    
<%!
int cedula;
String nombre = "", correo = "", usuario = "", clave = "", estado = "", estadob = "disabled";
%>
<%

if(request.getAttribute("cedula") != null){
	cedula = Integer.parseInt(String.valueOf(request.getAttribute("cedula")));
	nombre = String.valueOf(request.getAttribute("nombre"));
	correo = String.valueOf(request.getAttribute("correo"));
	usuario = String.valueOf(request.getAttribute("usuario"));
	clave = String.valueOf(request.getAttribute("clave"));	
	estado = String.valueOf(request.getAttribute("estado"));
	estadob = String.valueOf(request.getAttribute("estadob"));
	
} else {
	
}


%>
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a>
        <a href="Ventas.jsp" class="MenuH">Ventas</a>
        <a href="Reportes.jsp" class="MenuH">Reportes</a>
    </nav>
   <form action="Usuarios" method="post" id="usuarios" name="formulario" onformchange="mostrar()">
    <section class="form-login">
        <input class="controls" type="number" name="cedula" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>" placeholder="C�dula" <%if(request.getAttribute("cedula") != null){out.print(estado);}%>  required>
        <input type="hidden" name="ced" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>">
        <input class="controls" type="text" name="nombre" value="<%if(request.getAttribute("cedula") != null){out.print(nombre);}%>"  placeholder="Nombre completo" required>
        <input class="controls" type="email" name="correo" value="<%if(request.getAttribute("cedula") != null){out.print(correo);}%>" placeholder="Correo Electr�nico" required>

        <input class="controls" type="text" name="usuario" value="<%if(request.getAttribute("cedula") != null){out.print(usuario);}%>" placeholder="Usuario" required>
        <input class="controls" type="password" name="clave" value="<%if(request.getAttribute("cedula") != null){out.print(clave);}%>"placeholder="Contrase�a" required>

        
        <input class="buttons" type="submit" name="insertar" value="Crear" <%if(request.getAttribute("cedula") != null){out.print(estado);}%>>
        <input class="buttons" type="submit" name="actualizar" value="Actualizar">
        <input class="buttons" type="submit" name="borrar" id="borrar" value="Borrar" >
        
        <%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
		%>
		
    </section>
</form>

<fieldset>

<legend>Consultar Usuario:</legend>

	<form action="Usuarios" method="post" name="consul" >
	
	<div> 
		<label>C�dula:</label>
		<input class="Use" type="text" name="act_cedula" required onclick="ocultar()">
		<input class="button" type="submit" name="consultar" value="Consultar" id="consultar" >
	</div>
	
	</form>
	
</fieldset>

</body>
</html>