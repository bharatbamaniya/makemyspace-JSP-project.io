<%-- 
    Document   : intermediate_controller
    Created on : 3 Nov, 2020, 11:41:20 PM
    Author     : bkuma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pop Up</title>
    </head>
    <body onload="conformalert()">
        <%
            String rid= request.getParameter("RID");
            session.setAttribute("RID", rid);
            String type = (String) session.getAttribute("user_type");
            if(type.equals("null")){
                   out.println(" <a rid="+rid+" type=\"" + type + "\" id=\"link\"></a>");
            }else {
                   out.println(" <a rid="+rid+" type=\"" + type + "\" id=\"link\"></a>");
            }
            
        %>
            
            <script>
                var type = document.getElementById("link").getAttribute("type");
                var rid = document.getElementById("link").getAttribute("rid");
                var n = type.localeCompare("Owner Of Property");
                function conformalert(){
                    if(window.confirm("Are You Sure ? this will delete item ! "+ rid)){
                        window.location = "delete_room_detail.jsp";
                    }
                    else{
                        if(n === 0){
                            window.location = "home_owner.jsp"; // for redirect back to home_owner
                        }else
                            window.location = "cart.jsp";// for redirect back to cart 
                    }
                }
            </script>
    </body>
</html>
