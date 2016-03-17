/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stotomas.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import stotomas.clases.BaseDato;
import stotomas.clases.Mensaje;
import stotomas.clases.Usuario;


public class ServletGuardarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean logueado=false;
        
        HttpSession session = request.getSession();
        
        if (session != null) {
            if (request.getParameter("id") != null) {
                BaseDato bd = new BaseDato();
             
            /*
            String user = request.getParameter("txtuser");
            String pass = request.getParameter("txtpass");
            String nombre = request.getParameter("txtnombre");
            String email = request.getParameter("txtemail");
            int tipo = Integer.parseInt(request.getParameter("txttipo"));
            
                Usuario u = new Usuario(user,pass,nombre,email,tipo);
             */
                Usuario u = new Usuario(
                Integer.parseInt(session.getAttribute("id").toString()),
                request.getParameter("txtuser"),
                request.getParameter("txtpass"),
                request.getParameter("txtnombre"),
                request.getParameter("txtemail"),
                Integer.parseInt(request.getParameter("txttipo")));
                bd.insertarUsuario(u);
                logueado=true;
            }
        }
        
        if (logueado) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
