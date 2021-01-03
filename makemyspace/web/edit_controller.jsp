<%-- 
    Document   : edit_controller
    Created on : 2 Oct, 2020, 1:00:42 PM
    Author     : bkuma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/style_home_owner.css" rel="stylesheet" type="text/css"/>
        <title>Edit Processing...</title>
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
                    <li><a href="">Home</a></li>
                    <li><a href="">Account</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="logoutprocess.jsp">Log out</a></li>
                </ul>
            </nav>
            <img src="cart.png" class="cart-icon" width="30px" height="30px">
            <img src="menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
      </div>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
        <%  
            try{
            String ERid = session.getAttribute("Rid").toString();
            String ETenants= request.getParameter("Tenants");
            String EBathroom= request.getParameter("Bathroom");
            String EAvailability= request.getParameter("Availability");  
            String EAddress = request.getParameter("Address");
            String ECity = request.getParameter("City");
            String EPincode = request.getParameter("Pincode");
            String ERent = request.getParameter("Rent");
//            out.println(ERid+ETenants+EBathroom+EAvailability+EAddress+ECity+EPincode+ERent);
            Connection conn= databaseConnection.initializeDatabase();
            
        PreparedStatement smt = conn.prepareStatement("UPDATE rooms_data SET "
                + "Rent=?,Tenants=?,"
                + "Bathroom=?,Availability=?,"
                + "Address=?,City=?,"
                + "Pincode=?,Rent=? WHERE RID = ?");

        smt.setString(1, ERent);
        smt.setString(2, ETenants);
        smt.setString(3, EBathroom);
        smt.setString(4, EAvailability);
        smt.setString(5, EAddress);
        smt.setString(6, ECity);
        smt.setString(7, EPincode);
        smt.setString(8, ERent);
        smt.setString(9, ERid);

        int i = smt.executeUpdate();

        if(i == 1) {
            out.print("Query UPDATED successfully...");
        }
        else {
            out.print("Error in executing Query....");
        }
            }catch(Exception e){
            out.print("<h2 class=\"title\">EDIT PAGE :  "+e.toString()+"</h2>");
            }
            
        
        %>
        <!------------------------------------------footer------------------------------>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
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
      </div>
    </body>
</html>
