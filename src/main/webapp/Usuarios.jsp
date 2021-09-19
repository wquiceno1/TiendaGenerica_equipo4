<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modulo Usuarios</title>
</head>
<body>
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

<h1>Modulo Usuarios</h1>
<form action="Usuarios" method="post" id="usuarios">
	<div><label>Cedula:</label><input type="text" name="cedula" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>" <%=estado %> required></div>
	<input type="hidden" name="ced" value="<%if(request.getAttribute("cedula") != null){out.print(cedula);}%>">
	<div><label>Nombre Completo:</label><input type="text" name="nombre" value="<%if(request.getAttribute("cedula") != null){out.print(nombre);}%>" required></div>
	<div><label>Correo Electronico:</label><input type="text" name="correo" value="<%if(request.getAttribute("cedula") != null){out.print(correo);}%>"></div>
	<div><label>Usuario:</label><input type="text" name="usuario" value="<%if(request.getAttribute("cedula") != null){out.print(usuario);}%>" required></div>
	<div><label>Contraseña:</label><input type="password" name="clave" value="<%if(request.getAttribute("cedula") != null){out.print(clave);}%>" required></div>
	<div>		
		<input type="submit" name="insertar" value="Crear">
		<input type="submit" name="actualizar" value="Actualizar">
		<input type="submit" name="borrar" value="Borrar">
		<button type="reset" id="limpiar" hidden=></button>	
	</div>
	
	<div>
	<label>
	<%
		if(request.getAttribute("mensaje") != null){
			out.print(request.getAttribute("mensaje"));	
			
		}		
	%>
	</label>
	</div>
</form>
<br>
<br>
<fieldset>
<legend>Consultar Usuario:</legend>
<form action="Usuarios" method="post">
<div>
<label>Cedula:</label><input type="text" name="act_cedula" >
<input type="submit" name="consultar" value="Consultar">
</div>
</form>
</fieldset>

</body>
</html>