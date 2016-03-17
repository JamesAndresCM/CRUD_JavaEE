

<%@page import="stotomas.clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.Mensaje"%>
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
        <%
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
            if (!session.getAttribute("tipo").toString().equals("2"))
                response.sendRedirect("index.jsp");
            out.print("<center><h2>Usuarios</h2></center><hr>");
            
            BaseDato bd = new BaseDato();
            
            List<Usuario> lst = bd.getUsuarios();
            
            out.print("<center><table border='1' class='table table-striped'>");
            out.print("<tr><th>Usuario</th><th>Nombre</th><th>Correo</th><th>Tipo</th></tr>");
            
            
            for (Usuario u: lst) {
                out.print(String.format("<tr><td><a href='modificarUsuario.jsp?id=%d'>%s</a></td><td>%s</td><td>%s</td><td>%s</td></tr>", u.getId_user(), u.getUser(), u.getNombre(), u.getEmail(), ((u.getTipo()) == 1 ? "Superuser" : (u.getTipo()) == 2 ? "Administrador" : "Normal" ) ));
            }
            
            out.print("</table></center>");
            
        }
        %>
        </br>
        <center><a href="index.jsp">Volver</a></center>
    </body>
</html>
