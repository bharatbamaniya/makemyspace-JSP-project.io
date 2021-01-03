package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;
import databaseConnection.databaseConnection;
import java.sql.*;

public final class home_005frenter_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!---------------------------------------------*-HOME Renter MakeMySpace-*---------------------------------------------------->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Home-Renter | MakeMySpace</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS\\style_home_owner.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"startTime()\">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <img src=\"logo.png\" width=\"125px\">\n");
      out.write("                    </div>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul id=\"Menuitems\">\n");
      out.write("                            <li><a href=\"home_renter.jsp\">Home</a></li>\n");
      out.write("                            <li><a href=\"\">Profile</a></li>\n");
      out.write("                            <li><a href=\"cart.jsp\">Cart</a></li>\n");
      out.write("                            <li><a href=\"\">Contact Us</a></li>\n");
      out.write("                            <li><a href=\"logoutprocess.jsp\">Log out</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                    <img src=\"menu.png\" class=\"menu-icon\" onclick=\"menutoggle()\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-2\">\n");
      out.write("                        ");
  try {
                                String username = session.getAttribute("user_name").toString();
                                String usertype = session.getAttribute("user_type").toString();

                                out.println("<h1>Welcome " + username + "!</h1>");
                                out.println("<p>This is Your Renter Home Page</p>");
                            } catch (Exception e) {
                                out.print(e.toString());
                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("                        <a class=\"btn\">About You &#8594;</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"row-time\">\n");
      out.write("                <div>\n");
      out.write("                    Time :\n");
      out.write("                </div>\n");
      out.write("                <div id=\"date\" class=\"date-box\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!--            <div class=\"date-box\">\n");
      out.write("            ");
 //  out.println("You Logged in at : ");
                //Calendar c1 = Calendar.getInstance();

                //out.println(c1.getTime());
      out.write("\n");
      out.write("        </div>-->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <h2 class=\"title\">Select Your Rooms</h2> \n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"boxContainer\">\n");
      out.write("            <form action=\"searchresult.jsp\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Search Via Pincode\" name=\"search\" minlength=\"6\" maxlength=\"8\" class=\"search\">\n");
      out.write("                    <input type=\"submit\" value=\"Search\"> \n");
      out.write("                    <!--<i class=\"fas fa-search\"></i>-->\n");
      out.write("                </div> \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!----------------------------------   card views   --------------------------->\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");

                try {

                    String rcity, rstatus;

                    String mobil = (String) session.getAttribute("mobile");
                    Connection conn = databaseConnection.initializeDatabase();
                    out.println(mobil);
                    String pre_query = "SELECT rcity,rstatus FROM authenticate WHERE mobile=" + mobil;

                    Statement p = conn.createStatement();
                    ResultSet r = p.executeQuery(pre_query);

                    while (r.next()) {
                        rcity = r.getString("rcity");
                        rstatus = r.getString("rstatus");

                        String query = "SELECT * FROM rooms_data WHERE Availability = 'Y'";

                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) {
                            int RID = rs.getInt("RID");
                            String mobile = rs.getString("mobile");
                            String Tenants = rs.getString("Tenants");
                            String Bathroom = rs.getString("Bathroom");
                            String Availability = rs.getString("Availability");
                            String Address = rs.getString("Address");
                            String City = rs.getString("City");
                            String Pincode = rs.getString("Pincode");
                            String Rent = rs.getString("Rent");
                            out.println(Tenants);
                            if ((Tenants.equals("None") || Tenants.equals("none") || Tenants.equals(rstatus))
                                    && City.equals(rcity)) {
            
      out.write("\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <div class=\"card-image\"></div>\n");
      out.write("                <div class=\"card-text\">\n");
      out.write("                    <span class=\"f-t\">Tenants Preferred</span>\n");
      out.write("                    <p>");
      out.print(Tenants);
out.println(Tenants);
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <span class=\"f-t\">Bathroom</span>\n");
      out.write("                    <p>");
      out.print(Bathroom);
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <span class=\"f-t\">Availability</span>\n");
      out.write("                    <p>");
      out.print(Availability);
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <span class=\"f-t\">Address</span>\n");
      out.write("                    <p>");
      out.print(Address);
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <span class=\"f-t\">City</span>\n");
      out.write("                    <p>");
      out.print(City);
      out.write("</p>\n");
      out.write("                    <br>\n");
      out.write("                    <span class=\"f-t\">Pin code</span>\n");
      out.write("                    <p>");
      out.print(Pincode);
      out.write("</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-stats\">\n");
      out.write("                    <div class=\"stat\">\n");
      out.write("                        <h2>");
      out.print(Rent);
      out.write("<p></p>\n");
      out.write("                        </h2>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div id=\"cart-btn\" class=\"card-bottom\">\n");
      out.write("                    <!--                    <div class=\"card-btn\">\n");
      out.write("                                            <a href=\"cart_controller.jsp?RID=");
      out.print(RID);
      out.write("\"><i id=\"edit\" class=\"fas fa-pen\"></i></a>\n");
      out.write("                    \n");
      out.write("                                        </div>-->\n");
      out.write("                    <div class=\"card-btn\">\n");
      out.write("\n");
      out.write("                        <a href=\"cart_controller.jsp?RID=");
      out.print(RID);
      out.write("\"><i id=\"edit\" class=\"fas fa-cart-plus\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
                    }
                        }
                    }

                } catch (Exception e) {
                    out.println(e.toString());
                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!------------------------------------------footer------------------------------>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                        <img src=\"logo.png\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"vl\"></div>\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                        <p>Our Purposr is to Sustainably make the pleasure and benefits of rooms accessible to the many.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                <hr>\n");
      out.write("                <p class=\"copyright\">&copy; 2020 Copyright - MakeMySpace</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            function startTime() {\n");
      out.write("                var today = new Date();\n");
      out.write("                var h = today.getHours();\n");
      out.write("                var m = today.getMinutes();\n");
      out.write("                var s = today.getSeconds();\n");
      out.write("                m = checkTime(m);\n");
      out.write("                s = checkTime(s);\n");
      out.write("                document.getElementById('date').innerHTML = h + \":\" + m + \":\" + s;\n");
      out.write("                var t = setTimeout(startTime, 500);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function checkTime(i) {\n");
      out.write("                if (i < 10) {\n");
      out.write("                    i = \"0\" + i; // add zero in front of numbers < 10\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                return i;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
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
