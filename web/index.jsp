

<%@page import="stotomas.clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <link href="bootstrap/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="/template/nav_bar.jsp" %>  
        <%@include file="/template/modal.html" %> 
        <%
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
        
            
            BaseDato bd = new BaseDato();
            
            List<Mensaje> lst = bd.getMensajes(Integer.parseInt(session.getAttribute("id").toString()));
            
            out.print("<h2 class='center'>Mis mensajes</h2>");
            out.print("<table class='table table-striped div-center' style='width: 80%;'>");
            
            out.print("<tr>"
                    + "<th>User</th>"
                    + "<th>Fecha</th>"
                    + "<th>Mensaje</th>"
                    + "</tr>");
            for (Mensaje m: lst) {
                out.print(String.format("<tr>"
                        + "<td>%s</td>"
                        + "<td>%s</td>"
                        + "<td>%s</td>"
                        + "</tr>",m.getUser(), m.getFecha(), m.getMensaje()));
            }
            out.print("</table>");
            }
            
            %>
    
    </body>
    
 
</html>
