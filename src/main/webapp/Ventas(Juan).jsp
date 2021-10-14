<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Controlador.Ventas" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ventas Tienda Generica</title>
<link rel='stylesheet'  href="CSS/StyleVentas.css">
</head>
<body>
 <header>
        <img src="Imagenes/tiendita.png" alt="encabezado">
    </header>

<%Ventas venta=new Ventas();
int codigo_producto=0;
String NombrePro=null;
double Res[]={0,0};%>

    
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a>
        <a href="Ventas.jsp" class="MenuH">Ventas</a>
        <a href="Reportes.jsp" class="MenuH">Reportes</a>
    </nav>
    
   
        <form class="formulario1">
        
	        <div> 
	            <label>Cédula:</label>
	            <input class="Use" type="text" name="act_cedula" required>
	            <input class="button" type="submit" name="consultar" value="Consultar"  >
	            
	            <label>Cliente:</label>
	            
	            <%
	            	if (request.getParameter("consultar")!=null){
	            		String Nombre=venta.Consultar_cliente(Integer.parseInt(request.getParameter("act_cedula")));
	            		if (Nombre!=null){
	            			out.write(Nombre);
	            		}else{
	            			
	            			out.write(Nombre);
	            		}
	            	}
	            %>
	            
	            
	        </div>
	        
        </form>
 
   
	    <form class="formulario2">

	        <div>
	            <label class="codProd">Cod. Producto:</label>
	            <input class="NombreS" type="submit" name="Consultar_prod" value="Consulta prod.">
	            <%
	            	if (request.getParameter("Consultar_prod")!=null){
	            		
	            		try{
	            			codigo_producto=Integer.parseInt(request.getParameter("cod.producto"));
		            		NombrePro=venta.Consultar_producto(Integer.parseInt(request.getParameter("cod.producto")));
	            		}catch(Exception e){
	            			JOptionPane.showMessageDialog(null,"Ha ocurrido un error "+ e,"ERROR",JOptionPane.ERROR_MESSAGE);
	            		}	
	            	}
	            %>
	            <input class="UseCod" type="text" name="cod.producto" value=<%if (request.getParameter("Consultar_prod")!=null){out.print(codigo_producto);} %>>
	        </div>
	        
	        
	        
	        <div>
	            <label class="NombreP">Nombre Producto:</label>
	
	            <input class="NProducto" type="text" name="Nom.producto" 
	            value=<%if (request.getParameter("Consultar_prod")!=null){out.print(NombrePro);}
	            %>>
	        </div>
	        <div>
                <label class="NombrePr">Cantidad de Prod:</label>
	            <input class="NomProductos" type="text" name="Can.producto" value=<% %>>
	        </div>
	        
	        <div>
	            
	            <label class=null>Cedula:</label>
	            <input class=null type="text" name="Cedula">
	        </div>
	        
	        
	        <div>
	        	<input class="buttons" type="submit" name="Siguiente_comp" value="Siguiente prod.">
	            <input class="buttonss" type="submit" name="Terminar_comp" value="Terminar Compra">
	            <%
		            int i=0;
	            	int canPro=0;
	            	int Cedula=0;
	            	int codigoPro=0;
	            	try{
	            		if(request.getParameter("Consultar_prod")!=null){
	            			Res[0]=Double.parseDouble(request.getParameter("V.producto"));
	            			Res[1]=Double.parseDouble(request.getParameter("TOTAL"));
	            		}
			            if(request.getParameter("Terminar_comp")!=null){
		        			i=3;
		        			codigoPro=Integer.parseInt(request.getParameter("cod.producto"));
		        			Cedula=Integer.parseInt(request.getParameter("Cedula"));
		            		canPro=Integer.parseInt(request.getParameter("Can.producto"));
		        		}
		            	if (request.getParameter("Siguiente_comp")!=null){
		            		i=1;
		            		codigoPro=Integer.parseInt(request.getParameter("cod.producto"));
		            		Cedula=Integer.parseInt(request.getParameter("Cedula"));
		            		canPro=Integer.parseInt(request.getParameter("Can.producto"));
		            	}
		            	if (i==1 || i==3){
		            		Res=venta.Guardar_Datos(codigoPro,Cedula,canPro,i,Double.parseDouble(request.getParameter("V.producto")),Double.parseDouble(request.getParameter("TOTAL")));
		            	}
	            	}catch(Exception e){
            			JOptionPane.showMessageDialog(null,"Ha ocurrido un error "+ e,"ERROR",JOptionPane.ERROR_MESSAGE);
            			Res[0]=Double.parseDouble(request.getParameter("V.producto"));
            			Res[1]=Double.parseDouble(request.getParameter("TOTAL"));
            		}
	            %>
	        
	        <div>
	        	<label class="prodVenta">Valor Total:</label>
	            <input class="UseTotal" type="text" name="V.producto" value=<%if ((request.getParameter("Terminar_comp")!=null) || (request.getParameter("Siguiente_comp")!=null)||(request.getParameter("Consultar_prod")!=null)){out.print(Res[0]);} %> 0>
                <label class="prodf">Total Venta:</label>
	            <input class="NombreSon" type="text" name="TOTAL" value=<%if ((request.getParameter("Terminar_comp")!=null) || (request.getParameter("Siguiente_comp")!=null)||(request.getParameter("Consultar_prod")!=null)){out.print(Res[1]);} %> 0>
	            
	        </div>
	        
	        
	        </div>
	        
	        
	    </form>
	    
</body>
</html>