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
    
<%!
int cedula;
String nombre = "", correo = "", usuario = "", clave = "", estado = "";
%>
<%

if(request.getAttribute("cedula") != null){
	cedula = Integer.parseInt(String.valueOf(request.getAttribute("cedula")));
	nombre = String.valueOf(request.getAttribute("nombre"));
	correo = String.valueOf(request.getAttribute("correo"));
	usuario = String.valueOf(request.getAttribute("usuario"));
	clave = String.valueOf(request.getAttribute("clave"));
	estado = "disabled";
}


%>
    <nav>
        <a href="" class="MenuH">Usuarios</a>
        <a href="" class="MenuH">Clientes</a>
        <a href="" class="MenuH">Proveedores</a>
        <a href="" class="MenuH">Productos</a>
        <a href="" class="MenuH">Ventas</a>
        <a href="" class="MenuH">Reportes</a>
    </nav>
<form action="Usuarios" method="post" id="usuarios">
    <section class="form-login">
        <input class="controls" type="number" name="cedula" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>" placeholder="Cédula" <%=estado %> >
        <input type="hidden" name="ced" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>">
        <input class="controls" type="text" name="nombre" value="<%if(request.getAttribute("cedula") != null){out.print(nombre);}%>"  placeholder="Nombre completo">
        <input class="controls" type="email" name="correo" value="<%if(request.getAttribute("cedula") != null){out.print(correo);}%>" placeholder="Correo Electrónico">
    </section>

    <section class="form-dato">
        <input class="controlsF" type="text" name="usuario" value="<%if(request.getAttribute("cedula") != null){out.print(usuario);}%>" placeholder="Usuario" >
        <input class="controlsF" type="password" name="clave" value="<%if(request.getAttribute("cedula") != null){out.print(clave);}%>"placeholder="Contraseña" >
    </section>

    <section >
        
        <input class="buttons" type="submit" name="insertar" value="Crear">
        <input class="buttons" type="submit" name="actualizar" value="Actualizar">
        <input class="buttons" type="submit" name="borrar" value="Borrar">
        <%
		if(request.getAttribute("mensaje") != null){
			out.print(request.getAttribute("mensaje"));	
			
		}		
		%>
    </section>
    <fieldset>
<legend>Consultar Usuario:</legend>
<form action="Usuarios" method="post">
<div> <label>Cédula:</label><input class="Use" type="text" name="act_cedula" >
<input class="button" type="submit" name="consultar" value="Consultar">
</div>
</form>
</fieldset>
</form>
</body>
</html>