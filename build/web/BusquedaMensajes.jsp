
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.BaseDato"%>
<%@page import="stotomas.clases.User_mensaje"%>
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
        } else {if (!session.getAttribute("tipo").toString().equals("1"))
                response.sendRedirect("index.jsp");
            out.print("<center><h2>Mensajes</h2></center><hr>");
            
            
           
            
            BaseDato bd = new BaseDato();
            
            List<User_mensaje> lst = bd.getUser_mensaje(request.getParameter("usuario"));
            
            
            out.print("<center><table border='1' class='table table-striped'>");
            out.print("<tr><th>User</th><th>Mensaje</th><th>Fecha</th></tr>");
            
            for (User_mensaje x: lst) {
                out.print(String.format("<tr><td>%s</td><td>%s</td><td>%s</td></tr>", x.getUser(),x.getMensaje(),x.getFecha()));
                
                
            }
            
            out.print("</table></center>");
            }
            
%>
    <br>
    <center><a href="index.jsp">Volver</a></center>
    </body>
</html>
