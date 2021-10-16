<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reportes</title>
<link rel='stylesheet'  href="CSS/StyleReportes.css">
</head>
<body>

    <header>
        <img src="Imagenes/tiendita.png" alt="encabezado">
    </header>
    <nav>
        <a href="Usuarios.jsp" class="MenuH">Usuarios</a>
        <a href="Cliente.jsp" class="MenuH">Clientes</a>
        <a href="Proveedores.jsp" class="MenuH">Proveedores</a>
        <a href="Productos.jsp" class="MenuH">Productos</a>
        <a href="Ventas.jsp" class="MenuH">Ventas</a>
        <a href="Reportes.jsp" class="MenuH">Reportes</a>
    </nav>

        
        <div>
            <a href="ReporteListaUsuarios.jsp"><input class="button" type="button" name="" value="Lista de Usuarios"></a>
            <a href="ReportesListaClientes.jsp"><input class="button" type="button" name="" value="Lista de Clientes"></a>
            <a href="ReporteTotalVentas.jsp"><input class="button" type="button" name="" value="Venta por Cliente"></a>
        </div>

</body>
</html>