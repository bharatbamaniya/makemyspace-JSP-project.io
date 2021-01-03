package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_005fnew_005froom_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!---------------------------------------------*-HOME MakeMySpace-*---------------------------------------------------->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Home | MakeMySpace</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS\\add_new_room.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"navbar\">\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <img src=\"logo.png\" width=\"125px\">\n");
      out.write("                </div>\n");
      out.write("                <nav>\n");
      out.write("                    <ul id=\"Menuitems\">\n");
      out.write("                        <li><a href=\"home_owner.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"\">Profile</a></li>\n");
      out.write("                        <li><a href=\"\">Contact Us</a></li>\n");
      out.write("                        <li><a href=\"logoutprocess.jsp\">Log out</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("                <img src=\"menu.png\" class=\"menu-icon\" onclick=\"menutoggle()\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("        <!--------------------------------add new room details -->\n");
      out.write("        <br>\n");
      out.write("        <div class=\"title\">Add New Room Details</div>\n");
      out.write("        <div class=\"small-container\"> \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-2\">\n");
      out.write("                    <img src=\"user-1.png\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-2-form\">  \n");
      out.write("                    <form action=\"add_new_controller.jsp\" class=\"add-new-room-model\" method=\"post\">\n");
      out.write("                        <div class=\"form-input\">\n");
      out.write("                            <label>Tenants Preferred</label>\n");
      out.write("                            <select class=\"input\" name=\"Tenanats\">\n");
      out.write("                                    <option>Single</option>\n");
      out.write("                                    <option>Married</option>\n");
      out.write("                                    <option>None</option>\n");
      out.write("                            </select>\n");
      out.write("                            <select class=\"input\" name=\"Bathroom\">\n");
      out.write("                                    <option>Yes</option>\n");
      out.write("                                    <option>No</option>\n");
      out.write("                            </select>\n");
      out.write("                            <select class=\"input\" name=\"Availability\">\n");
      out.write("                                    <option>Y</option>\n");
      out.write("                                    <option>N</option>\n");
      out.write("                            </select>\n");
      out.write("                           \n");
      out.write("                            <input class=\"input\" type=\"text\" name=\"Address\"  required Placeholder=\"Address\">\n");
      out.write("                            <input class=\"input\" type=\"text\" name=\"City\" required Placeholder=\"City\">\n");
      out.write("                            <input class=\"input\" type=\"text\" name=\"Pincode\" required Placeholder=\"Pincode\" maxlength=\"6\" minlength=\"6\">\n");
      out.write("                            <input class=\"input\" type=\"text\" name=\"Rent\" required Placeholder=\"Rent : Rs/Month\">\n");
      out.write("                        </div>   \n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <input type=\"submit\" class=\"btn\" value=\"Save Detail\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
