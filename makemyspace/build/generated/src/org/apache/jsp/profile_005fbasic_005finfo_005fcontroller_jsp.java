package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import databaseConnection.databaseConnection;
import java.sql.Connection;
import java.sql.Connection;

public final class profile_005fbasic_005finfo_005fcontroller_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Redirecting...</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
  try {
                String rstatus = request.getParameter("rstatus");
                String rcity = request.getParameter("rcity");
                String rprofession = request.getParameter("rprofession");

                String mobile = (String) session.getAttribute("mobile");
                
                Connection conn = databaseConnection.initializeDatabase();
                PreparedStatement smt = conn.prepareStatement("UPDATE authenticate SET "
                        + "rstatus=?,rcity=?,rprofession=? WHERE mobile = ?");

                smt.setString(1, rstatus);
                smt.setString(2, rcity);
                smt.setString(3, rprofession);
                smt.setString(4, mobile);

                int i = smt.executeUpdate();

                if (i == 1) {
                    session.setAttribute("msg", "Successfully Updated");
                    response.sendRedirect("redirectpage.jsp");
//               out.println("<a msg=\""+i+"\" id=\"out\"></a>");
                } else {
                    session.setAttribute("msg", "Updation UnSuccessfully");
                    response.sendRedirect("redirectpage.jsp");
//               out.println("<a msg=\""+i+"\" id=\"out\"></a>");
                }
            } catch (Exception e) {
//            out.println("<a msg=\""+e.toString()+"\" id=\"error\"></a>");
                session.setAttribute("msg", e.toString());
                response.sendRedirect("redirectpage.jsp");
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
