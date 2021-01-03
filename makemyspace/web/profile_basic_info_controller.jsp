<%-- 
    Document   : profile_basic_info_controller
    Created on : 4 Nov, 2020, 4:36:31 PM
    Author     : bkuma
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirecting...</title>
    </head>
    <body>
        <%  try {
                String rstatus = request.getParameter("rstatus");
                String rcity = request.getParameter("rcity");
                String rprofession = request.getParameter("rprofession");

                String mobile = (String) session.getAttribute("mobile");
                
                Connection conn = databaseConnection.initializeDatabase();
                PreparedStatement smt = conn.prepareStatement("UPDATE authenticate SET "
                        + "rstatus=?,rcity=?,rprofession=? WHERE mobile = ?");

                smt.setString(1, rstatus);
                smt.setString(2, rcity);
                smt.setString(3, rprofession);
                smt.setString(4, mobile);

                int i = smt.executeUpdate();

                if (i == 1) {
                    session.setAttribute("msg", "Successfully Updated");
                    response.sendRedirect("redirectpage.jsp");
//               out.println("<a msg=\""+i+"\" id=\"out\"></a>");
                } else {
                    session.setAttribute("msg", "Updation UnSuccessfully");
                    response.sendRedirect("redirectpage.jsp");
//               out.println("<a msg=\""+i+"\" id=\"out\"></a>");
                }
            } catch (Exception e) {
//            out.println("<a msg=\""+e.toString()+"\" id=\"error\"></a>");
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
    </body>
</html>
