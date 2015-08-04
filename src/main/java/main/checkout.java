/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
public class checkout extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        Connection conn = database.LoginDatabase.getConnection();
        //response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String Name = request.getParameter("name");
            String email = request.getParameter("mail");
            String Phone = request.getParameter("phn");
            String Card = request.getParameter("cno");
            String Cvv = request.getParameter("cn");
            String Address = request.getParameter("add");
            
             int p = Integer.parseInt(Phone);
            
             int c = Integer.parseInt(Card);
             int a = Integer.parseInt(Cvv);
             out.println(Name);
             out.println(email);
             out.println(p);
             out.println(c);
             out.println(a);
             out.println(Address);
             
             
             HttpSession session = request.getSession();
             String user_id = (String) session.getAttribute("User");
             if(user_id == null){
                 response.sendRedirect("login.jsp");
             }else
             {
        
             PreparedStatement ps = conn.prepareStatement("insert into checkout values(?,?,?,?,?,?)");

            ps.setString(1, Name);
            ps.setString(2, email);
            ps.setInt(3, p);
            ps.setInt(4, c);
            ps.setInt(5, a);
            ps.setString(6, Address);
            
           
            int i = ps.executeUpdate();

            if (i > 0) {
                response.sendRedirect("check.html");
            }
             }
        } catch(Exception e) {
            out.println(e.getMessage());
            out.close();
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(checkout.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(checkout.class.getName()).log(Level.SEVERE, null, ex);
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
