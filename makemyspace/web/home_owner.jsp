<%-- 
    Document   : home_owner
    Created on : 26 Sep, 2020, 2:57:20 PM
    Author     : bkuma
--%>
<%@page import="java.util.Date"%>
<!---------------------------------------------*-HOME MakeMySpace-*---------------------------------------------------->
<!DOCTYPE html>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Home | MakeMySpace</title>
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
                            <li><a href="home_owner.jsp">Home</a></li>
                            <li><a href="profile_owner.jsp">Profile</a></li>
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
                                out.println("<p>This is Your OWNER Home Page</p>");
                            } catch (Exception e) {
                                out.print(e.toString());
                            }
                        %>

                        <a href="profile_owner.jsp" class="btn" >About You &#8594;</a>
                        
                    </div>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="row-time">
                <div>
                    Time :
                </div>
                <div id="date" class="date-box">

                </div>


            </div>
            <div class="date-box">
                <% //out.println("You Logged in at : ");
                    Date c1 = new Date();
                    out.println(c1);
                %>
            </div>
        </div>

        <h2 class="title">Your Rooms</h2> 
        <div class="row">
            <a href="add_new_room.jsp" class="btn" >Add a New Room</a>
        </div>


        <!----------------------------------   card views   --------------------------->
        <div class="row">
            <%  try {
                    String mobilenumber = session.getAttribute("mobile").toString();
                    Connection conn = databaseConnection.initializeDatabase();
                    String query = "SELECT * FROM rooms_data WHERE mobile=" + mobilenumber;
                    Statement st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int RID = rs.getInt("RID");
                        String Tenants = rs.getString("Tenants");
                        String Bathroom = rs.getString("Bathroom");
                        String Availability = rs.getString("Availability");
                        String Address = rs.getString("Address");
                        String City = rs.getString("City");
                        String Pincode = rs.getString("Pincode");
                        String Rent = rs.getString("Rent");

            %>

            <div class="card">
                <div class="card-image"></div>
                <div class="card-text">
                    <span class="f-t">Tenants Preferred</span>
                    <p><%=Tenants%></p>
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

                <div class="card-bottom">
                    <div class="card-btn">
                        <a href="edit_room_detail.jsp?RID=<%=RID%>"><i id="edit" class="fas fa-pen"></i></a>

                    </div>

                    <div class="card-btn">

                        <a href="intermediate_controller.jsp?RID=<%=RID%>">
                            <i id="del" class="fas fa-trash"></i></a>
                    </div>
                </div>
            </div>
            <%                    }

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
                <p class="copyright">&copy; 2020 Copyright | MakeMySpace</p>
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
            var del = document.getElementById("del");
            var link = document.getElementById("link").href;
            function alert_confirm() {
                alert(" href : " + link);
            }
        </script>
    </body>
</html>
