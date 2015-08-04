<%-- 
    Document   : login
    Created on : Jul 23, 2015, 3:40:16 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                        <a href="login.jsp">Login</a> <a href="index.html">Register</a>
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
                            <a href="contact.html"><span>Contact</span></a>
                        </li>
                    </ul>
                </div>
                <a href="index.html" id="logo"><img src="images/logo.png" alt="LOGO"></a>
            </div>
        </div>
        <div id="adbox">
            <form action="Login" method="post">
                <table>
                    <tr>

                        <%

                            if (session.getAttribute("User") == null) {
                        %>
                    <h1>LOGIN HERE!</h1>

                    <td>User</td>
                    <td><input type="text" name="user" /></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                </table>  
                <input type="submit" value="Login!"/>
                <input type="reset" value ="Reset"/>
                <%
                    //response.sendRedirect("login.html");
                } else {
                    // user = (String) session.getAttribute("user");
                    //out.println("you are already logged in");

                %>

                <h1>You are already logged in</h1>

                <%                            }
                %>
            </form>
          <!--  <a href='logout.jsp'> <input type="submit" value="Logout"/></a>
            <a href='signup.jsp'><input type="submit" value="Register Here"></a>-->
        </div>
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