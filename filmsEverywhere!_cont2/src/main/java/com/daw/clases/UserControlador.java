/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.clases;

import com.daw.films.dao.PeliculaDAO;
import com.daw.films.dao.PeliculaDAOList;
import com.daw.films.model.Pelicula;
import com.daw.util.Util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Susana
 */
@WebServlet(name = "UserControlador", urlPatterns = {"/UserControlador/*"})
public class UserControlador extends HttpServlet {

    private PeliculaDAO peliculaDAO;
    private String action;
    private String srvUrl;
    private String imgUrl;
    private final String srvViewPath = "/WEB-INF/Vistas/user/";

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        super.init(servletConfig); //To change body of generated methods, choose Tools | Templates.

        //Initialize Model Data
        peliculaDAO = new PeliculaDAOList();
        srvUrl = servletConfig.getServletContext().getContextPath() + "/UserControlador";
        imgUrl = servletConfig.getServletContext().getContextPath() + "/imagenes";

    }

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
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Expires", "0");

        action = (request.getPathInfo() != null ? request.getPathInfo() : "");
        request.setAttribute("srvUrl", srvUrl);
        request.setAttribute("imgUrl", imgUrl);

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
        RequestDispatcher rd;

        String var = action;
        switch (action) {
            case "/Inicio": {
                rd = request.getRequestDispatcher(srvViewPath + "Inicio.jsp");
                rd.forward(request, response);
                break;

            }
            case "/Peliculas": {
                /*rd=request.getRequestDispatcher(srvViewPath+"Peliculas.jsp");
                rd.forward(request, response);
                break;*/

                List<Pelicula> lp = peliculaDAO.buscaTodos();
                request.setAttribute("peliculas", lp);
                rd = request.getRequestDispatcher(srvViewPath + "/Peliculas.jsp");
                rd.forward(request, response);
                break;
            }
            case "/verFicha": {

                int id = Integer.parseInt(request.getParameter("id"));
                Pelicula p = peliculaDAO.buscaId(id);
                request.setAttribute("pelicula", p);
                rd = request.getRequestDispatcher(srvViewPath + "/Ficha.jsp");
                rd.forward(request, response);
                break;

            }
            case "/editarPelicula": {
                Pelicula p;
                int id=Integer.parseInt(Util.getParam(request.getParameter("id"),"0"));
                p=peliculaDAO.buscaId(id);
                request.setAttribute("pelicula", p);
                rd = request.getRequestDispatcher(srvViewPath + "editarPelicula.jsp");
                rd.forward(request, response);
                break;
            }
            
            case "/Borrar": {
                break;
            }
            case "/addPelicula": {
                Pelicula p=new Pelicula();
                request.setAttribute("pelicula",p);
                rd = request.getRequestDispatcher(srvViewPath + "addPelicula.jsp");
                rd.forward(request, response);
                break;
            }

            default: {
                
                List<Pelicula> lp = peliculaDAO.buscaTodos();
                request.setAttribute("peliculas", lp);
                rd = request.getRequestDispatcher(srvViewPath + "Inicio.jsp");
                rd.forward(request, response);
                break;

            }

        }

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
        RequestDispatcher rd;
        String tit = (String) request.getParameter("titulo");
        String sinop = (String) request.getParameter("sinopsis");

        switch (action) {
            case "/Peliculas": {
                rd = request.getRequestDispatcher(srvViewPath + "Peliculas.jsp");
                rd.forward(request, response);
                break;
            }
        }

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
