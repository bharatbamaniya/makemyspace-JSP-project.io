<%-- 
    Document   : logincheck
    Created on : 26 Sep, 2020, 2:52:14 PM
    Author     : bkuma
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            try {
                String mobile = request.getParameter("mobilenumber");
                String pass = request.getParameter("pass");
                //        out.println("<script>alert(\"Login Successful\");</script>");
                String query = "SELECT * FROM authenticate WHERE mobile IN(" + mobile + ")";

                Connection conn = databaseConnection.initializeDatabase();
                Statement st = conn.createStatement();

                ResultSet rs = st.executeQuery(query);
                if (rs.first()) {

                    if (pass.equals(rs.getString("password"))) {
                        session.setAttribute("mobile", mobile);
                        session.setAttribute("user_name", rs.getString("name"));
                        session.setAttribute("user_type", rs.getString("type"));
                        session.setAttribute("email", rs.getString("email"));
                        
                        if (rs.getString("type").equals("Owner Of Property")) {

                            //if login successfully - owner
                            session.setAttribute("msg", "Login Successfully As Owner of Property!!!");
                            response.sendRedirect("redirectpage.jsp");

                        } else {
                            //if login successfully - renter

                            session.setAttribute("rstatus", rs.getString("rstatus"));
                            session.setAttribute("rcity", rs.getString("rcity"));
                            session.setAttribute("rprofession", rs.getString("rprofession"));

                            session.setAttribute("msg", "Login Successfully!!!");
                            response.sendRedirect("redirectpage.jsp");

                        }
                    } else {
                        // if passwords is incorrect
                        session.setAttribute("msg", "Invalid Password!!!");
                        response.sendRedirect("redirectpage.jsp");

                    }
                } else {
                    // if mobile number is not registered
                    session.setAttribute("msg", "Mobile Number Not Registered With Database");
                    response.sendRedirect("redirectpage.jsp");

                }
            } catch (Exception e) {
                out.print("Error Occured : " + e.toString());
            }
        %>


    </body>    
</html>
