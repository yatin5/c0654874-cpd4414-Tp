package main;

import static main.LoginDatabase.getConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	  Connection conn = null;	
            try {
                conn = getConnection();
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
            Statement s = null;
            try {
                s = conn.createStatement();
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
String user = req.getParameter("user"); 
String pass = req.getParameter("Password"); 
String id=null; String userId=null; String sql = "SELECT id, userId, password FROM login where username='"+user+"' and password='"+pass+"'"; 
ResultSet rs = null; 
            try {
                rs = s.executeQuery(sql);
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                while(rs.next()) { id=rs.getString("id"); userId=rs.getString("userId"); }
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }

 if(id!=null) {
System.out.println("Login Success"); 
}else {
System.out.println("Login Failed");
}
	}

	private void response(HttpServletResponse resp, String msg)
			throws IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>" + msg + "</t1>");
		out.println("</body>");
		out.println("</html>");
	}
}