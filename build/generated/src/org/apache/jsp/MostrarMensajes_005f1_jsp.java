package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import stotomas.clases.Usuario;
import java.util.List;
import stotomas.clases.Mensaje;
import stotomas.clases.BaseDato;

public final class MostrarMensajes_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap-responsive.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

        if (session.getAttribute("usuario") == null) {
            response.sendRedirect("login.jsp?error=1");
        } else {
            out.print("<center><h2>Mostrando Mensajes</h2></center><hr>");
            
            out.print("<center><table border='1' class='table table-striped'>");
            out.print("<tr><th>Fecha</th><th>Mensaje</th></tr>");
            BaseDato bd = new BaseDato();
            
            
            
            
            
            if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            List<Mensaje> ls = bd.getAllMensajes(Integer.parseInt(session.getAttribute("id").toString()));
            
            for (Mensaje m: ls) {
                out.print(String.format("<tr><td>%s</td><td>%s</td></tr>",m.getFecha(), m.getMensaje()));
                
                
                
            }
            out.print("</table></center>");
            }
            
            else {
             response.sendRedirect("index.jsp");   
            }
            
            
        }
        
        
      out.write("\n");
      out.write("        <br>\n");
      out.write("    <center><a href=\"index.jsp\">Volver</a></center>\n");
      out.write("        ");

        
        /*if (session.getAttribute("usuario") != null && session.getAttribute("tipo").toString().equals("1")) {
            out.print("<br><a href='BuscarMensajes.jsp'>Buscar Mensajes por Usuario</a>");
        }
        
        if (session.getAttribute("usuario") != null) {
            out.print("<br><a href='/appMensajes/ServletLogout'>Salir</a>");
            
        }
                */
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
