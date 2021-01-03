<%-- 
    Document   : register
    Created on : 26 Sep, 2020, 3:01:50 PM
    Author     : bkumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <title>Register | MakeMySpace</title>
    </head>
    <body>
        <div>Welcome to MakeMySpace</div>
        <div class="login-container">
            <div class="login-box">
                <div>
                    
                </div>
                 <h1>Register</h1>
            <form action="registercheck.jsp">
                <div class="textbox">Select Who You Are :</div>
                <select class="textbox" name="way" >
                    <option>Owner Of Property</option>
                    <option>Renter</option>
                </select><br>
                <div class="textbox">
                    <i class="fas fa-user"></i>
            <input type="text" placeholder="Name" name="name">
                </div>
                <div class="textbox">
                    <i class="fas fa-user"></i>
                    <input type="tel" name="mobilenumber" placeholder="Mobile Number" maxlength="10" minlength="10">
                </div>
                <div class="textbox">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="password">
                </div>
            
                <input type="submit" onclick="alert" class="btn" name="Register">
           
            </form>
                 <hr>  
                  <h4>or</h4>
            <form action="index.html">
           
                <input type="submit" class="btn" value="Login">
            </form>
            </div>
        </div>
<!--        <script>
            alert("Registered Successfully, Please Login Now")
            </script>-->
    </body>
</html>
