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
        <title>JSP Page</title>
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
     <form method="post" action="register">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <h2>Enter Information Here</h2>
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
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.html">Go to main page!</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
            </div>
    </body>
</html>
