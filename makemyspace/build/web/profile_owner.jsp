<%-- 
    Document   : profile_owner
    Created on : 4 Nov, 2020, 5:22:27 PM
    Author     : bkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/style_profile_renter.css" rel="stylesheet" type="text/css"/>
        <title>Profile Owner</title>
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
                        <li><a href="profile_owner.jsp">Profile</a></li>
                    
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
            <div class="row">
                <div class="form-box">
                    <div class="row">
                        <div class="col-2">
                            <i class="fas fa-user"></i>
                        </div>
                        <!--            <div class="col-2-form">-->
                        <form id="register" action="edit_profile_renter_email.jsp" class="input-group">

                            <div class="container">
                                <div class="row">
                                    <div class="col-2">
                                        <label class="labl">Username</label>

                                        <label class="labl">Email</label>



                                    </div>
                                    <div class="col-2">
                                        <%
                                            try {
                                        %>
                                        <input type="text" class="labl" value="<%=session.getAttribute("user_name").toString()%>" readonly</input>

                                        <input type="text" class="labl" value="<%=session.getAttribute("email").toString()%> " readonly</input>

                                    </div>
                                </div>
                            </div>
                                        <%
                                            }catch(Exception e){
                                            session.setAttribute("msg", e.toString());
                                            response.sendRedirect("redirectpage.jsp");
                                            }
                                        %>
                            <button type="submit" class="submit-btn">Edit Details</button>
                            <a href="change_password.jsp" class="submit-btn">Change Password</a>
                        </form>
                        <!--            </div>-->
                    </div>
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

    </body>
</html>
