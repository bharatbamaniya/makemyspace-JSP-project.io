<%-- 
    Document   : edit_profile_renter_email
    Created on : 4 Nov, 2020, 1:09:26 PM
    Author     : bkuma
--%>


<!---------------------------------------------*-HOME MakeMySpace-*---------------------------------------------------->
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
    <meta charset="utf-8">
    <title>Edit Page | MakeMySpace</title>
    <link rel="stylesheet" href="CSS/style_profile_renter.css">
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
                    <li><a href="profile_renter.jsp">Profile</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="logoutprocess.jsp">Log out</a></li>
                </ul>
            </nav>
            <img src="menu.png" class="menu-icon" onclick="menutoggle()">
        </div>

    </div>

    <!--------------------------------add new room details -->
    <br>
    <div class="title">Edit Profile</div>

    <div class="hero">
        <div class="form-box">
            <div class="row">
                <div class="col-2">
                    <i class="fas fa-user"></i>
                </div>
                <!--            <div class="col-2-form">-->
                <form id="register" action="profile_controller.jsp" class="input-group">

                    <div class="container">
                        <div class="row">
                            <div class="col-2">
                                <label class="labl">Username</label>

                                <label class="labl">Email</label>


                            </div>
                            <div class="col-2">
                                <input type="text" placeholder="Username" name="username" value="<%= session.getAttribute("user_name").toString()%>" required/>
                                <input type="text" placeholder="Email" name="email" value="<%= session.getAttribute("email").toString()%>" required/>
                                           
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="submit-btn">Save Detail</button>
                </form>
                <!--            </div>-->
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

</body></html>
