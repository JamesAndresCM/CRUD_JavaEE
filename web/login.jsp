

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
    <center><h2>Login</h2><hr></center>
    <center>
        <form action="/appMensajes/ServletValidar" method="post">
            <div class="control-group">
            <table>
                <tr>
                    <td><h3>Usuario</h3></td><td><input type="text" name="user"></td>
                </tr>
                <tr>
                    <td><h3>Contraseña</h3></td><td><input type="password" name="pass"></td>
                </tr>
            
                <tr>
                
            </tr>
            </table>
                </br>
                <center><input type="submit" class="btn btn-primary" value="Aceptar"></center>
            </div>
        </form>
        <br><a href="frmUsuario.jsp">Registrarse</a>
    </center>
        </div>
    </body>
        
</html>
