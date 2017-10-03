

<%@page import="stotomas.clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.*"%>
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
        
            
            BaseDato bd = new BaseDato();
            
            List<Mensaje> lst = bd.getMensajes(Integer.parseInt(session.getAttribute("id").toString()));
            
            out.print("<center><h2>Mis mensajes</h2></center>");
            out.print("<center><table class='table table-striped' style='width: 80%;'>");
            
            out.print("<tr><th>Fecha</th><th>Mensaje</th></tr>");
            for (Mensaje m: lst) {
                out.print(String.format("<tr><td>%s</td><td>%s</td></tr>", m.getFecha(), m.getMensaje()));
                
                
            }
            out.print("</table></center>");
            }
            
            %>
        <br>
        
        
    <!--<center><a href="nuevo.jsp">Agregar nuevo mensaje</a></center>-->
    
        <%
    /*    if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<center><br><a href='MostrarMensajes.jsp'>Mostrar Mensajes</a>");
        }
        if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<br><a href='BuscarMensajes.jsp'>Buscar Mensajes por Usuario</a>");
        }
        if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("2")) {
            out.print("<br><center><a href='mostrarUsuarios.jsp'>Administrar usuarios</a></center>");
            out.print("<br><center><a href='frmUsuario.jsp'>Agregar Usuario</a></center>");
        }
        if (session.getAttribute("usuario") != null) {
            out.print("<br><center><a href='/appMensajes/ServletLogout'>Salir</a></center>");
            
        }
            */
        %> 
    
    </body>
    
 
</html>
