<%-- 
    Document   : cartprocess
    Created on : Jul 27, 2015, 8:18:02 PM
    Author     : HP
--%>
<%@page import="database.LoginDatabase" %>%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String username = request.getParameter("user");   
    String image = request.getParameter("image");
    String price = request.getParameter("price");
    String description = request.getParameter("description");

   
    Connection conn = database.LoginDatabase.getConnection();
    if(conn != null){
        out.println("success");
    }
    else{
        out.println("failed");
    }
    Statement st = conn.createStatement();
    //ResultSet rs;
 int c = st.executeUpdate("insert into cart values ('" + username + "','" + image + "','" + price + "','" + description + "')"); 
 if(c > 0)
 {
        //session.setAttribute("userid", user);
        response.sendRedirect("cart.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("login.jsp");
    }
%>
    </body>
</html>
