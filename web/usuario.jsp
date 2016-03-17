
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
        } 
        %>
    <center><h1>Agregar Usuario</h1></center>
        <form action="/appMensajes/ServletGuardarUsuario" method="post">
            <table align="center">
                <tr><td>User :</td><td><input type="text" id="txtuser" name="txtuser"></td>
                    <tr><td>Contraseña :</td><td><input type="text" id="txtpass" name="txtpass"></td>
                        <tr><td>Nombre :</td><td><input type="text" id="txtnombre" name="txtnombre"></td>
                            <tr><td>E-mail :</td><td><input type="text" id="txtemail" name="txtemail"></td>
                                <tr><td>Tipo :</td><td><input type="text" id="txttipo" name="txttipo"></td>
            
            </table>
            <center><input type="submit" value="Aceptar"></center>
        </form>
    </body>
</html>
