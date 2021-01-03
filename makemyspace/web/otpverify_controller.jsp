<%-- 
    Document   : otpverify_controller
    Created on : 4 Nov, 2020, 6:52:39 PM
    Author     : bkuma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OTP Verifying...</title>
    </head>
    <body>
         <%
            String otp = request.getParameter("otpentered");
            String validotp = (String) session.getAttribute("otp");
            
            if(otp.equals(validotp)){
                response.sendRedirect("reset_password_view.jsp");
            }
            else{
            session.setAttribute("msg", "Invalid OTP");
                response.sendRedirect("redirectpage.jsp");
            
            }

            %>
    </body>
</html>
