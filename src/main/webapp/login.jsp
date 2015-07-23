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
        <title>The cycle Store</title>
    </head>
    <body>
         <form action="Login" method="get">
		<table>
			<tr>
                            
                            <%
                            
                            
                             if(session.getAttribute("User") == null){

    
    
    %>
    <%= session.getAttribute("User") %>
    
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
	</form>
    </body>
</html>
