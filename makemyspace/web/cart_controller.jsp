<%-- 
    Document   : cart_controller
    Created on : 1 Nov, 2020, 10:26:39 AM
    Author     : bkuma
--%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart | controller | keepmyspace</title>
    </head>
    <body>
      
        <%  
            try{
            String Rid = request.getParameter("RID");
            String mobile = (String) session.getAttribute("mobile");
            
            Connection conn = databaseConnection.initializeDatabase();
            Statement s= conn.createStatement();
            
            PreparedStatement p = conn.prepareStatement("INSERT INTO cart (RID,mobile) VALUES(?,?)");
            
            p.setString(1, Rid);
            p.setString(2, mobile);
            
            ResultSet r = s.executeQuery("SELECT RID from cart WHERE RID="+Rid);
                  
            if (r.first()){
//                out.println("<a id=\"link\" msg=\"\" ></a>");
            }else
                p.execute();
            
           
            }catch(Exception e){
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        %>
    </body>
    
      
    <script>
        window.alert("Room added to cart \nclick on cart to view.");
        window.location.href = "home_renter.jsp";
        
    </script>
</html>
