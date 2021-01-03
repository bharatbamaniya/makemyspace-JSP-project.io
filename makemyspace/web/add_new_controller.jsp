<%-- 
    Document   : add_new_controller
    Created on : 30 Sep, 2020, 5:26:41 PM
    Author     : bkuma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseConnection.databaseConnection" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Room Processing...</title>
    </head>
    <body>
        <% 
            try{
            String mobile=session.getAttribute("mobile").toString();
            
            String Tenants= request.getParameter("Tenants");
            String Bathroom= request.getParameter("Bathroom");
            String Availability= request.getParameter("Availability");  
            String Address = request.getParameter("Address");
            String City = request.getParameter("City");
            String Pincode = request.getParameter("Pincode");
            String Rent = request.getParameter("Rent");
//            out.println(mobile);
//            out.println(Tenants+" "+Bathroom+" "+Availability+" "+City+" "+Pincode+" "+Rent);
            Connection conn= databaseConnection.initializeDatabase();
          
            PreparedStatement p=conn.prepareStatement("INSERT INTO rooms_data (mobile,Tenants,Bathroom,Availability,Address,City,Pincode,Rent) VALUES (?,?,?,?,?,?,?,?)");
                p.setString(1,mobile);
                p.setString(2,Tenants);
                p.setString(3,Bathroom);
                p.setString(4,Availability);    
                p.setString(5,Address);
                p.setString(6,City);
                p.setString(7,Pincode);
                p.setString(8,Rent);
                
                if (p.executeUpdate()==1){
               
                    response.sendRedirect("home_owner.jsp");
                }
                else{
                    
                    response.sendRedirect("add_new_room.jsp");
                }
            
            }catch(Exception e){          
                out.print(e.toString());
            }
        %>
    </body>
</html>
