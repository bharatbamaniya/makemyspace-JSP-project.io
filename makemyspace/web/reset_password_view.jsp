<%-- 
    Document   : reset_password_view
    Created on : 4 Nov, 2020, 6:59:26 PM
    Author     : bkuma
--%>

<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Reset Password | MakeMySpace</title>
    <link href="CSS/style_forgot_pass.css" rel="stylesheet" type="text/css"/>
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
                    <li><a href="index.jsp">Home</a></li>
                    
                    <li><a href="">Contact</a></li>
                    
                </ul>
            </nav>
            <img src="menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
      </div>
      </div>
        <div class="small-container">
        <form class="box" action="reset_password_controller.jsp" method="post">
        <h1>Reset Password</h1>
        
        <input type="text" name="newpass" Placeholder="Enter new Password" minlength="8" required>
        <input type="text" name="newpassc" Placeholder="Confirm Password" minlength="8" required>
        <input type="submit" class="bttn" value="Create Password">
        
        </form>
            </div>

                
<!------------------------------------------footer------------------------------>
      
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
