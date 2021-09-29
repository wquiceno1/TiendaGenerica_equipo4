<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proveedores Tienda Genérica</title>
<link rel='stylesheet'  href="CSS/StyleUsuarios.css">
</head>
<body>

<%!
	int nitproveedor;
	String ciudad_provedor = "", direccion_proveedor = "", nombre_proveedor = "", telefono_proveedor = "", estado = "";
%>

<%
	if(request.getAttribute("nitproveedor") != null){
		
		nitproveedor = Integer.parseInt(String.valueOf(request.getAttribute("nitproveedor")));
		ciudad_provedor = String.valueOf(request.getAttribute("ciudad_provedor"));
		direccion_proveedor = String.valueOf(request.getAttribute("direccion_proveedor"));
		nombre_proveedor = String.valueOf(request.getAttribute("nombre_proveedor"));
		telefono_proveedor = String.valueOf(request.getAttribute("telefono_proveedor"));
		estado = "disabled";
		
	}
%>

	<header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="Encabezado">
    </header>

    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="" class="MenuH">Productos</a>
        <a href="" class="MenuH">Ventas</a>
        <a href="" class="MenuH">Reportes</a>
    </nav>
   
   <form action="Proveedores" method="post" id="proveedores">
   
	    <section class="form-login">
	    
	    	<input class="controls" type="number" name="nitproveedor" value="<% if(request.getAttribute("nitproveedor") != null){out.print(nitproveedor);} %>" <%=estado %> placeholder="#Identificación Tributaria" required>
	    	<input class="controls" type="hidden" name="nit_e" value="<%if(request.getAttribute("nitproveedor") != null){out.print(nitproveedor);}%>">
	    	
	    	<input class="controls" type="text" name="nombre_proveedor" value="<%if(request.getAttribute("nitproveedor") != null){out.print(nombre_proveedor);}%>" placeholder="Nombre de Proveedor" required>
	    	<input class="controls" type="text" name="direccion_proveedor" value="<%if(request.getAttribute("nitproveedor") != null){out.print(direccion_proveedor);}%>" placeholder="Dirección de Proveedor" required>
	    	
	    	<input class="controls" type="number" name="telefono_proveedor" value="<%if(request.getAttribute("nitproveedor") != null){out.print(telefono_proveedor);}%>" placeholder="Teléfono de Proveedor" required>
	    	<input class="controls" type="text" name="ciudad_provedor" value="<%if(request.getAttribute("nitproveedor") != null){out.print(ciudad_provedor);}%>" placeholder="Ciudad de Proveedor" required>
	    	

	        <input class="buttons" type="submit" name="insertar" value="Crear">
	        <input class="buttons" type="submit" name="actualizar" value="Actualizar">
	        <input class="buttons" type="submit" name="borrar" value="Borrar">
	        
	        <%
				if(request.getAttribute("mensaje") != null){
					out.print(request.getAttribute("mensaje"));	
					
				}
			%>
	    
	    </section>



	</form>
	    
	    <fieldset>
	    
			<legend>Consultar Proveedor:</legend>
			
			<form action="Proveedores" method="post">
			
				<div> 
					<label>NIT:</label>
					<input class="Use" type="text" name="act_nitproveedor" required>
					<input class="button" type="submit" name="consultar" value="Consultar">
				
				</div>
			
			</form>
		
		</fieldset>

</body>
</html>