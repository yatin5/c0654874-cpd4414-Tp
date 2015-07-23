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
         <form action="Login" method="get">
		<table>
			<tr>
                            
                            <%
                            
                            
                             if(session.getAttribute("User") == null){

    
    
    %>
    
    
                                 <td>User</td>
                                <td><input type="text" name="user" /></td>
			</tr>
			<tr>
				<td>password</td>
				<td><input type="password" name="password" /></td>
			</tr>
                        
                        <%
           //response.sendRedirect("login.html");
            }else {
                    // user = (String) session.getAttribute("user");
                     //out.println("you are already logged in");
                                 
                                 %>
                        
                        <h1>You are already logged in</h1>
                        
                        <%
                }
                            
                            %>
				
		</table>
		<input type="submit" value="Login!"/>
                <a href="index.html"<input type="submit" value="Logout"/></a>
                
	</form>
                            </div>
    </body>
</html>
