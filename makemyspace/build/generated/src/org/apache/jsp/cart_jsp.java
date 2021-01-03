package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import databaseConnection.databaseConnection;
import java.sql.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Cart | Renter | MakeMySpace</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/style_cart.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"navbar\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <img src=\"logo.png\" width=\"125px\">\n");
      out.write("                </div>\n");
      out.write("                <nav>\n");
      out.write("                    <ul id=\"Menuitems\">\n");
      out.write("                        <li><a href=\"home_renter.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"\">Profile</a></li>\n");
      out.write("                        <li><a href=\"cart.jsp\">Cart</a></li>\n");
      out.write("                        <li><a href=\"\">Contact Us</a></li>\n");
      out.write("                        <li><a href=\"logoutprocess.jsp\">Log out</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("                <img src=\"menu.png\" class=\"menu-icon\" onclick=\"menutoggle()\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <h2 class=\"title\">Your Cart</h2>\n");
      out.write("\n");
      out.write("        ");
  try {
                int count = 0;
                String mobil = (String) session.getAttribute("mobile");
//                out.println(mobil);
                Connection conn = databaseConnection.initializeDatabase();
                String pre_query = "SELECT RID FROM cart WHERE mobile=" + mobil;
                String r_query = "SELECT * FROM rooms_data WHERE RID =";
                String o_query = "SELECT * FROM authenticate WHERE mobile =";
                Statement p = conn.createStatement();
                ResultSet r = p.executeQuery(pre_query);

                out.println("<div class=\"container\">");

                while (r.next()) {
                    

                    String rid = r.getString("RID");
//                    out.println(rid);
                    Statement pr = conn.createStatement();
                    ResultSet rq = pr.executeQuery(r_query + rid);
                    while (rq.next()) {
                       
                        String mobile = rq.getString("mobile");
                        String Tenants = rq.getString("Tenants");
                        String Bathroom = rq.getString("Bathroom");
                        String Availability = rq.getString("Availability");
                        String Address = rq.getString("Address");
                        String City = rq.getString("City");
                        String Pincode = rq.getString("Pincode");
                        String Rent = rq.getString("Rent");
//                        out.println(mobile + Tenants + Bathroom + Availability + Address + City + Pincode + Rent);
                        count++;
//                    out.print(count);

                        out.println("            <div class=\"row\">");
                        out.println("                <div class=\"count\">");
                        out.println("                    <label>#" + count + "</label>");
                        out.println("                </div>");
                        
                        
                        out.println("<div class=\"card\">");
                        out.println("                <div class=\"row\">");
                        out.println("                    <div class=\"card-text\">");
                        out.println("                        <div class=\"row\">");
                        out.println("                            <div class=\"container\">");
                        out.println("                                <span class=\"f-t\">Tenants Preferred</span>");
                        out.println("                                <p>" + Tenants + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">Bathroom</span>");
                        out.println("                                <p>" + Bathroom + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">Availability</span>");
                        out.println("                                <p>" + Availability + "</p>");
                        out.println("                            </div>");

                        out.println("                            <div class=\"container\">");
                        out.println("                                <span class=\"f-t\">Address</span>");
                        out.println("                                <p>" + Address + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">City</span>");
                        out.println("                                <p>" + City + "</p>");
                        out.println("                                <br>");
                        out.println("                                <span class=\"f-t\">Pincode</span>");
                        out.println("                                <p>" + Pincode + "</p>");
//                        out.println("                                <br>");
                        out.println("                            </div>");

                        out.println("                            <div class=\"container\">");
                        out.println("                                <span class=\"f-t\">Rent</span>");
                        out.println("                                <p>" + Rent + "</p>");
                        out.println("                            </div>");
                        
                        out.println("                        </div>");
                        out.println("                    </div>");

                        out.println("                    <div class=\"vertical-line\"></div>");

                        Statement po = conn.createStatement();
                        ResultSet rqo = po.executeQuery(o_query + mobile);
                        while (rqo.next()) {
                            String oname = rqo.getString("name");
//                            out.println(mobile + oname);
                            out.println("                    <div class=\"card-text\">");
                            out.println("                        <br>");
                            out.println("                        <span class=\"f-t\">Owner</span>");
                            out.println("                        <p>" + oname + "</p>");
                            out.println("                        <br>");
                            out.println("                        <span class=\"f-t\">Contact</span>");
                            out.println("                        <p>" + mobile + "</p>");
                            out.println("                        <br>");
                            out.println("                    </div>");
                        }
                        out.println("                </div>");
                        out.println("                            <div class=\"card-bottom\">");
                        out.println("                               <div class=\"card-btn\">");
                        out.println("                                   <a href=\"intermediate_controller.jsp?RID="+rid +"\"><i id=\"del\" class=\"fas fa-trash\"></i></a>");

                        out.println("                               </div>");
                        out.println("                            </div>");
                        out.println("</div>");

                    }
                    out.println("</div>");
                }
                if (count == 0) {
                    out.println("<div class=\"title\">");
                    out.print("No Rooms in Cart");
                    out.println("</div>");
            
                    }
                out.println("</div>");
            } catch (Exception e) {
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
            }
        
      out.write("\n");
      out.write("        <!--\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"count\">\n");
      out.write("        \n");
      out.write("                            <label></label>\n");
      out.write("        \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"card-text\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"container\">\n");
      out.write("                                            <span class=\"f-t\">Tenants Preferred</span>\n");
      out.write("                                            <p>Single</p>\n");
      out.write("                                            <br>\n");
      out.write("                                            <span class=\"f-t\">Bathroom</span>\n");
      out.write("                                            <p>Single</p>\n");
      out.write("                                            <br>\n");
      out.write("                                            <span class=\"f-t\">Availability</span>\n");
      out.write("                                            <p>Single</p>\n");
      out.write("                                                                            <br>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"container\">\n");
      out.write("                                            <span class=\"f-t\">Address</span>\n");
      out.write("                                            <p>Single</p>\n");
      out.write("                                            <br>\n");
      out.write("                                            <span class=\"f-t\">City</span>\n");
      out.write("                                            <p>Single</p>\n");
      out.write("                                            <br>\n");
      out.write("                                            <span class=\"f-t\">Pincode</span>\n");
      out.write("                                            <p>Single</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"vertical-line\"></div>\n");
      out.write("                                <div class=\"card-text\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                                    <span class=\"f-t\">Address</span>\n");
      out.write("                                    <p>Single</p>\n");
      out.write("                                    <br>\n");
      out.write("                                    <span class=\"f-t\">City</span>\n");
      out.write("                                    <p>Single</p>\n");
      out.write("                                    <br>\n");
      out.write("                                    <span class=\"f-t\">Pincode</span>\n");
      out.write("                                    <p>Single</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-bottom\">\n");
      out.write("                                <div class=\"card-btn\">\n");
      out.write("                                    <a href=\"\"><i class=\"fas fa-trash\"></i></a>\n");
      out.write("        \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-image\"></div>\n");
      out.write("                            <div class=\"card-text\">\n");
      out.write("            \n");
      out.write("                                <span class=\"f-t\">Tenants Preferred</span>\n");
      out.write("                                <p>Single</p>\n");
      out.write("                                <br>\n");
      out.write("                                <span class=\"f-t\">Bathroom</span>\n");
      out.write("                                <p>Single</p>\n");
      out.write("                                <br>\n");
      out.write("                                <span class=\"f-t\">Availability</span>\n");
      out.write("                                <p>Single</p>\n");
      out.write("                                <br>\n");
      out.write("                                <span class=\"f-t\">Address</span>\n");
      out.write("                                <p>Single</p>\n");
      out.write("                                <br>\n");
      out.write("                                <span class=\"f-t\">City</span>\n");
      out.write("                                <p>Single</p>\n");
      out.write("                                <br>\n");
      out.write("                                <span class=\"f-t\">Pincode</span>\n");
      out.write("                                <p>Single</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"card-bottom\">\n");
      out.write("                                <div class=\"card-btn\">\n");
      out.write("                                    <a href=\"\">Add to Cart</a>\n");
      out.write("            \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("        \n");
      out.write("                </div>-->\n");
      out.write("\n");
      out.write("        <!--  footer   -->\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"container-footer\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                        <img src=\"logo-white.png\">\n");
      out.write("                        <p>Our Purposr is to Sustainably make the pleasure and benefits of sports accessible to the many.</p>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <hr>\n");
      out.write("                <p class=\"copyright\">&copy; 2020 Copyright - MakeMySpace</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            var MenuItems = document.getElementById(\"Menuitems\");\n");
      out.write("\n");
      out.write("            MenuItems.style.maxHeight = \"0px\";\n");
      out.write("\n");
      out.write("            function menutoggle() {\n");
      out.write("                if (MenuItems.style.maxHeight == \"0px\") {\n");
      out.write("                    MenuItems.style.maxHeight = \"200px\";\n");
      out.write("                } else {\n");
      out.write("                    MenuItems.style.maxHeight = \"0px\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            window.onscroll = function () {\n");
      out.write("                myFunction()\n");
      out.write("            };\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
