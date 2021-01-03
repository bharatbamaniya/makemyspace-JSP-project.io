<%-- 
    Document   : add_new_room
    Created on : 30 Sep, 2020, 4:41:16 PM
    Author     : bkuma
--%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!---------------------------------------------*-HOME MakeMySpace-*---------------------------------------------------->
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Edit Room Detail | MakeMySpace</title>
        <link rel="stylesheet" href="CSS\add_new_room.css">
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
                        <li><a href="home_owner.jsp">Home</a></li>
                        <li><a href="">Profile</a></li>
                        <li><a href="">Contact Us</a></li>
                        <li><a href="logoutprocess.jsp">Log out</a></li>
                    </ul>
                </nav>
                <img src="menu.png" class="menu-icon" onclick="menutoggle()">
            </div>

        </div> 

        <!--------------------------------add new room details -->
        <br>
        <div class="title">Edit Room Details</div>
        <div class="small-container"> 
            <div class="row">
                <div class="col-2">
                    <img src="user-1.png" alt="">
                </div>
                <%
                    try {
                        String Rid = request.getParameter("RID");
                        session.setAttribute("Rid", Rid);

                        Connection conn = databaseConnection.initializeDatabase();
                        String query = "SELECT * FROM rooms_data WHERE RID =" + Rid;
                        out.println(Rid);
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery(query);
                        while (rs.next()) {

                            String Tenants = rs.getString("Tenants");
                            out.println(Tenants);
                            String Bathroom = rs.getString("Bathroom");
                            String Availability = rs.getString("Availability");
                            String Address = rs.getString("Address");
                            String City = rs.getString("City");
                            String Pincode = rs.getString("Pincode");
                            String Rent = rs.getString("Rent");

                            out.println("<div class=\"col-2-form\">  ");
                            out.println("                <form action=\"Controller/edit_controller.jsp\" class=\"add-new-room-model\" method=\"post\">");
                            out.println("                    <div class=\"form-input\">");
                            out.println("                    <input type=\"text\" name=\"Tenants\" value=" + Tenants + " Placeholder=\"Tenants Preferred (Single/Married)\">");
                            out.println("                    <input type=\"text\" name=\"Bathroom\" value=" + Bathroom + " Placeholder=\"Bathroom\">");
                            out.println("                    <input type=\"text\" name=\"Availability\" value=" + Availability + " Placeholder=\"Availability (Y/N)\">");
                            out.println("                    <input type=\"text\" name=\"Address\" value=" + Address + " Placeholder=\"Address\">");
                            out.println("                    <input type=\"text\" name=\"City\" value=" + City + " Placeholder=\"City\">");
                            out.println("                    <input type=\"text\" name=\"Pincode\" value=" + Pincode + " Placeholder=\"Pincode\" maxlength=\"6\" minlength=\"6\">");
                            out.println("                    <input type=\"text\" name=\"Rent\" value=" + Rent + " Placeholder=\"Rent : Rs/Month\">");
                            out.println("                    </div>  ");
                            out.println("                    <div class=\"row\">");
                            out.println("                        <input type=\"submit\" class=\"button\" value=\"Update Detail\">");
                            out.println("                    </div>");
                            out.println("               ");
                            out.println("                </form>");
                            out.println("            </div>");

                        }
                    } catch (Exception e) {
                        out.print("EDIT PAGE :  " + e.toString());
                    }
                %>
            </div>
        </div>
        <br>


        <!--	</div>-->
        <!--</div>-->
        <!------------------------------------------footer------------------------------>
        <br>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download our Apps</h3>
                        <p>Download App for Android and ios mobile phone.</p>
                        <div class="app-logo">
                            <img src="play-store.png">
                            <img src="app-store.png">
                        </div>
                    </div>

                    <div class="footer-col-2">
                        <img src="logo-white.png">
                        <p>Our Purposr is to Sustainably make the pleasure and benefits of sports accessible to the many.</p>
                    </div>

                    <div class="footer-col-3">
                        <h3>Useful links</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>
                    <div class="footer-col-4">
                        <h3>Follow us</h3>
                        <ul>
                            <li>Facebook</li>
                            <li>Twitter</li>
                            <li>Instagram</li>
                            <li>YouTube</li>
                        </ul>
                    </div>
                </div>
                <hr>
                <p class="copyright">&copy; 2020 Copyright - MakeMySpace</p>
            </div>
        </div>



        <!------------------------------------------------  JS script   ---------------->
        <!-- <script src="myscripts.js"></script>-->
    </body>
</html>
