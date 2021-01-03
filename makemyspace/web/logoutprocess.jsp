<%-- 
    Document   : logoutprocess
    Created on : 3 Oct, 2020, 10:39:47 AM
    Author     : bkuma
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseConnection.databaseConnection" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/style_home_owner.css" rel="stylesheet" type="text/css"/>
        <title>Logout Process...</title>
    </head>
    <body>
        <%
            
            session.invalidate();
            response.sendRedirect("index.html");
        %>
            
    </body>
</html>
