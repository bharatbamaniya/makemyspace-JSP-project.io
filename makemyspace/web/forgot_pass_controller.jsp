<%-- 
    Document   : forgot_pass_controller
    Created on : 5 Oct, 2020, 10:55:19 AM
    Author     : bkuma
--%>

<%@page import="java.lang.reflect.Field"%>
<%@page import="java.awt.Color"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="databaseConnection.databaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget controller...</title>
    </head>
    <body>
        <%

            try {
                String mobile = request.getParameter("mobile");

                session.setAttribute("mobile", mobile);

//                out.println(mobile+username+password);
                String query = "SELECT name,email FROM authenticate WHERE mobile IN(" + mobile + ")";
                Connection conn = databaseConnection.initializeDatabase();
                Statement st = conn.createStatement();

                ResultSet rs = st.executeQuery(query);
                if (rs.first()) {

                    String semail = "", name = "";
                    //String otp = "";
                    Random rnd = new Random();
                    int number = rnd.nextInt(999999);

                    String otp = String.format("%06d", number);
                    //System.out.println(otp);
                    semail = rs.getString("email");
                    name = rs.getString("name");

                    ///////////////////sending mail program*******************************
                    try {
                        String rec = semail;
                        Properties p = new Properties();
                        p.put("mail.smtp.auth", "true");
                        p.put("mail.smtp.starttls.enable", "true");
                        p.put("mail.smtp.host", "smtp.gmail.com");
                        p.put("mail.smtp.port", "587");

                        final String myemail = "makemyspaceinfo@gmail.com";
                        final String pass = "thisismypassword";

                        Session ss = Session.getInstance(p, new Authenticator() {
                            @Override
                            protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(myemail, pass);
                            }
                        });
                        Color color;
                        
                            Field field = Class.forName("java.awt.Color").getField("yellow");
                            color = (Color) field.get(null);
                        
                        Message message = new MimeMessage(ss);
                        message.setFrom(new InternetAddress(myemail));
                        message.setRecipient(Message.RecipientType.TO, new InternetAddress(rec));
                        message.setSubject("" + otp + " is your makemyspace account recovery code");
                        String mess = "Hi " + name + " ,"
                                + "\n\tWe received a request to reset your makemyspace account password."
                                + "\nPlease enter these 6 digit code to reset password \n" + otp
                                + "\n\n\nDidn't request this change?"
                                + "\nIf you didn't request a new password,let us know via email."
                                + "\n\nThank You"
                                + "\n\nThis mail has been sent to " + semail
                                + "at your request."
                                + "\nmakemyspace.";

                        message.setText(mess);

                        Transport.send(message);
                    } catch (Exception e) {
                        session.setAttribute("msg", "Error : OTP can't be sent to your Registered Email id!\n Please try again after some time...\n" + e.toString());
                        response.sendRedirect("redirectpage.jsp");
                    }
                    session.setAttribute("otp", otp);
                    session.setAttribute("msg", "OTP has been sent to Your Registered Email id.");
                    response.sendRedirect("redirectpage.jsp");

                } else {
                    session.setAttribute("msg", "Mobile Number Not Registered With Database");
                    response.sendRedirect("redirectpage.jsp");
                }

            } catch (Exception e) {
                out.println(e.toString());
            }
        %>
    </body>
</html>
