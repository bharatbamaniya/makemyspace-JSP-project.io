<%-- 
    Document   : renter_basic_info
    Created on : 23 Oct, 2020, 4:37:59 PM
    Author     : bkuma
--%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Basic-info-renter - MakeMySpace</title>
        <link href="CSS/style_basic_info.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="hero">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-btn" onclick="login()">Let us know you more...</button>
                    <!--                <button type="button" class="toggle-btn" onclick="register()">Register</button>-->
                </div>
                <!--
                            <form id="login" class="input-group">
                                <input type="text" class="input-field" placeholder="Username" required>
                                <input type="password" class="input-field" placeholder="Password" id="password" required>
                                <span>
                                <i class="fa fa-eye" id="eye" onclick="toggle()">
                                </i>
                                </span>
                                <br>
                                <br>
                                <br>
                                <button type="submit" class="submit-btn">Log in</button>
                                <div class="text-">
                                New Here ? Please Register
                                <br>
                                <br>
                                Forgot Password ?<a href="#">Click Here</a>
                                    </div>
                            </form>
                -->

                <form id="register" action="renter_basic_controller.jsp" class="input-group">

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

                    <button type="submit" class="submit-btn">Submit</button>
                </form>
            </div>
        </div>

  
    </body>
</html>
