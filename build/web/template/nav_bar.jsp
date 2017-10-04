<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">appMensajes</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/appMensajes/index.jsp">Home</a></li>
      <li><a data-toggle='modal' data-target='#miModal'>Agregar Mensaje</a></li>
      <%
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("2")) {
                out.print("<li><a href='mostrarUsuarios.jsp'>Administrar Usuarios</a></li>");}
      
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<li><a href='MostrarMensajes.jsp'>Mostrar Mensajes</a></li>");}
            
           /* if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<li><a href='BuscarMensajes.jsp'>Buscar Mensajes por Usuario</a></li>");}
            
            
           if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("2")) {
            out.print("<li><a href='frmUsuario.jsp'>Agregar Usuario</a></li>");}*/
      %>
      
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <%
          out.print("<li><a href='#'><span style='margin: 0px 10px 0px;' class='glyphicon glyphicon-user'></span>"+session.getAttribute("nombre")+"</a></li>");
      if (session.getAttribute("usuario") != null) {
            out.print("<li><a href='/appMensajes/ServletLogout'><span class='glyphicon glyphicon-log-in'></span> Logout</a></li>");}
            out.print("</ul>");
       %>
    </ul>
  </div>
</nav>