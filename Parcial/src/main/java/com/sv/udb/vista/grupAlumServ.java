/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.vista;
import com.sv.udb.controlador.gruposAlumnos;
import com.sv.udb.modelo.Alumnos;
import com.sv.udb.modelo.Grupos;
import com.sv.udb.modelo.GruposAlumnos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Owner
 */
@WebServlet(name = "grupAlumServ", urlPatterns = {"/grupAlumServ"})
public class grupAlumServ extends HttpServlet {

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
        boolean esValido = request.getMethod().equals("POST");
            if(esValido)
            {
                String mens = "";
                String CRUD = request.getParameter("grupAlumBton");
                if(CRUD.equals("Guardar"))
                {
                    GruposAlumnos obje = new GruposAlumnos();
                    Alumnos obje1 = new Alumnos(Integer.parseInt(request.getParameter("cmbAlumnos")));
                    Grupos obje2 = new Grupos(Integer.parseInt(request.getParameter("cmbGrupos")));
                    
                    obje.setCodiAlum(obje1);
                    obje.setCodiGrup(obje2);
                    obje.setEstaGrupAlum('A');
                    mens = new gruposAlumnos().guar(obje) ? "Datos guardados exitosamente" : "Datos NO guardados";
                    request.getRequestDispatcher("/grup_alum.jsp").forward(request, response);
                }
                else if (CRUD.equals("Consultar")) {
                    request.setAttribute("cod", request.getParameter("cmbGrupos"));
                    request.getRequestDispatcher("/seleccionarGrupo.jsp").forward(request, response);
                }
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
