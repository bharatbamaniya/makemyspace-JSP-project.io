<html>
    <head>
        <link href="CSS/style_home_owner.css" rel="stylesheet" type="text/css"/>
        <title>Redirecting...</title>
        <script>
            var seconds = 3;
            function displayseconds()
            {
                if (seconds !== 0)
                    seconds -= 1;
                document.getElementById("secondsdisplay").innerText = "In " + seconds + " seconds.";
            }
            setInterval(displayseconds, 1000);
            function redirectindexpage() {
                window.location = "index.jsp";
            }
            function redirecthome_o_page() {
                window.location = "home_owner.jsp";
            }
            function redirecthome_r_page() {
                window.location = "home_renter.jsp";
            }
            function redirectrenter_basic_info() {
                window.location = "renter_basic_info.jsp";
            }
            function redirectrenter_cart() {
                window.location = "cart.jsp";
            }
            function redirectverifyopt(){
               window.location = "otpverifypage.jsp";
            }
            function redirectreset_pass(){
                window.location = "reset_password_view.jsp";
            }
            function redirectchange_pass(){
                window.location = "change_password.jsp"
            }
        </script>
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
                            <li><a href="index.html">Home</a></li>
                            <li><a href="">About Us</a></li>
                        </ul>
                    </nav>
                    <img src="menu.png" class="menu-icon" onclick="menutoggle()">
                </div>
            </div>
        </div>

    <center>
        <br><br><br><br>
        <%  out.println("<div class=\"title\">");
            String msg = (String) session.getAttribute("msg");
            out.println("<a msg=\"" + msg + "\" id=\"link\"></a>");

            out.println(msg);
            out.println("</div>");
            if (msg.equals("Invalid Password!!!")
                    || msg.equals("Registered Successfully as Owner!!!")
                    || msg.equals("Mobile Number Not Registered With Database")
                    || msg.equals("mobile number already exits in database")
                    || msg.equals("Registeration Failed!!!")
                    || msg.equals("Password Reset Successfully")) {
                out.println("<script>setTimeout(\'redirectindexpage()\',2000);</script>");//redirect index page

            } else if (msg.equals("Login Successfully As Owner of Property!!!")
                    || msg.equals("Successfully Updated Profile")
                    || msg.equals("Profile Updation UnSuccessfully")
                    || msg.equals("Deleted Successfully !!!")
                    || msg.equals("Oops.....Data Deletion Failed !!!")) {
                out.println("<script>setTimeout(\'redirecthome_o_page()\',2000);</script>");//redirect home owner page

            } else if (msg.equals("Login Successfully!!!")
                    || msg.equals("Successfully Updated")
                    || msg.equals("Updation UnSuccessfully")) {
                out.println("<script>setTimeout(\'redirecthome_r_page()\',2000);</script>");//redirect home renter page

            } else if (msg.equals("Registered Successfully as Renter!!!")) {
                out.println("<script>setTimeout(\'redirectrenter_basic_info()\',2000);</script>");//redirect renter basic info

            } else if (msg.equals("Deleted Successfully.")
                    || msg.equals("Oops...Data Deletion Failed !!!")) {
                out.println("<script>setTimeout(\'redirectrenter_cart()\',2000);</script>");//redirect home owner page

            } else if (msg.equals("OTP has been sent to Your Registered Email id.")
                    || msg.equals("Invalid OTP")) {
                out.println("<script>setTimeout(\'redirectverifyopt()\',2000);</script>");//redirect verify otp page
            
            } else if (msg.equals("Password NOT Matched!!!")){
                out.println("<script>setTimeout(\'redirectreset_pass()\',2000);</script>");//redirect reset password page
            
            } else if (msg.equals("Old Password is Incorrect")
                    || msg.equals("Password NOT Matched!")){
                out.println("<script>setTimeout(\'redirectchange_pass()\',2000);</script>");//redirect change password page
            } else {
                //nothing
            }

        %>
        <h4>Redirecting...</h4><br> 
        <hr/><br>
        <div id="secondsdisplay"></div>
        <br><br><br><br>
    </center>
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
        var msg = document.getElementById("link").getAttribute("msg");
        alert(msg);
    </script>
</body>
</html>