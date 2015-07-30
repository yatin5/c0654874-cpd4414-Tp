<%-- 
    Document   : cartprocess
    Created on : Jul 27, 2015, 8:18:02 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
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
             PrintWriter o = response.getWriter();
              Connection conn = database.LoginDatabase.getConnection();
    if(conn != null){
        o.println("success");
    }
    else{
        o.println("failed");
    }
             try{

   Statement st = conn.createStatement();
    
    int id = 0;
    String name = null;
    int price = 0;
    String desc = null;
    String query = "select * from cycle where id >=1";  
   ResultSet rs =  st.executeQuery(query);
 
 while(rs.next())
 {
      id = rs.getInt("id");
      name = rs.getString("name");
      price = rs.getInt("price");
      desc  = rs.getString("description");
      
      o.println(id);
      o.println(name);
      o.println(price);
      o.println(desc);
      
    }rs.close();
             }catch(Exception e){
        o.println(e.getMessage());
        o.close();
}
%>
    </body>
</html>
