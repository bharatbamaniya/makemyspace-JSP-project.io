<%-- 
    Document   : cart
    Created on : 31 Oct, 2020, 7:27:17 PM
    Author     : bkuma
--%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title>Cart | Renter | MakeMySpace</title>
        <link rel="stylesheet" href="CSS/style_cart.css">
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
                        <li><a href="">Profile</a></li>
                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="">Contact Us</a></li>
                        <li><a href="logoutprocess.jsp">Log out</a></li>
                    </ul>
                </nav>

                <img src="menu.png" class="menu-icon" onclick="menutoggle()">
            </div>

        </div>

        <h2 class="title">Your Cart</h2>

        <%  try {
                int count = 0;
                String mobil = (String) session.getAttribute("mobile");
//                out.println(mobil);
                Connection conn = databaseConnection.initializeDatabase();
                String pre_query = "SELECT RID FROM cart WHERE mobile=" + mobil;
                String r_query = "SELECT * FROM rooms_data WHERE RID =";
                String o_query = "SELECT * FROM authenticate WHERE mobile =";
                Statement p = conn.createStatement();
                ResultSet r = p.executeQuery(pre_query);

                out.println("<div class=\"container\">");

                while (r.next()) {
                    

                    String rid = r.getString("RID");
//                    out.println(rid);
                    Statement pr = conn.createStatement();
                    ResultSet rq = pr.executeQuery(r_query + rid);
                    while (rq.next()) {
                       
                        String mobile = rq.getString("mobile");
                        String Tenants = rq.getString("Tenants");
                        String Bathroom = rq.getString("Bathroom");
                        String Availability = rq.getString("Availability");
                        String Address = rq.getString("Address");
                        String City = rq.getString("City");
                        String Pincode = rq.getString("Pincode");
                        String Rent = rq.getString("Rent");
//                        out.println(mobile + Tenants + Bathroom + Availability + Address + City + Pincode + Rent);
                        count++;
//                    out.print(count);

                        out.println("            <div class=\"row\">");
                        out.println("                <div class=\"count\">");
                        out.println("                    <label>#" + count + "</label>");
                        out.println("                </div>");
                        
                        
                        out.println("<div class=\"card\">");
                        out.println("                <div class=\"row\">");
                        out.println("                    <div class=\"card-text\">");
                        out.println("                        <div class=\"row\">");
                        out.println("                            <div class=\"container\">");
                        out.println("                                <span class=\"f-t\">Tenants Preferred</span>");
                        out.println("                                <p>" + Tenants + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">Bathroom</span>");
                        out.println("                                <p>" + Bathroom + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">Availability</span>");
                        out.println("                                <p>" + Availability + "</p>");
                        out.println("                            </div>");

                        out.println("                            <div class=\"container\">");
                        out.println("                                <span class=\"f-t\">Address</span>");
                        out.println("                                <p>" + Address + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">City</span>");
                        out.println("                                <p>" + City + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">Pincode</span>");
                        out.println("                                <p>" + Pincode + "</p>");
//                        out.println("                                <br>");
                        out.println("                            </div>");

                        out.println("                            <div class=\"container\">");
                        out.println("                                <span class=\"f-t\">Rent</span>");
                        out.println("                                <p>" + Rent + "</p>");
                        out.println("                            </div>");
                        
                        out.println("                        </div>");
                        out.println("                    </div>");

                        out.println("                    <div class=\"vertical-line\"></div>");

                        Statement po = conn.createStatement();
                        ResultSet rqo = po.executeQuery(o_query + mobile);
                        while (rqo.next()) {
                            String oname = rqo.getString("name");
//                            out.println(mobile + oname);
                            out.println("                    <div class=\"card-text\">");
                            out.println("                        <br>");
                            out.println("                        <span class=\"f-t\">Owner</span>");
                            out.println("                        <p>" + oname + "</p>");
                            out.println("                        <br>");
                            out.println("                        <span class=\"f-t\">Contact</span>");
                            out.println("                        <p>" + mobile + "</p>");
                            out.println("                        <br>");
                            out.println("                    </div>");
                        }
                        out.println("                </div>");
                        out.println("                            <div class=\"card-bottom\">");
                        out.println("                               <div class=\"card-btn\">");
                        out.println("                                   <a href=\"intermediate_controller.jsp?RID="+rid +"\"><i id=\"del\" class=\"fas fa-trash\"></i></a>");

                        out.println("                               </div>");
                        out.println("                            </div>");
                        out.println("</div>");

                    }
                    out.println("</div>");
                }
                if (count == 0) {
                    out.println("<div class=\"title\">");
                    out.print("No Rooms in Cart");
                    out.println("</div>");
            
                    }
                out.println("</div>");
            } catch (Exception e) {
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
      
        <!--  footer   -->
        <div class="footer">
            <div class="container-footer">
                <div class="row">

                    <div class="footer-col-2">
                        <img src="logo-white.png">
                        <p>Our Purposr is to Sustainably make the pleasure and benefits of sports accessible to the many.</p>
                    </div>

                </div>
                <hr>
                <p class="copyright">&copy; 2020 Copyright - MakeMySpace</p>
            </div>
        </div>
        <script>
            var MenuItems = document.getElementById("Menuitems");

            MenuItems.style.maxHeight = "0px";

            function menutoggle() {
                if (MenuItems.style.maxHeight == "0px") {
                    MenuItems.style.maxHeight = "200px";
                } else {
                    MenuItems.style.maxHeight = "0px";
                }
            }
            window.onscroll = function () {
                myFunction()
            };

        </script>
    </body>

</html>
