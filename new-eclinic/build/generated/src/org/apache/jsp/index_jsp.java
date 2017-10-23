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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>e-clinic</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"container\">            \n");
      out.write("  <img src=\"image/ECLINICLOGO.jpg\" class=\"img-rounded\" alt=\"logo\" width=\"100%\" height=\"150\"> \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"home.html\">Home</a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">Doctors' with us</a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("      <li><a href=\"contactus.html\"><span class=\"glyphicon glyphicon-user\"></span>Contact us</a></li>\n");
      out.write("      <li><a href=\"aboutus.html\"><span class=\"glyphicon glyphicon-log-in\"></span>About us</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write(" <style>\n");
      out.write("  .carousel-inner > .item > img,\n");
      out.write("  .carousel-inner > .item > a > img {\n");
      out.write("      width: 40%;\n");
      out.write("      margin: auto;\n");
      out.write("  }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("  <br>\n");
      out.write("  <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("    <!-- Indicators -->\n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("    </ol>\n");
      out.write("\n");
      out.write("    <!-- Wrapper for slides -->\n");
      out.write("    <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("      <div class=\"item active\">\n");
      out.write("        <img src=\"image/image1.jpg\" alt=\"image\" width=\"100\" height=\"150\">\n");
      out.write("      </div>\n");
      out.write("\t  \n");
      out.write("    \n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"image/b.jpg\" alt=\"image\" width=\"100\" height=\"150\">\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"image/h.jpg\" alt=\"image\" width=\"100\" height=\"150\">\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"item\">\n");
      out.write("        <img src=\"image/a.jpg\" alt=\"image\" width=\"100\" height=\"150\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("    <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("<br>\n");
      out.write("<br><br>\n");
      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("\n");
      out.write("<div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("<a href=\"signindoc.jsp\">\n");
      out.write("\n");
      out.write("\t<i class=\"fa fa-user-md fa-5x\" style=\"color:black\"></i>\n");
      out.write("      <h4 style=\"color:black\">Doctor Login</h4></a>\n");
      out.write("\t  </center>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"col-sm-4\">\n");
      out.write("         <center>\n");
      out.write("\t    <a href=\"signinpatient.jsp\"> <i class=\"fa fa-user fa-5x\" style=\"color:black\"></i>\n");
      out.write("            <h4 style=\"color:black\">Patient Login</h4></a>\n");
      out.write("\t  </center>\n");
      out.write("    </div>\n");
      out.write("<div class=\"col-sm-4\">\n");
      out.write("<center>\n");
      out.write("<a href=\"searchhome.jsp\">\n");
      out.write("      <i class=\"fa fa-search fa-5x\" style=\"color:black\"></i>\n");
      out.write("      <h4 style=\"color:black\">Search</h4></a>\n");
      out.write("\t  </center>\n");
      out.write("    </div>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
