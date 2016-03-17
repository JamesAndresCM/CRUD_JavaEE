
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
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <%
        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
            out.print("<center><h2>Mostrando Mensajes</h2></center><hr>");
            
            out.print("<center><table border='1' class='table table-striped'>");
            out.print("<tr><th>User</th><th>Mensaje</th><th>Fecha</th></tr>");
            BaseDato bd = new BaseDato();
            
            
            
            
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            List<User_mensaje> ls = bd.getALLUser_mensaje();
            
            for (User_mensaje m: ls) {
                out.print(String.format("<tr><td>%s</td><td>%s</td><td>%s</td></tr>",m.getUser(), m.getMensaje(),m.getFecha()));
                
                
                
            }
            out.print("</table></center>");
            }
            
            else {
             response.sendRedirect("index.jsp");   
            }
            
            
        }
        
        %>
        <br>
    <center><a href="index.jsp">Volver</a></center>
        <%
        
        /*if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<br><a href='BuscarMensajes.jsp'>Buscar Mensajes por Usuario</a>");
        }
        
        if (session.getAttribute("usuario") != null) {
            out.print("<br><a href='/appMensajes/ServletLogout'>Salir</a>");
            
        }
                */
        %>
    </body>
</html>
