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
                        <a href="cart.jsp">Cart</a> <a href="checkout.jsp">CheckOut</a>
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
                        
                    </ul>
                    <ul id="secondary">
                        <li>
                            <a href="cartprocess.jsp"><span>Cycle</span></a>
                        </li>
                        
                        <li>
                            <a href="contactus.jsp"><span>Contact</span></a>
                        </li>
                    </ul>
                </div>
                <a href="index.html" id="logo"><img src="images/logo.png" alt="LOGO"></a>
            </div>
        </div>
        <div id="adbox">
          <div id="contents">
            <h1>CYCLES</h1>
          </div>
            </div>
       
        <%
             PrintWriter o = response.getWriter();
              Connection conn = database.LoginDatabase.getConnection();
    
             try{

   Statement st = conn.createStatement();
    
    int id = 0;
    String name = null;
    int price = 0;
    String desc = null;
    String query = "select * from cycle";  
   ResultSet rs =  st.executeQuery(query);
 %>

 <%
 while(rs.next())
 {
      id = rs.getInt("id");
      name = rs.getString("name");
      price = rs.getInt("price");
      desc  = rs.getString("description");
      
      %>
       <div id="adbox">
          <div id="contents">
			
			<ul id="main">
           <form action="cart" methdo="post">
      <table>
         
          <tr><input type="hidden" value="<%= id %>" name="imgid"></tr>
          <tr> <img src="<%= name%>"><input type="hidden" value="<%= name%>" name="path"></tr>
          <tr><p>Price: $<%= price %><input type="hidden" value="<%= price %>" name="cost"> </p></tr>
          <tr> <p>Description: <%= desc %><input type="hidden" value="<%= desc %>" name="imgdesc"></p></tr>
 <tr><td><input type="submit" value="Add to cart" class="button"/></td></tr>
          </table>
     </form>
    </ul>
    </div>
    
      </div>
      <%
    }rs.close();
             }catch(Exception e){
        o.println(e.getMessage());
        o.close();
}
%>

 <div id="footer">
		<div class="background">
			<div class="body">
				
				<div class="connect">
					<h3>Follow Us:</h3>
					<a href="https://www.facebook.com/yatin5" target="_blank" class="facebook"></a> <a href="https://mobile.twitter.com/account" target="_blank" class="twitter"></a> <a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" class="googleplus"></a>
				</div>
			</div>
		</div>
		<span id="footnote"> <a href="index.html">The Cycle Store</a> &copy; 2015 | All Rights Reserved.</span>
	</div>
</body>
</html>
