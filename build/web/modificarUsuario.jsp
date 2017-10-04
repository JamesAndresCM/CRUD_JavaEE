
<%@page import="stotomas.clases.BaseDato"%>
<%@page import="stotomas.clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <link href="bootstrap/css/styles.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <%@include file="/template/nav_bar.jsp" %>  
        <%@include file="/template/modal.html" %> 
        <div class="container">
        <%
         if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
             if (!session.getAttribute("tipo").toString().equals("2"))
                response.sendRedirect("index.jsp");
         }
        int id = Integer.valueOf(request.getParameter("id"));
        BaseDato bd  = new BaseDato();
        Usuario u = (Usuario) bd.getUsuario(id);
        
        %>
    <center><h2>Modificar Datos</h2></center><hr>
        <form action="/appMensajes/ServletModificarUsuario" method="post">
            <div class="control-group">
            <center><table>
                <td><input name="id_user" type="hidden" value="<%= u.getId_user() %>"></td>
                <tr>
                    <td>Usuario:</td>
                    <td><input type="text" class="form-control margin-text" name="usuario" value="<%= u.getUser() %>"></td>
                </tr>
                <tr>
                    <td>Clave:</td>
                    <td><input type="password" class="form-control margin-text" name="clave" value="<%= u.getPass() %>"></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" class="form-control margin-text" name="nombre" value="<%= u.getNombre() %>"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" class="form-control margin-text" name="email" value="<%= u.getEmail() %>"></td>
                </tr>
                <tr>
                    
                <tr>
                    <td>Tipo: </td>
                    <td>
                    <select name="tipo" class="form-control">
                    <option value="0">normal</option>
                    <option value="1">superuser</option>
                    <option value="2">Administrador</option>
                    
                    </select>
                    </td>
                
                    <!--<td><input type="text" name="tipo" value="<%= u.getTipo() %>"></td>!-->
                </tr>
                    <td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-acept" value="Enviar"></td>
                </tr>
                </table></center>
        </div>
        </form>
    </br>
    
        </div>
    </body>
</html>
