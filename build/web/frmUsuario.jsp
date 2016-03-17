

<%@page import="stotomas.clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
    <center><h2>Ingresar Usuario</h2></center>
        <form action="/appMensajes/ServletUsuario" method="post">
            <div class="control-group">
            <center><table>
                <tr>
                    <td>Usuario:</td>
                    <td><input type="text" name="usuario" value=""></td>
                </tr>
                <tr>
                    <td>Clave:</td>
                    <td><input type="password" name="clave" value=""></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value=""></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" value=""></td>
                </tr>
                    <td colspan="2" align="center"><input type="submit" class="btn btn-primary" value="Registrar"></td>
                </tr>
                </table></center>
            </div>
        </form>
    </br>
    <center><a href="index.jsp">Volver</a></center>
        </div>
    </body>
</html>
