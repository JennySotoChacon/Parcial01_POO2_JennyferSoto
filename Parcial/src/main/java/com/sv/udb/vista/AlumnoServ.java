/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sv.udb.vista;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sv.udb.modelo.Alumnos;
import com.sv.udb.controlador.AlumnosCtrl;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Laboratorio
 */
@WebServlet(name = "AlumnoServ", urlPatterns = {"/AlumnoServ"})
public class AlumnoServ extends HttpServlet {

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
                String CRUD = request.getParameter("lugaAcceBton");
                if(CRUD.equals("Guardar"))
                {
                    Alumnos obje = new Alumnos();
                    obje.setNombAlum(request.getParameter("nomb"));
                    obje.setApelAlum(request.getParameter("apel"));
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    Date fechaNacimiento;
                    try
                    {
                       fechaNacimiento= formatter.parse(request.getParameter("fech"));
                    }
                    catch(Exception err)
                    {
                        fechaNacimiento=new Date();
                    }
                    obje.setFechNaciAlum(fechaNacimiento);
                    obje.setMailAlum(request.getParameter("email"));
                    obje.setTeleAlum(request.getParameter("tel"));
                    obje.setDireAlum(request.getParameter("dire"));
                    obje.setGeneAlum((request.getParameter("gen")).charAt(0));
                    mens = new AlumnosCtrl().guar(obje) ? "Datos guardados exitosamente" : "Datos NO guardados";
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
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
