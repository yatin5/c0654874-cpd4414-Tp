<%-- 
    Document   : cart
    Created on : Jul 30, 2015, 5:20:13 AM
    Author     : HP
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
            <h1>Items in your cart</h1>
            <%
                PrintWriter o = response.getWriter();
                Connection conn = database.LoginDatabase.getConnection();
                //HttpSession session = request.getSession();

                String user_id = (String) session.getAttribute("User");
                try {
                    if (user_id == null) {
            %>
            <h1> Please Login to see your Cycles </h1>
            <%
                        response.sendRedirect("login.jsp");
                    } else {
                        Statement st = conn.createStatement();
                        String query = "select * from cart where userid = user_id";
                        ResultSet rs = st.executeQuery(query);
                    }
                } catch (Exception e) {
                    o.println(e.getMessage());
                    o.close();
                }
            %>

            <div id="body">
                <div id="contents">
                    <ul id="articles">
                        <li>
                            <p>
                                This website has been designed by YATIN PATEL. 
                            </p>
                            <a href="read.html" class="more">Read More</a>
                        </li>

                        <li>
                           
                            <p>
                                If you're having problems using this Website,then don't hesitate to ask for help on the <a href="http://www.google.com/forums/">Forum</a>.<br><br>
                            </p>
                            <a href="" class="more">Request</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="footer">
                <div class="background">
                    <div class="body">
                        <div class="subscribe">
                            <h3>Get Weekly Newsletter</h3>
                            <form action="index.html" method="post">
                                <input type="text" value="" class="txtfield">
                                <input type="submit" value="" class="button">
                            </form>
                        </div>

                        <div class="connect">
                            <h3>Follow Us:</h3>
                            <a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" class="facebook"></a> <a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" class="twitter"></a> <a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" class="googleplus"></a>
                        </div>
                    </div>
                </div>
                <span id="footnote"> <a href="index.html">The cycle Store</a> &copy; 2015 | All Rights Reserved.</span>
            </div>
    </body>
</html>
