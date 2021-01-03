<%-- 
    Document   : renter_basic_controller
    Created on : 23 Oct, 2020, 6:12:50 PM
    Author     : bkuma
--%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controller...</title>
    </head>
    <body>
        <% try {
                String rstatus = request.getParameter("rstatus");
                String rcity = request.getParameter("rcity");
                String rprofession = request.getParameter("rprofession");
                
               
                session.setAttribute("rstatus", rstatus);
                session.setAttribute("rcity", rcity);
                session.setAttribute("rprofession", rprofession);
                
                String mobile= (String) session.getAttribute("mobile");
                String name= (String) session.getAttribute("name");
                String rpass= (String) session.getAttribute("rpass");
                String rway= (String) session.getAttribute("rway");
                String email= (String) session.getAttribute("email");
//                out.println(rstatus+rcity+rprofession+mobile+name+rpass+rway);
//                String query = "UPDATE authenticate SET rstatus =?, rcity =?, rprofession =? WHERE authenticate.mobile =?";
//                String query = "UPDATE `authenticate` SET `rcity` = 'sirohi' WHERE `authenticate`.`mobile` = '9888888877'";
                
                Connection conn = databaseConnection.initializeDatabase();
                PreparedStatement p =conn.prepareStatement("INSERT INTO authenticate "
                        + "(name,mobile,password,type,email,rstatus,rcity,rprofession)"
                        + " VALUES (?,?,?,?,?,?,?,?)");
                
                p.setString(1, name);
                p.setString(2, mobile);
                p.setString(3, rpass);
                p.setString(4, rway);
                p.setString(5, email);
                p.setString(6, rstatus);
                p.setString(7, rcity);
                p.setString(8, rprofession);
//                Statement st = conn.createStatement();
                if(p.executeUpdate()==1)
                    response.sendRedirect("home_renter.jsp");
                else{
                    session.setAttribute("msg", "Registration failed!!!");
                    response.sendRedirect("redirectpage.jsp");
                }
//                    session.setAttribute("msg", "Renter Basic data updation Unsuccessful...");
//                    response.sendRedirect("redirectpage.jsp");
                
                
            } catch (Exception e) {
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
    </body>
</html>
