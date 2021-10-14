<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Modulo Ventas </title>
	<link rel='stylesheet'  href="CSS/StyVentas.css">
</head>
<body>
<%!String 	cedulaCliente="", nombreCliente="", codigo1="", codigo2="", codigo3="",
				nombrePd1="", nombrePd2="", nombrePd3="",
				codigoV="",
				estado="";
		int 	cant1, cant2, cant3,
				precioPd1, precioPd2, precioPd3,
				ivaPd1, ivaPd2, ivaPd3, totalIva,
		    	valorT1, valorT2, valorT3, totalVenta, totalPagar;
	%>

	<%
	if(request.getParameter("cedulaCliente")!=null){
		cedulaCliente = request.getParameter("cedulaCliente");
		nombreCliente = request.getParameter("nombreCliente");
		estado= "disabled";
	}
	%>
	
	<%
	if(request.getParameter("codigo1")!=null){
		codigo1 = request.getParameter("codigo1");
		nombrePd1 = request.getParameter("nombrePd1");
		precioPd1 = Integer.parseInt(request.getParameter("precioPd1"));
		ivaPd1 = Integer.parseInt(request.getParameter("ivaPd1"));
	}
	%>
	
	<%
	if(request.getParameter("codigo2")!=null){
		codigo2 = request.getParameter("codigo2");
		nombrePd2 = request.getParameter("nombrePd2");
		precioPd2 = Integer.parseInt(request.getParameter("precioPd2"));
		ivaPd2 = Integer.parseInt(request.getParameter("ivaPd2"));
	}
	%>
	
	<%
	if(request.getParameter("codigo3")!=null){
		codigo3 = request.getParameter("codigo3");
		nombrePd3 = request.getParameter("nombrePd3");
		precioPd3 = Integer.parseInt(request.getParameter("precioPd3"));
		ivaPd3 = Integer.parseInt(request.getParameter("ivaPd3"));		
	}
	%>
	
	<%
	if(request.getParameter("totalVenta")!=null){
		cant1 = Integer.parseInt(request.getParameter("cant1"));
		valorT1 = Integer.parseInt(request.getParameter("valorT1"));
		cant2 = Integer.parseInt(request.getParameter("cant2"));
		valorT2 = Integer.parseInt(request.getParameter("valorT2"));
		cant3 = Integer.parseInt(request.getParameter("cant3"));
		valorT3 = Integer.parseInt(request.getParameter("valorT3"));
		totalVenta = Integer.parseInt(request.getParameter("totalVenta"));
		totalIva = Integer.parseInt(request.getParameter("totalIva"));
		totalPagar = Integer.parseInt(request.getParameter("totalPagar"));
		codigoV = request.getParameter("codigoV");
	}
	%>
	
	<%
	if(request.getParameter("mensaje")!=null){
		String mensaje = request.getParameter("mensaje");
		out.print("<script>alert('"+mensaje+"');</script>");
	}
	if(request.getParameter("men")!=null){
		cedulaCliente=""; 
		nombreCliente=""; 
		codigo1=""; 
		codigo2=""; 
		codigo3="";
		nombrePd1=""; 
		nombrePd2=""; 
		nombrePd3="";
		codigoV="";
		estado="";
		
		cant1=0; 
		cant2=0; 
		cant3=0;			
		precioPd1=0; 
		precioPd2=0;
		precioPd3=0;
		ivaPd1=0;
		ivaPd2=0;
		ivaPd3=0;
		totalIva=0;
		valorT1=0;
		valorT2=0;
		valorT3=0;
		totalVenta=0; 
		totalPagar=0;
	}
	
	%>

<header>
        <img src="Imagenes/tiendita.png" alt="">
</header>
	<nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a>
        <a href="Ventas.jsp" class="MenuH">Ventas</a>
        <a href="Reportes.jsp" class="MenuH">Reportes</a>
    </nav>>

    <fieldset> 
      <form class="formulario2" action="Ventas" method="post">       
        <div> 
            <label>Cédula:</label>
            <input class="Use" type="text" name="cedulaCliente" value="<%=cedulaCliente%>" <%=estado%> required>
            <input type="hidden" name="cCliente" value="<%=cedulaCliente%>">
            <input class="button" type="submit" name="consultarCliente" value="Consultar">
            <label>Cliente:</label>
            <input class="Use" type="text" name="nombreCliente" value="<%=nombreCliente%>" <%=estado%>>
            <label>Consecutivo:</label>
            <input class="Use" type="text" name="consecutivoVenta" value="<%=codigoV%>">   
        </div>        

        <div class="w">
            <label class="codProd">Código Producto:</label>
            <input class="UseCod" type="text" name="codigo1" value="<%=codigo1%>" placeholder="Codigo del Producto 1">
            <input class="UseCod" type="text" name="codigo2" value="<%=codigo2%>" placeholder="Codigo del Producto 2">
            <input class="UseCod" type="text" name="codigo3" value="<%=codigo3%>" placeholder="Codigo del Producto 3">
        </div>
        <div>
            <input class="NombreS" type="submit" name="consultarPd1" value="Consultar">
            <input class="buttons" type="submit" name="consultarPd2" value="Consultar">
            <input class="buttons" type="submit" name="consultarPd3" value="Consultar">
        </div>
        <div>
            <label class="NombreP">Nombre Producto:</label>

            <input class="NProducto" type="text" name="nombrePd1" value="<%=nombrePd1%>" placeholder="Nombre del Producto 1">
            <input class="NProducto" type="text" name="nombrePd2" value="<%=nombrePd2%>" placeholder="Nombre del Producto 2">
            <input class="NProducto" type="text" name="nombrePd3" value="<%=nombrePd3%>" placeholder="Nombre del Producto 3">
        </div>
        <div>
            <label class="NombreCant">Cant:</label>
            <input class="NomProductos" type="text" name="cant1" value="<%=cant1%>">
            <input class="NomProducto" type="text" name="cant2" value="<%=cant2%>">
            <input class="NomProducto" type="text" name="cant3" value="<%=cant3%>">
        </div>
        <div>
            <label class="prodVenta">Valor Total:</label>
            <input class="UseTotal" type="text" name="valorT1" value="<%=valorT1%>">
            <input type="hidden" name="precio1" value="<%=precioPd1%>">
            <input type="hidden" name="iva1" value="<%=ivaPd1%>">
            
            <input class="UseTotal" type="text" name="valorT2" value="<%=valorT2%>">
            <input type="hidden" name="precio2" value="<%=precioPd2%>">
            <input type="hidden" name="iva2" value="<%=ivaPd2%>">
            
            <input class="UseTotal" type="text" name="valorT3" value="<%=valorT3%>">
            <input type="hidden" name="precio3" value="<%=precioPd3%>">
            <input type="hidden" name="iva3" value="<%=ivaPd3%>">
        </div>
        
        <div>
            <input class="NombreSon" type="text" name="totalVenta" value="<%=totalVenta%>">
            <input class="UseProducto" type="text" name="totalIVA" value="<%=totalIva%>">
            <input class="UseProducto" type="text" name="totalPagar" value="<%=totalPagar%>">
        </div>
        
        <div>
            <label class="prodf">Total Venta:</label>
            <label class="prod">Total IVA:</label>
            <label class="prod">Total con IVA:</label>  
        </div>
        <div>
            <input class="buttons1" type="submit" name="limpiar" value="limpiar">
            <input class="buttons2" type="submit" name="confirmar" value="Confirmar">
        </div>
    </form>
    </fieldset>
    
</body>
</html>