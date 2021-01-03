<%-- 
    Document   : home_owner
    Created on : 26 Sep, 2020, 2:57:20 PM
    Author     : bkuma
--%>
<%@page import="java.util.Calendar"%>
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
    <body onload="startTime()">
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

                        <a href="profile_renter.jsp" class="btn">About You &#8594;</a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="row-time">
                <div>
                    Time :
                </div>
                <div id="date" class="date-box">

                </div>


            </div>
            <!--            <div class="date-box">
            <% //  out.println("You Logged in at : ");
                //Calendar c1 = Calendar.getInstance();

                //out.println(c1.getTime());%>
        </div>-->
        </div>

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
                try {
                    int c = 0;
                    String rcity, rstatus;

                    String mobil = (String) session.getAttribute("mobile");
                    Connection conn = databaseConnection.initializeDatabase();
//                    out.println(mobil);
                    String pre_query = "SELECT rcity,rstatus FROM authenticate WHERE mobile=" + mobil;

                    Statement p = conn.createStatement();
                    ResultSet r = p.executeQuery(pre_query);

                    while (r.next()) {
                        rcity = r.getString("rcity");
                        rstatus = r.getString("rstatus");

                        String query = "SELECT * FROM rooms_data WHERE Availability = 'Y'";

                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) {
                            int RID = rs.getInt("RID");
                            String mobile = rs.getString("mobile");
                            String Tenants = rs.getString("Tenants");
                            String Bathroom = rs.getString("Bathroom");
                            String Availability = rs.getString("Availability");
                            String Address = rs.getString("Address");
                            String City = rs.getString("City");
                            String Pincode = rs.getString("Pincode");
                            String Rent = rs.getString("Rent");
//                            out.println(Tenants);
                            if ((Tenants.equals("None") || Tenants.equals("none") || Tenants.equals(rstatus))
                                    && City.equals(rcity)) {
                                c++;
            %>
            <div class="card">
                <div class="card-image"></div>
                <div class="card-text">
                    <span class="f-t">Tenants Preferred</span>
                    <p><%=Tenants%><%out.println(Tenants);%></p>
                    <br>
                    <span class="f-t">Bathroom</span>
                    <p><%=Bathroom%></p>
                    <br>
                    <span class="f-t">Availability</span>
                    <p><%=Availability%></p>
                    <br>
                    <span class="f-t">Address</span>
                    <p><%=Address%></p>
                    <br>
                    <span class="f-t">City</span>
                    <p><%=City%></p>
                    <br>
                    <span class="f-t">Pin code</span>
                    <p><%=Pincode%></p>
                </div>
                <div class="card-stats">
                    <div class="stat">
                        <h2><%=Rent%><p></p>
                        </h2>
                    </div>

                </div>
                <div id="cart-btn" class="card-bottom">
                    <!--                    <div class="card-btn">
                                            <a href="cart_controller.jsp?RID=<%=RID%>"><i id="edit" class="fas fa-pen"></i></a>
                    
                                        </div>-->
                    <div class="card-btn">

                        <a href="cart_controller.jsp?RID=<%=RID%>"><i id="edit" class="fas fa-cart-plus"></i></a>
                    </div>
                </div>
            </div>
            <%                    }
                    }
                }
                    if (c == 0) {
                    out.println("<div class=\"title\">");
                    out.print("No Rooms Available As your Specification");
                    out.println("</div>");
            
                    }
            
                } catch (Exception e) {
                    out.println(e.toString());
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
        <script>
            function startTime() {
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('date').innerHTML = h + ":" + m + ":" + s;
                var t = setTimeout(startTime, 500);
            }

            function checkTime(i) {
                if (i < 10) {
                    i = "0" + i; // add zero in front of numbers < 10
                }

                return i;
            }

        </script>
    </body>
</html>
