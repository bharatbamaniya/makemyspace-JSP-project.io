<%-- 
    Document   : edit_profile_renter
    Created on : 4 Nov, 2020, 12:48:34 PM
    Author     : bkuma
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!---------------------------------------------*-HOME MakeMySpace-*---------------------------------------------------->
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
    <meta charset="utf-8">
    <title>Home | MakeMySpace</title>
    <link rel="stylesheet" href="CSS/style_profile_renter.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

</head>

<body>
    <div class="header">
        <div class="navbar">
            <div class="logo">
                <img src="logo.png" width="125px">
            </div>
            <nav>
                <ul id="Menuitems">
                    <li><a href="home_renter.jsp">Home</a></li>
                    <li><a href="profile_renter.jsp">Profile</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="logoutprocess.jsp">Log out</a></li>
                </ul>
            </nav>
            <img src="menu.png" class="menu-icon" onclick="menutoggle()">
        </div>

    </div>

    <!--------------------------------add new room details -->
    <br>
    <div class="title">Profile</div>

    <div class="hero">
        <div class="form-box">
            <div class="row">
                <div class="col-2">
                    <i class="fas fa-user"></i>
                </div>
                <!--            <div class="col-2-form">-->
                <form id="register" action="profile_basic_info_controller.jsp" class="input-group">

                    <div class="container">
                        <div class="row">
                            <div class="col-2">
                                <label class="labl">Marital status</label>

                                <label class="labl">Select City</label>

                                <label class="labl">Profession</label>

                            </div>
                            <div class="col-2">
                                  <select class="select" name="rstatus">
                                    <option>Single</option>
                                    <option>Married</option>
                                    
                                </select>
                                <select class="select" name="rcity" >"
                                    <%
                                        try {
                                            String user_name = request.getParameter("name");
                                            session.setAttribute("user_name", user_name);
                                            String query = "SELECT DISTINCT City FROM rooms_data";
                                        
                                            Connection conn = databaseConnection.initializeDatabase();
                                            Statement st = conn.createStatement();
                                            String s;
                                            ResultSet rs = st.executeQuery(query);
                                            while (rs.next()) {
                                                s = rs.getString("City");
                                                
                                                out.println("<option>" + s + "</option>");
                                            }
                                        } catch (Exception e) {
                                            session.setAttribute("msg", e.toString());
                                            response.sendRedirect("redirectpage.jsp");
                                        }
                                    %>
                                </select>

                                <select class="select" name="rprofession">
                                    <option>Student</option>
                                    <option>Pursuing Job</option>
                                    <option>None of these</option>
                                </select>
                                    
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="submit-btn">Save Detail</button>
                </form>
                <!--            </div>-->
            </div>
        </div>
    </div>
    <br>





    <!------------------------------------------footer------------------------------>
    <br>
    <div class="footer">
        <div class="container">
            <div class="row">

                <div class="footer-col-2">

                </div>
                <div class="footer-col-2">
                    <img src="logo.png">
                </div>
                <div class="vl"></div>
                <div class="footer-col-2">
                    <p>Our Purposr is to Sustainably make the pleasure and benefits of rooms accessible to the many.</p>
                </div>
                <div class="footer-col-2">

                </div>
            </div>
            <br>
            <hr>
            <p class="copyright">&copy; 2020 Copyright - MakeMySpace</p>
        </div>
    </div>

</body></html>

