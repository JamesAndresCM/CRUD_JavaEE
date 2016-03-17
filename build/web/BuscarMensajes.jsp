

<%@page import="stotomas.clases.BaseDato"%>
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
        <%
         if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
             if (!session.getAttribute("tipo").toString().equals("1"))
                response.sendRedirect("index.jsp");
         }
        
        out.print("<form action='BusquedaMensajes.jsp' method='post'>");
            out.print("<div class='control-group'>");
            out.print("<center><h2>Buscar Mensajes de Usuarios</h2></center>");
            out.print("</br>");
            out.print("<center>Ingrese Nombre Usuario :<input type='text' name='usuario'></center>");
            out.print("</br>");
            out.print("<center><input type='submit' class='btn btn-primary' value='Buscar'></center>");
            
            out.print("</div>");
         out.print("</form>");
        %>
        
        </br>
        

    <center><a href="/appMensajes/index.jsp">Volver</a></center>
</div>
    </body>
</html>
