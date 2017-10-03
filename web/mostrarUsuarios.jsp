

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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <link href="bootstrap/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="/template/nav_bar.jsp" %>  
        <%@include file="/template/modal.html" %> 
        <%
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
            if (!session.getAttribute("tipo").toString().equals("2"))
                response.sendRedirect("index.jsp");
            out.print("<center><h2>Usuarios</h2></center><hr>");
            
            BaseDato bd = new BaseDato();
            
            List<Usuario> lst = bd.getUsuarios();
            
            out.print("<center><table class='table table-striped' style='width: 80%'>");
            out.print("<tr><th>Usuario</th><th>Nombre</th><th>Correo</th><th>Tipo</th><th>Opcion</th></tr>");
            
            
            for (Usuario u: lst) {
                out.print(String.format("<tr>"
                        + "<td><a href='modificarUsuario.jsp?id=%d'>%s</a></td>"
                        + "<td>%s</td><td>%s</td><td>%s</td>"
                        + "</tr>", u.getId_user(), u.getUser(), u.getNombre(), u.getEmail(), ((u.getTipo()) == 1 ? "Superuser" : (u.getTipo()) == 2 ? "Administrador" : "Normal" )
                        + "<td><button window.confirm(message); class='btn btn-sm btn-danger'value='"+u.getId_user()+"'>Delete</button></td>"    
                ));
            }
            
            out.print("</table></center>");
            
        }
        %>
        </br>
        <center><a href="index.jsp">Volver</a></center>
    </body>
</html>
