<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet'  href="CSS/StyleReporteTotalVentas.css">
</head>
<body>
<header>
        <img src="Imagenes/EncabezadoPagina.jpg" alt="">
    </header>
    <nav>
        <a href="" class="MenuH">Usuarios</a>
        <a href="" class="MenuH">Clientes</a>
        <a href="" class="MenuH">Proveedores</a>
        <a href="" class="MenuH">Productos</a>
        <a href="" class="MenuH">Ventas</a>
        <a href="" class="MenuH">Reportes</a>
    </nav>
    <form action="Cliente" method="post">
        <div> 
            <label class="LisUsuarios">Total de Ventas por Cliente</label>   
        </div>
        <table>
            <caption></caption>
            <tr>
                <th>Cédula</th>
                <th>Nombre</th>
                <th>Valor Total Venta</th>
                
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>   
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>    
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <section>
            <label class="Usep">Total Ventas $ </label>
            <input class="Use" type="text" name="act_consec" required>   
         </section>
</body>
</html>