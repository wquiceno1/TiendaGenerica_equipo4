<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ventas Tienda Generica</title>
<link rel='stylesheet'  href="CSS/StyleVentas.css">
</head>
<body>

    <header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="encabezado">
    </header>
    
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a>
        <a href="Ventas.jsp" class="MenuH">Ventas</a>
        <a href="Reportes.jsp" class="MenuH">Reportes</a>
    </nav>
    
    <fieldset class="formulario1">
        <form action="Cliente" method="post">
        
	        <div> 
	            <label>Cédula:</label>
	            <input class="Use" type="text" name="act_cedula" required>
	            <input class="button" type="submit" name="consultar" value="Consultar">
	            <label>Cliente:</label>
	            <input class="Use" type="text" name="act_cliente" disabled>
	            <label>Consec.:</label>
	            <input class="Use" type="text" name="act_consec" disabled>   
	        </div>
	        
        </form>
    </fieldset>
    
    <fieldset>
	    <form class="formulario2">
	    
	        <div>
	            <label class="codProd">Cod. Producto:</label>
	            <input class="UseCod" type="text" name="cod.producto" >
	            <input class="UseCod" type="text" name="cod.producto" >
	            <input class="UseCod" type="text" name="cod.producto" >
	        
	            <input class="NombreS" type="submit" name="" value="Consultar">
	            <input class="buttons" type="submit" name="" value="Consultar">
	            <input class="buttons" type="submit" name="" value="Consultar">
	        </div>
	        
	        <div>
	            <label class="NombreP">Nombre Producto:</label>
	
	            <input class="NProducto" type="text" name="cod.producto" >
	            <input class="NProducto" type="text" name="cod.producto" >
	            <input class="NProducto" type="text" name="cod.producto" >
	        </div>
	        <div>
	            <input class="NomProductos" type="text" name="cod.producto" >
	            <input class="NomProducto" type="text" name="cod.producto" >
	            <input class="NomProducto" type="text" name="cod.producto" >
	        </div>
	        
	        <div>
	            <label class="prodVenta">Valor Total:</label>
	            <input class="UseTotal" type="text" name="cod.producto" >
	            <input class="UseTotal" type="text" name="cod.producto" >
	            <input class="UseTotal" type="text" name="cod.producto" >
	        </div>
	        <div>
	            <input class="buttonss" type="submit" name="" value="Confirmar">
	        </div>
	        <div>
	        
	            <input class="NombreSon" type="text" name="cod.producto" >
	            <input class="UseProducto" type="text" name="cod.producto" >
	            <input class="UseProducto" type="text" name="cod.producto" >
	        </div>
	        
	        <div>
	            <label class="prodf">Total Venta:</label>
	            <label class="prod">Nombre Producto:</label>
	            <label class="prod">Nombre Producto:</label>  
	        </div>
	        
	    </form>
    </fieldset>
      
</body>
</html>