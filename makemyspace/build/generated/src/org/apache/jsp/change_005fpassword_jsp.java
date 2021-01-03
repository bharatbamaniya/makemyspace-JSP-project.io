package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import databaseConnection.databaseConnection;
import java.sql.*;

public final class change_005fpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Change Password | MakeMySpace</title>\n");
      out.write("        <link href=\"CSS/style_forgot_pass.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <img src=\"logo.png\" width=\"125px\">\n");
      out.write("                    </div>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul id=\"Menuitems\">\n");
      out.write("\n");
      out.write("                            <li><a href=\"logoutprocess.jsp\">Log out</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                    <img src=\"menu.png\" class=\"menu-icon\" onclick=\"menutoggle()\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"small-container\">\n");
      out.write("            <form class=\"box\" action=\"change_password_controller.jsp\" method=\"post\">\n");
      out.write("                <h1>change Password</h1>\n");
      out.write("                <input type=\"text\" name=\"oldpass\" Placeholder=\"Enter Old Password\" required>\n");
      out.write("                <input type=\"text\" name=\"newpass\" Placeholder=\"Enter new Password\" required>\n");
      out.write("                <input type=\"text\" name=\"newpassc\" Placeholder=\"Confirm Password\" required>\n");
      out.write("                <input type=\"submit\" class=\"bttn\" value=\"Change Password\">\n");
      out.write("                <div class=\"msg\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!------------------------------------------footer------------------------------>\n");
      out.write("\n");
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
