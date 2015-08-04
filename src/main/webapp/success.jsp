<%-- 
    Document   : success
    Created on : Jul 23, 2015, 8:35:34 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Cycle Store</title>
    </head>
    <body>
        <div id="header">
            <div>
                <div id="navigation">
                    <div class="infos">
                        <a href="index.html">Cart</a> <a href="index.html">0 items</a>
                    </div>
                    <div>
                        <a href="login.jsp">Login</a> <a href="index.html">Register</a>
                    </div>
                    <ul id="primary">
                        <li class="selected">
                            <a href="index.html"><span>Home</span></a>
                        </li>
                        <li>
                            <a href="about.html"><span>About</span></a>
                        </li>
                        <li>
                            <a href="check.html"><span>Men</span></a>
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
            <a href='logout.jsp'> <input type="submit" value="Logout"/></a>
            <a href='signup.jsp'><input type="submit" value="Register Here"></a>


            <%
                if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
            %>
            <h1>  You are not logged in</h1>><br/>
            <a href="index.html">Please Login</a>
            <%} else {
            %>
            <h1> Welcome <%=session.getAttribute("userid")%></h1>
            <a href='logout.jsp'>Log out</a>
            <%
                }
            %>
        </div>
    </body>
</html>
