<%-- 
    Document   : reset_password_controller
    Created on : 4 Nov, 2020, 7:04:46 PM
    Author     : bkuma
--%>

<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password Controller...</title>
    </head>
    <body>
        <%
            try{
               Connection conn = databaseConnection.initializeDatabase();
              
               String newpass = request.getParameter("newpass");
               String newpassc= request.getParameter("newpassc");
               String mobile = (String) session.getAttribute("mobile");
               
               PreparedStatement ps = conn.prepareStatement("UPDATE authenticate SET password=? WHERE mobile=?");
               ps.setString(1,newpass);
               ps.setString(2,mobile);
               
              if(newpass.equals(newpassc)){
                  ps.executeUpdate();
                  session.setAttribute("msg", "Password Reset Successfully");
                  response.sendRedirect("redirectpage.jsp");
                  
              }
              else{
                  session.setAttribute("msg", "Password NOT Matched!!!");
                  response.sendRedirect("redirectpage.jsp");
                  
              }
            }catch(Exception e){
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
    </body>
</html>
