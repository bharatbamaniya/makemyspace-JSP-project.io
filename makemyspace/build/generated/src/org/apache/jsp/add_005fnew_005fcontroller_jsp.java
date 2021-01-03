package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import databaseConnection.databaseConnection;
import java.sql.*;

public final class add_005fnew_005fcontroller_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add New Room Processing...</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
            try{
            String mobile=session.getAttribute("mobilenumber").toString();
            
            String Tenants= request.getParameter("Tenants");
            String Bathroom= request.getParameter("Bathroom");
            String Availability= request.getParameter("Availability");  
            String Address = request.getParameter("Address");
            String City = request.getParameter("City");
            String Pincode = request.getParameter("Pincode");
            String Rent = request.getParameter("Rent");
            out.println(mobile);
            out.println(Tenants+" "+Bathroom+" "+Availability+" "+City+" "+Pincode+" "+Rent);
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
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
