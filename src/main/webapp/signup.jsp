<%-- 
    Document   : signup
    Created on : Jul 23, 2015, 4:46:04 PM
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
                                    <a href="cart.jsp">Cart</a> <a href="index.html">0 items</a>
				</div>
				<div>
					<a href="login.jsp">Login</a> 
                                        <a href="index.html">Register</a>
                                        
                                        
                                        <%
                                            %>
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
         
         <%
            
             
             %>
     <form method="post" action="register">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <h1>Enter Information Here</h1>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>

                    <tr>
                        <h2> If you are Already registered!! <a href="index.html">Go to home page!</a></h2>
                    </tr>
                </tbody>
                <input type="submit" value="Submit" class="button" />
                <input type="reset" value="Reset" class="button" />
            </table>
            </center>
        </form>
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