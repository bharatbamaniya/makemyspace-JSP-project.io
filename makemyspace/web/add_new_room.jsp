<%-- 
    Document   : add_new_room
    Created on : 30 Sep, 2020, 4:41:16 PM
    Author     : bkuma
--%>
<!---------------------------------------------*-HOME MakeMySpace-*---------------------------------------------------->
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Home | MakeMySpace</title>
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
        <div class="title">Add New Room Details</div>
        <div class="small-container"> 
            <div class="row">
                <div class="col-2">
                    <img src="user-1.png" alt="">
                </div>
                <div class="col-2-form">  
                    <form action="add_new_controller.jsp" class="add-new-room-model" method="post">
                        <div class="form-input">
                            <div class="row">
                            <label>Tenants Preferred : </label>
                            <select class="input" name="Tenanats">
                                    <option>Single</option>
                                    <option>Married</option>
                                    <option>None</option>
                            </select> <br>
                            </div>
                            <div class="row">
                            <label>Bathroom : </label>
                            <select class="input" name="Bathroom">
                                    <option>Yes</option>
                                    <option>No</option>
                            </select><br>
                            </div>
                            <div class="row">
                            <label>Availability : </label>
                            <select class="input" name="Availability">
                                    <option>Y</option>
                                    <option>N</option>
                            </select><br>
                            </div>
                            <input class="input" type="text" name="Address"  required Placeholder="Address">
                            <input class="input" type="text" name="City" required Placeholder="City">
                            <input class="input" type="text" name="Pincode" required Placeholder="Pincode" maxlength="6" minlength="6">
                            <input class="input" type="text" name="Rent" required Placeholder="Rent : Rs/Month">
                        </div>   
                        <div class="row">
                            <input type="submit" class="btn" value="Save Detail">
                        </div>

                    </form>
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
