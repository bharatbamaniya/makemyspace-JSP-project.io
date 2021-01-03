<%-- 
    Document   : delete_room_detail
    Created on : 4 Oct, 2020, 10:08:06 AM
    Author     : bkuma
--%>

<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/style_home_owner.css" rel="stylesheet" type="text/css"/>
        <title>Deletion process...</title>
    </head>
    <body>
        <!--         <div class="header">
              <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <img src="logo.png" width="125px">
                    </div>
                    <nav>
                        <ul id="Menuitems">
                            <li><a href="home_owner.jsp">Home</a></li>
                            <li><a href="">Account</a></li>
                            <li><a href="">Contact</a></li>
                            <li><a href="logoutprocess.jsp">Log out</a></li>
                        </ul>
                    </nav>
                    <img src="cart.png" class="cart-icon" width="30px" height="30px">
                    <img src="menu.png" class="menu-icon" onclick="menutoggle()">
                </div>
              </div>
              </div>-->


        <%
            try {
                String rid = (String) session.getAttribute("RID");
                String type = (String) session.getAttribute("user_type");
                int i;
                String query = "DELETE from rooms_data WHERE RID =" + rid;
                String query1 = "DELETE from cart WHERE RID ="+rid;
                Connection conn = databaseConnection.initializeDatabase();
                Statement st = conn.createStatement();
                if(type.equals("Owner Of Property"))
                    i = st.executeUpdate(query);
                else
                    i = st.executeUpdate(query1);
              
                out.println("<a id=\"link\" type=\"" + type + "\" ivalue=\""+i+"\"></a>");
                if (type.equals("Owner Of Property")) {
                    if (i == 1) {
                        session.setAttribute("msg", "Deleted Successfully !!!"+rid+type+i);
                        response.sendRedirect("redirectpage.jsp");
                    } else {

                        session.setAttribute("msg", "Oops.....Data Deletion Failed !!!"+rid+type+i);
                        response.sendRedirect("redirectpage.jsp");
                    }
                } else {
                    if (i == 1) {
                        session.setAttribute("msg", "Deleted Successfully."+rid+type+i);
                        response.sendRedirect("redirectpage.jsp");
                    } else {

                        session.setAttribute("msg", "Oops...Data Deletion Failed !!!"+rid+type+i);
                        response.sendRedirect("redirectpage.jsp");
                    }
                }
            } catch (Exception e) {

                session.setAttribute("msg", "Error Occured : " + e.toString());
                response.sendRedirect("redirectpage.jsp");
            }


        %>



        <!--       <div class="footer">
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
                            <img src="logo.png">
                            <p>Our Purposr is to Sustainably make the pleasure and benefits of rooms accessible to the many.</p>
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
              </div>-->
        <script>
            var type = document.getElementById("link").getAttribute("type");
            var i = document.getElementById("link").getAttribute("ivalue");
            var n = type.localeCompare("Owner Of Property");
            
//                if (i) {
//                    window.alert("Room Deleted Successfully.");
//                    if(n === 0){
//                        window.location = "home_owner.jsp";
//                    }
//                    else{
//                        window.location = "cart.jsp";
//                    }
//                } else {
//                    window.alert("Room Deletion UnSuccessful...");
//                    if (n === 0) {
//                        window.location = "home_owner.jsp";//for redirect back to home_owner
//                    } else
//                        window.location = "cart.jsp"; // for redirect back to cart
//                }
            
        </script>
    </body>
</html>
