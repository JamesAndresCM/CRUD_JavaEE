

<%@page import="stotomas.clases.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="stotomas.clases.*"%>
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
            out.print("<center><h2>Bienvenido " + session.getAttribute("nombre") + "</h2></center><hr>");
            
            out.print("<ul class='nav nav-tabs'>");
            out.print("<li><a href='index.jsp'>Inicio</a></li>");
            
            out.print("<li><a href='nuevo.jsp'>Agregar Mensaje</a></li>");
            
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<li><a href='MostrarMensajes.jsp'>Mostrar Mensajes</a></li>");}
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<li><a href='BuscarMensajes.jsp'>Buscar Mensajes por Usuario</a></li>");}
            
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("2")) {
                out.print("<li><a href='mostrarUsuarios.jsp'>Administrar Usuarios</a></li>");}
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("2")) {
            out.print("<li><a href='frmUsuario.jsp'>Agregar Usuario</a></li>");}
            
            if (session.getAttribute("usuario") != null) {
            out.print("<li><a href='/appMensajes/ServletLogout'>Salir</a></li>");}
            out.print("</ul>");
            BaseDato bd = new BaseDato();
            
            List<Mensaje> lst = bd.getMensajes(Integer.parseInt(session.getAttribute("id").toString()));
            
            out.print("<center><h2>Mis mensajes</h2></center>");
            out.print("<center><table border='1' class='table table-striped'>");
            
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
