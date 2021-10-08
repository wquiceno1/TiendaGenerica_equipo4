<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Tienda Génerica</title>
<link rel="stylesheet" href="CSS/StyleLogin.css">
</head>
<body>
     <h1>Bienvenido</h1>
  <section class="form-login">
            <form action="Login" method="post">
            <input class="controls" type="text" name="usuario" placeholder="Usuario" >
            <input class="controls" type="password" name="clave" placeholder="Contraseña">
            <input class="buttons" type="submit" name="Aceptar" value="Aceptar">
            <input class="buttons" type="submit" name="Cancelar" value="Cancelar">
            </form>
			<%
			if(request.getParameter("men")!=null){
			String mensaje=request.getParameter("men");
			out.print("<script>alert('"+mensaje+"');</script>");
			}
			%>
   </section>
</body>
</html>
