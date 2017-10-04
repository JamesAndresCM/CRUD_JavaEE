
<%@page import="stotomas.clases.User_mensaje"%>
<%@page import="stotomas.clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.Mensaje"%>
<%@page import="stotomas.clases.BaseDato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>
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
            out.print("<h2 class='center'>Lista de Mensajes</h2>");
            
            out.print("<div class='input-group search'>"+
            "<input type='search' id='search' class='form-control' placeholder='Ingrese Busqueda'>"+
            "<span class='input-group-btn'>"
            + "<button class='btn btn-default' type='button'>Buscar</button>"
            + "</span>"
            + "</div></br>");
            
            out.print("<table class='div-center table table-striped' style='width: 80%;'>");
            out.print("<tr>"
                    + "<th>User</th>"
                    + "<th>Mensaje</th>"
                    + "<th>Fecha</th>"
                    + "<th class='center'>Opcion</th>"
                    + "</tr>");
            BaseDato bd = new BaseDato();
            
            
            
            
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            List<Mensaje> ls = bd.getAllMensajes();
            
            for (Mensaje m: ls) {
                out.print(String.format("<tr>"
                        + "<td>%s</td>"
                        + "<td>%s</td>"
                        + "<td>%s</td>",m.getUser(), m.getMensaje(),m.getFecha()));
                
                out.print(String.format("<td class='center'><a style='margin: 6px' onclick='return window.confirm(\"Are you sure you want to delete?\");' class='btn btn-danger btn-sm' href='http://localhost:8080/appMensajes/EliminarMensaje?id_mensaje=%d'>Eliminar</a>",m.getId_mensaje()));
                
                
                
            }
            out.print("</table>");
            }
            
            else {
             response.sendRedirect("index.jsp");   
            }
            
            
        }
        
        %>
        
    </body>
</html>
