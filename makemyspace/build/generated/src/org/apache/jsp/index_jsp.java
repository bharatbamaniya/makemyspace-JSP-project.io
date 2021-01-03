package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Login | Register - MakeMySpace</title>\n");
      out.write("        <link href=\"CSS/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body onload=\"loderfunction()\">\n");
      out.write("\n");
      out.write("        <div id=\"loading\"></div>\n");
      out.write("\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <img src=\"logo.png\" width=\"125px\">\n");
      out.write("                    </div>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul id=\"Menuitems\">\n");
      out.write("                            <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                            <li><a href=\"\">About Us</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"hero\">\n");
      out.write("            <div class=\"form-box\">\n");
      out.write("                <div class=\"button-box\">\n");
      out.write("                    <div id=\"btn\"></div>\n");
      out.write("                    <button id=\"lg\" type=\"button\" class=\"toggle-btn\" onclick=\"login()\">Log In</button>\n");
      out.write("                    <button id=\"rg\" type=\"button\" class=\"toggle-btn\" onclick=\"register()\">Register</button>\n");
      out.write("                </div>\n");
      out.write("                <form id=\"login\" class=\"input-group\" action=\"logincheck.jsp\">\n");
      out.write("                    <br>\n");
      out.write("                    \n");
      out.write("                    <input type=\"tel\" class=\"input-field\" placeholder=\"Mobile Number\" name=\"mobilenumber\" minlength=\"10\" maxlength=\"10\" required>\n");
      out.write("                    <input type=\"password\" class=\"input-field\" placeholder=\"Password\" name=\"pass\" minlength=\"8\" id=\"password\" required>\n");
      out.write("                    <span>\n");
      out.write("                        <i class=\"fas fa-eye\" id=\"eye\" onclick=\"toggle()\">\n");
      out.write("                        </i>\n");
      out.write("                    </span>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                    <button type=\"submit\" class=\"submit-btn\">Log in</button>\n");
      out.write("                    <div class=\"text-\">\n");
      out.write("                        <small>New Here ? Please Register</small>\n");
      out.write("                        <br>\n");
      out.write("                        <br>\n");
      out.write("                        <small>Forgot Password ? </small><a href=\"forgot_pass.jsp\">Click Here</a>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <form id=\"register\" class=\"input-group\" action=\"registercheck.jsp\">\n");
      out.write("                    <select class=\"select\" name=\"way\">\n");
      out.write("                        <option>Owner Of Property</option>\n");
      out.write("                        <option>Renter</option>\n");
      out.write("                    </select>\n");
      out.write("                    <input type=\"text\" class=\"input-field\" placeholder=\"Username\" name=\"name\" required>\n");
      out.write("                    <input type=\"tel\" class=\"input-field\" placeholder=\"Mobile Number\" name=\"mobilenumber\" minlength=\"10\" maxlength=\"10\" required>\n");
      out.write("                    <input type=\"password\" class=\"input-field\" placeholder=\"Password\" name=\"password\" minlength=\"8\" id=\"password\" required>\n");
      out.write("                    \n");
      out.write("                    <span>\n");
      out.write("                        <i class=\"fas fa-eye\" id=\"eye\" onclick=\"toggle()\">\n");
      out.write("                        </i>\n");
      out.write("                    </span>\n");
      out.write("                    <input type=\"email\" class=\"input-field\" placeholder=\"Email\" required>\n");
      out.write("                    <button type=\"submit\" class=\"submit-btn\">Register</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!------------------------------------------footer------------------------------>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                        <img src=\"logo.png\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"vl\"></div>\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                        <p>Our Purposr is to Sustainably make the pleasure and benefits of rooms accessible to the many.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-col-2\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <br>\n");
      out.write("                <hr>\n");
      out.write("                <p class=\"copyright\">&copy; 2020 Copyright | MakeMySpace</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            var x = document.getElementById(\"login\");\n");
      out.write("            var y = document.getElementById(\"register\");\n");
      out.write("            var z = document.getElementById(\"btn\");\n");
      out.write("            var lg = document.getElementById(\"lg\");\n");
      out.write("            var rg = document.getElementById(\"rg\");\n");
      out.write("\n");
      out.write("            function register() {\n");
      out.write("                rg.style.color = \"#fff\";\n");
      out.write("                lg.style.color = \"initial\";\n");
      out.write("                x.style.left = \"-400px\";\n");
      out.write("                y.style.left = \"50px\";\n");
      out.write("                z.style.left = \"110px\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function login() {\n");
      out.write("                lg.style.color = \"#fff\";\n");
      out.write("                rg.style.color = \"initial\";\n");
      out.write("                x.style.left = \"50px\";\n");
      out.write("                y.style.left = \"450px\";\n");
      out.write("                z.style.left = \"0\";\n");
      out.write("            }\n");
      out.write("            //            var session =");
      out.print( session.getAttribute("msg"));
      out.write("\n");
      out.write("            //            alert(session);\n");
      out.write("            var state = false;\n");
      out.write("\n");
      out.write("            function toggle() {\n");
      out.write("                if (state) {\n");
      out.write("                    document.getElementById(\"password\").setAttribute(\"type\", \"password\");\n");
      out.write("                    document.getElementById(\"eye\").style.color = '#7a797e';\n");
      out.write("                    state = false;\n");
      out.write("                } else {\n");
      out.write("                    document.getElementById(\"password\").setAttribute(\"type\", \"text\");\n");
      out.write("                    document.getElementById(\"eye\").style.color = '#5887ef';\n");
      out.write("                    state = true;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            var preloader = document.getElementById('loading');\n");
      out.write("\n");
      out.write("            function loderfunction() {\n");
      out.write("                preloader.style.display = 'none';\n");
      out.write("            }\n");
      out.write("      \n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body></html>");
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
