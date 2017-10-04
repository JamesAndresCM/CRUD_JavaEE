

<%@page import="stotomas.clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.Mensaje"%>
<%@page import="stotomas.clases.BaseDato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <link href="bootstrap/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/search.js"></script>
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
            out.print("<h2 class='center'>Lista de Usuarios</h2>");
            
            BaseDato bd = new BaseDato();
            
            List<Usuario> lst = bd.getUsuarios();
            
            out.print("<div class='input-group search'>"+
            "<input type='search' id='search' class='form-control' placeholder='Ingrese Busqueda'>"+
            "<span class='input-group-btn'>"
            + "<button class='btn btn-default' type='button'>Buscar</button>"
            + "</span>"
            + "</div></br>");
            
            out.print("<table class='table table-striped div-center' style='width: 80%'>");
            out.print("<tr>"
                    + "<th>Usuario</th>"
                    + "<th>Nombre</th>"
                    + "<th>Correo</th>"
                    + "<th>Tipo</th>"
                    + "<th class='center'>Opciones</th>"
                    + "</tr>");
            
            
            for (Usuario u: lst) {
                out.print(String.format("<tr>"
                        + "<td>%s</td>"
                        + "<td>%s</td>"
                        + "<td>%s</td>"
                        + "<td>%s</td>"
                        + "", u.getUser(), u.getNombre(), u.getEmail(), ((u.getTipo()) == 1 ? "Superuser" : (u.getTipo()) == 2 ? "Administrador" : "Normal" )));
                        
                
                        out.print(String.format("<td class='center'><a style='margin: 6px' onclick='return window.confirm(\"Are you sure you want to delete?\");' class='btn btn-danger btn-sm' href='http://localhost:8080/appMensajes/EliminarUsuario?id_user=%d'>Eliminar</a>",u.getId_user()));
                
                        out.print(String.format("<a class='btn btn-info btn-sm' href='modificarUsuario.jsp?id=%d'>Modificar</a></td></tr>",u.getId_user()));
                
               } 
            
            
            out.print("</table>");
        
        }
        %>
    </body>