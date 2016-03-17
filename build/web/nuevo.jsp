
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
        <%
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp");
        } 
        %>
        <form action="/appMensajes/ServletGuardar" method="post">
            <center>
            <div class="form-group">
                <h2>Redactar Mensaje</h2>
              <div class="col-md-2">
                <textarea class="form-control" name="mensaje" rows="5"></textarea>
              </div>
            </div>

            </br>
            <input type="submit" class="btn btn-primary" value="Enviar">
            </center>
        </form>
        <center><a href="mostrarUsuarios.jsp">Volver</a></center>
    </body>
</html>
