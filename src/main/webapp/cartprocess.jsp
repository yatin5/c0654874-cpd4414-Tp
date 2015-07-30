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
        <meta charset="UTF-8">
        <title>The Cycle Store</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div id="header">
            <div>
                <div id="navigation">
                    <div class="infos">
                        <a href="index.html">Cart</a> <a href="index.html">0 items</a>
                    </div>
                    <div>
                        <a href="login.jsp">Login</a> <a href="signup.jsp">Register</a>
                       
                        
                        
                        
                        <a href="logout.jsp">Logout</a> 
                    </div>
                    <ul id="primary">
                        <li class="selected">
                            <a href="index.html"><span>Home</span></a>
                        </li>
                        <li>
                            <a href="about.html"><span>About</span></a>
                        </li>
                        <li>
                            <a href="men.html"><span>Men</span></a>
                        </li>
                    </ul>
                    <ul id="secondary">
                        <li>
                            <a href="women.html"><span>Women</span></a>
                        </li>
                        <li>
                            <a href="blog.html"><span>Blog</span></a>
                        </li>
                        <li>
                            <a href="contact.html"><span>Contact</span></a>
                        </li>
                    </ul>
                </div>
                <a href="index.html" id="logo"><img src="images/logo.png" alt="LOGO"></a>
            </div>
        </div>
        <div id="adbox">
            <h1>Cycle  for this session</h1>
            <ul>
                <li>
                    <a href=""><img src="images/cycle_3.jpg" alt="Img"></a>
                    <a href="cartprocess.jsp" class="button">Add to cart</a>
                </li>
                <li>
                    <a href=""><img src="images/fiveproduct1.jpg" alt="Img"></a>
                   <a href="cartprocess.jsp" class="button">Add to cart</a>
                </li>
                <li>
                    <a href=""><img src="images/cycle_4.jpg" alt="Img"></a>
                    <a href="cartprocess.jsp" class="button">Add to cart</a>
                </li>
            </ul>
        </div>
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
      
      %>
      
      
      o.println(id);
      o.println(name);
      o.println(price);
      o.println(desc);
      <%
    }rs.close();
             }catch(Exception e){
        o.println(e.getMessage());
        o.close();
}
%>
    </body>
</html>
