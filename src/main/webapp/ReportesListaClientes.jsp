<%@page import="java.util.Iterator"%>
<%@page import="Modelo.ClienteDTO"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->

    <!-- Style -->
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="images/icono.ico"> 
    <script src="https://kit.fontawesome.com/c159e6bc0d.js" crossorigin="anonymous"></script>
    
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap.min.css"/>
    <script>
        $(document).ready(function() {
            $('#TablaDat').DataTable({
                "paging": true,
                "buttons": true,
                "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "TODOS"]],
                "paginate": true,
                "language": {"url": "https://cdn.datatables.net/plug-ins/1.10.22/i18n/Spanish.json"}
                    
            });
        } );
    </script>
<title>Reporte Lista Clientes</title>
<link rel='stylesheet'  href="CSS/StyleReporteUsuarios.css">
</head>
<body>
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
    </nav>
    
        <div class="container">
            <h1>Lista de Clientes</h1>
            <hr>
            <br>
                            
            <table class="table table-reponsive text-center table-bordered" id="TablaDat" >
               <thead>
                  <tr>
                      <th>CEDULA CIUDADANIA</th>
                      <th>NOMBRE CLIENTE</th>
                      <th>TELEFONO</th>
                      <th>DIRECCION</th>
                      <th>CORREO ELECTRONICO</th>
                      
                  </tr>
               </thead>
                <tbody>
                    <tr>
                    	<%
		                    ClienteDAO dao=new ClienteDAO();
		                    List<ClienteDTO>list=dao.listar();
		                    Iterator<ClienteDTO>iter=list.iterator();
		                    ClienteDTO cli=null;
		                    while(iter.hasNext()){
	                       cli=iter.next();
                		%>
                        <td><%= cli.getCedula_cliente()%></td>
                        <td><%= cli.getNombre_cliente()%></td>
                        <td><%= cli.getTelefono_cliente()%></td>
                        <td><%= cli.getDireccion_cliente()%></td>
                        <td><%= cli.getEmail_cliente()%></td>
                        
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        
</body>
</html>