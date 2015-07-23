<%-- 
    Document   : Register
    Created on : Jul 23, 2015, 7:07:34 PM
    Author     : HP
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <title>The Cycle Store</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    
   // Class.forName("com.mysql.jdbc.Driver");
    Connection conn = database.LoginDatabase.getConnection();
    Statement st = conn.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into login(firstname, lastname, email, userid, password) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "'");
    if (i > 0) {
        //session.setAttribute("userid", user);
 //       response.sendRedirect("welcome.jsp");
        out.print("Registration Successfull!"+"<a href='index.html'>Go to Login</a>");
    } else {
        response.sendRedirect("contact.html");
    }
%>
    </body>
</html>
