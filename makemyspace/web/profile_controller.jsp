<%-- 
    Document   : profile_controller
    Created on : 4 Nov, 2020, 3:48:09 PM
    Author     : bkuma
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirecting...</title>
    </head>
    <body>
        <% try {
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                
                String mobile = (String) session.getAttribute("mobile");
                String type = (String) session.getAttribute("user_type");
                Connection conn = databaseConnection.initializeDatabase();

                PreparedStatement smt = conn.prepareStatement("UPDATE authenticate SET "
                        + "name=?,email=? WHERE mobile = ?");

                smt.setString(1, username);
                smt.setString(2, email);
                smt.setString(3, mobile);

                int i = smt.executeUpdate();

                if (i == 1) {
                    if(type.equals("Owner Of Property"))
                    session.setAttribute("msg", "Successfully Updated Profile");
                    else
                    session.setAttribute("msg", "Successfully Updated");
                    response.sendRedirect("redirectpage.jsp");
//               out.println("<a msg=\""+i+"\" id=\"out\"></a>");
                } else {
                    if(type.equals("Owner Of Property"))
                    session.setAttribute("msg", "Profile Updation UnSuccessfully");
                    else
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
        <script>
//            var error = document.getElementById("error").getAttribute("msg");
//            var out = document.getElementById("out").getAttribute("msg");
//            if(out){
//                alert("successfully updated");
//            }else{
//                alert("Data Updation UnSuccessful...");
//            }
//            if(!out.localeCompare("null")){
//                alert(out);
//            }

        </script>
    </body>
</html>
