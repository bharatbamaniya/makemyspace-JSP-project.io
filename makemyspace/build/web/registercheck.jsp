<%-- 
    Document   : registercheck
    Created on : 26 Sep, 2020, 5:27:02 PM
    Author     : bkuma
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseConnection.databaseConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirecting...</title>
    </head>
    <body>
        <%
            try {

                String name = request.getParameter("name");
                String mobilenumber = request.getParameter("mobilenumber");
                String pass = request.getParameter("password");
                String way = request.getParameter("way");
                String email = request.getParameter("email");

                session.setAttribute("mobile", mobilenumber);
                session.setAttribute("name", name);
                session.setAttribute("rpass", pass);
                session.setAttribute("rway", way);
                session.setAttribute("email",email);
                
                //out.print(name+mobilenumber+pass+way);
                Connection conn = databaseConnection.initializeDatabase();

                Statement st = conn.createStatement();
                ResultSet r = st.executeQuery("SELECT mobile FROM authenticate WHERE mobile IN(" + mobilenumber + ")");
                if (r.first()) {
                    session.setAttribute("msg", "mobile number already exits in database");
                    response.sendRedirect("redirectpage.jsp");
                } else {
                    if (way.equals("Owner Of Property")) {

                        PreparedStatement p = conn.prepareStatement("INSERT INTO authenticate (name,mobile,password,type,email) VALUES (?,?,?,?,?)");
                        p.setString(1, name);
                        p.setString(2, mobilenumber);
                        p.setString(3, pass);
                        p.setString(4, way);
                        p.setString(5, email);

                        if (p.executeUpdate() == 1) {
                            session.setAttribute("mobile", mobilenumber);
//                        if (way.equals("Owner Of Property")) {
                            session.setAttribute("msg", "Registered Successfully as Owner!!!");
                            response.sendRedirect("redirectpage.jsp");
                        } else {
                            session.setAttribute("msg", "Registeration Failed!!!");
//                            session.setAttribute("msg", "Registered Successfully as Renter!!!");
                            response.sendRedirect("redirectpage.jsp");
                        }
                    } else {
                        //for renter registration
                        response.sendRedirect("renter_basic_info.jsp");
                    }
                }

            } catch (Exception e) {
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
    </body>
</html>