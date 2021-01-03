<%-- 
    Document   : home_owner
    Created on : 26 Sep, 2020, 2:57:20 PM
    Author     : bkuma
--%>
<!---------------------------------------------*-HOME Renter MakeMySpace-*---------------------------------------------------->
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Home-Renter | MakeMySpace</title>
        <link rel="stylesheet" href="CSS\style_home_owner.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="header">
            <div class="container">
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
                <div class="row">
                    <div class="col-2">
                        <%  try {
                                String username = session.getAttribute("user_name").toString();
                                String usertype = session.getAttribute("user_type").toString();

                                out.println("<h1>Welcome " + username + "!</h1>");
                                out.println("<p>This is Your Renter Home Page</p>");
                            } catch (Exception e) {
                                out.print(e.toString());
                            }
                        %>

                        <a href="profile_renter.jsp" class="btn-1">About You &#8594;</a>
                    </div>

                </div>
            </div>
        </div>
        <br>
        <h2 class="title">Select Your Rooms</h2> 


        <div class="boxContainer">
            <form action="searchresult.jsp">
                <div class="row">
                    <input type="text" placeholder="Search Via Pincode" name="search" minlength="6" maxlength="8" class="search">
                    <input type="submit" value="Search"> 
                    <!--<i class="fas fa-search"></i>-->
                </div> 
            </form>
        </div>


        <!----------------------------------   card views   --------------------------->
        <div class="row">
            <%
                Connection conn = databaseConnection.initializeDatabase();
                String searched = request.getParameter("search");

                String query = "SELECT * FROM rooms_data WHERE Pincode =" + searched;
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    int RID = rs.getInt("RID");
                    String mobile = rs.getString("mobile");
                    mobile = "  " + mobile;
                    String Tenants = rs.getString("Tenants");
                    String Bathroom = rs.getString("Bathroom");
                    String Availability = rs.getString("Availability");
                    String Address = rs.getString("Address");
                    String City = rs.getString("City");
                    String Pincode = rs.getString("Pincode");
                    String Rent = rs.getString("Rent");
                    out.println("        <div class=\"card\">");
                    out.println("                <div class=\"card-image\"></div>");
                    out.println("                <div class=\"card-text\">");
                    out.println("                    <span class=\"f-t\">Tenants Preferred</span>");
                    out.println("                    <p>" + Tenants + "</p>");
                    out.println("                    <br>");
                    out.println("                    <span class=\"f-t\">Attached Bathroom</span>");
                    out.println("                    <p>" + Bathroom + "</p>");
                    out.println("                    <br>");
                    out.println("                    <span class=\"f-t\">Availability</span>");
                    out.println("                    <p>" + Availability + "</p>");
                    out.println("                    <br>");
                    out.println("                    <span class=\"f-t\">Address</span>");
                    out.println("                    <p>" + Address + "</p>");
                    out.println("                    <br>");
                    out.println("                    <span class=\"f-t\">City</span>");
                    out.println("                    <p>" + City + "</p>");
                    out.println("                    <br>");
                    out.println("                    <span class=\"f-t\">Pin code</span>");
                    out.println("                    <p>" + Pincode + "</p>");
                    out.println("                </div>");
                    out.println("                <div class=\"card-stats\">");
                    out.println("                    <div class=\"stat\">");
                    out.println("                       <h2>&#x20B9; " + Rent + "<small>/Mon.</small></h2>");
                    out.println("                    </div>");
                    out.println("                    <div class=\"stat border\">");
                    out.println("                       <i class=\"fas fa-mobile\">" + mobile + "</i>");
                    out.println("                              ");
                    out.println("                    </div>");
                    out.println("                    <div class=\"stat\">");
                    out.println("                        <i class=\"fas fa-trash\"></i> ");
                    out.println("                    </div>");
                    out.println("                </div>");
                    out.println("        </div>          ");

                }
            %>
        </div>


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

    </body>
</html>
