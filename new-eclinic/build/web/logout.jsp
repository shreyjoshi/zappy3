<%-- 
    Document   : logout
    Created on : May 3, 2016, 3:02:04 PM
    Author     : shrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout Page</title>
    </head>
    <body>
         <%
        session.invalidate();
        response.sendRedirect("home.html");
        %>
        <h1>Hello user you have been logged out</h1>
        
    </body>
</html>
