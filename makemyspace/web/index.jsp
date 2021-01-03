<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login | Register - MakeMySpace</title>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" />

    </head>

    <body onload="loderfunction()">

        <div id="loading"></div>

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
                </div>
            </div>
        </div>

        <div class="hero">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                    <button id="lg" type="button" class="toggle-btn" onclick="login()">Log In</button>
                    <button id="rg" type="button" class="toggle-btn" onclick="register()">Register</button>
                </div>
                <form id="login" class="input-group" action="logincheck.jsp">
                    <br>
                    
                    <input type="tel" class="input-field" placeholder="Mobile Number" name="mobilenumber" minlength="10" maxlength="10" required>
                    <input type="password" class="input-field" placeholder="Password" name="pass" minlength="8" id="password" required>
                    <span>
                        <i class="fas fa-eye" id="eye" onclick="toggle()">
                        </i>
                    </span>
                    <br>
                    <br>
                    <br>
                    <button type="submit" class="submit-btn">Log in</button>
                    <div class="text-">
                        <small>New Here ? Please Register</small>
                        <br>
                        <br>
                        <small>Forgot Password ? </small><a href="forgot_pass.jsp">Click Here</a>
                    </div>
                </form>

                <form id="register" class="input-group" action="registercheck.jsp">
                    <select class="select" name="way">
                        <option>Owner Of Property</option>
                        <option>Renter</option>
                    </select>
                    <input type="text" class="input-field" placeholder="Username" name="name" required>
                    <input type="tel" class="input-field" placeholder="Mobile Number" name="mobilenumber" minlength="10" maxlength="10" required>
                    <input type="password" class="input-field" placeholder="Password" name="password" minlength="8" id="password" required>
                    
                    <span>
                        <i class="fas fa-eye" id="eye" onclick="toggle()">
                        </i>
                    </span>
                    <input type="email" class="input-field" placeholder="Email" name="email" required>
                    <button type="submit" class="submit-btn">Register</button>
                </form>
            </div>
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
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            var lg = document.getElementById("lg");
            var rg = document.getElementById("rg");

            function register() {
                rg.style.color = "#fff";
                lg.style.color = "initial";
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }

            function login() {
                lg.style.color = "#fff";
                rg.style.color = "initial";
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }
            //            var session =<%= session.getAttribute("msg")%>
            //            alert(session);
            var state = false;

            function toggle() {
                if (state) {
                    document.getElementById("password").setAttribute("type", "password");
                    document.getElementById("eye").style.color = '#7a797e';
                    state = false;
                } else {
                    document.getElementById("password").setAttribute("type", "text");
                    document.getElementById("eye").style.color = '#5887ef';
                    state = true;
                }
            }

            var preloader = document.getElementById('loading');

            function loderfunction() {
                preloader.style.display = 'none';
            }
      
        </script>

    </body></html>