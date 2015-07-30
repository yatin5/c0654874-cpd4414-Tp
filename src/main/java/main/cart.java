/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sun.security.pkcs11.wrapper.Functions;

/**
 *
 * @author HP
 */
public class cart extends HttpServlet {

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
       // response.setContentType("text/html;charset=UTF-8");
        
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
       // processRequest(request, response);
        HttpSession session = request.getSession();

    
        String user_id = (String) session.getAttribute("User");
        PrintWriter out = response.getWriter();
        try {
          Connection conn = database.LoginDatabase.getConnection();
          
          String imageid = request.getParameter("imgid");
          String cname = request.getParameter("path");
          String price = request.getParameter("cost");
          String description = request.getParameter("imgdesc");
         
            
            
            
          
           
                   
            if(user_id == null){
                out.println("Please login first to add to cart!");
                response.sendRedirect("login.jsp");
            }
            else
            {
                 PreparedStatement ps=conn.prepareStatement
                  ("insert into cart values(?,?,?,?,?,?)");
        ps.setString(1, user_id);
        ps.setString(2, imageid);
        ps.setString(3, cname);
        ps.setString(4, price);
        ps.setString(5, description);
        
        int i=ps.executeUpdate();
        
          if(i>0)
          {
            out.println("Your cycle added successfully");
          }
            }
          
        } catch(Exception e) {
            out.println(e.getMessage());
            out.close();
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
