/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import database.LoginDatabase;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
public class Login extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            Connection conn =  LoginDatabase.getConnection();
           
        
        
        try {
            String name = request.getParameter("user");
            String pass = request.getParameter("pass");
                  //  out.println(name);
            Statement s = null;
            String id= null;
            String id2 = null;
            String query = "select userid,password from login where usernid = '"+name+"' and password = '"+pass+"'";
            ResultSet set = s.executeQuery(query);
            
            while(set.next()){
                id = set.getString("userid");
                id2 = set.getString("password");
            }
               if(id != null) {
                   out.println("Login Successful");
               } else{
                  out.println("Login Failed");
               }
            
        
            
//            if( name.equalsIgnoreCase(name) && pass.equalsIgnoreCase(pass)){
//                
//                HttpSession session= request.getSession();
//                
//                session.setAttribute("xxx", name);
//                session.setAttribute("yyy", pass);
//                
//                RequestDispatcher rd = request.getRequestDispatcher("index.html");
//                
//                rd.forward(request, response);
//            }
//            else {
//               RequestDispatcher rd = request.getRequestDispatcher("login.html");
//               rd.include(request, response);
//            }
        } finally{
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
               Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
               Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
