 <!DOCTYPE html>
<html>
    <head>
        <title>Welcome To MakeMySpace</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="CSS\style.css" rel="stylesheet" type="text/css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap" rel="stylesheet">
    </head>
    <body>
        
        <div>Welcome to MakeMySpace</div>
        
    <div class="login-box">
            <h1>Login</h1>
            <form action="logincheck.jsp" method="post">   
            <div class="textbox">
                <i class="fas fa-user"></i>
            
                <input type="tel" name="mobilenumber" placeholder="Mobile Number">
            </div>
            
            <div class="textbox">
                <i class="fas fa-lock"></i>
                <input type="password" name="pass" placeholder="Password">
            </div>
                <input type="submit" class="btn" value="Sign in">
                
        </form>
            <div>
                <%
                    String s = (String) session.getAttribute("msg");
                    if(s!=null)
                    out.println(s);
                %>
            </div>
        <hr>
            <a href="forgot_pass.jsp">Forgot Password ?</a>
        or
        
        <form action="register.jsp" method="post">
            <input type="submit" class="btn" value="Register">
        </form>
        
      
    </div>
<!--        <script> 
            function button(){
            swal("Good job!", "You clicked the button!", "success");
            }
            </script>-->
    </body>
</html>
