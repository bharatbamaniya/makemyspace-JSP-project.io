<%-- 
    Document   : change_password_controller
    Created on : 4 Nov, 2020, 7:34:48 PM
    Author     : bkuma
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Connection conn = databaseConnection.initializeDatabase();
                String oldpass = request.getParameter("oldpass");
                String newpass = request.getParameter("newpass");
                String newpassc = request.getParameter("newpassc");
                String mobile = (String) session.getAttribute("mobile");

                PreparedStatement ps = conn.prepareStatement("UPDATE authenticate SET password=? WHERE mobile=?");
                ps.setString(1, newpass);
                ps.setString(2, mobile);

                Statement st = conn.createStatement();
                ResultSet r = st.executeQuery("SELECT mobile,password FROM authenticate WHERE mobile IN(" + mobile + ")");
                if (r.first()) {
                    if (r.getString("password").equals(oldpass)) {

                        if (newpass.equals(newpassc)) {
                            ps.executeUpdate();
                            session.setAttribute("msg", "Password Reset Successfully");
                            response.sendRedirect("redirectpage.jsp");

                        } else {
                            session.setAttribute("msg", "Password NOT Matched!");
                            response.sendRedirect("redirectpage.jsp");

                        }
                    } else {
                        session.setAttribute("msg", "Old Password is Incorrect");
                        response.sendRedirect("redirectpage.jsp");
                    }
                } else {
                    session.setAttribute("msg", "Error Occcured !!!");
                    response.sendRedirect("redirectpage.jsp");
                }
            } catch (Exception e) {
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
</html>
