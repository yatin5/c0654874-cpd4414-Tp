<%-- 
    Document   : logout
    Created on : Jul 23, 2015, 8:21:13 PM
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
        <%
            session.setAttribute("userid", null);
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>
