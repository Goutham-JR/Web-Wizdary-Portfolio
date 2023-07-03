package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Secure/Config.jsp");
  }

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

      out.write('\n');
      out.write('\n');
      out.write('\n');

    String jdbcDriver = "com.mysql.jdbc.Driver";
    Class.forName(jdbcDriver).newInstance();
   
    Connection con = null;
    ResultSet rst = null;
    Statement stmt = null;
    
    try {
        String url = "jdbc:mysql://localhost/portfolio?user=root&password=Duelisto";
        con = DriverManager.getConnection(url);
        stmt = con.createStatement();
    } catch(Exception e) {
        System.out.println(e.getMessage());
    }
    
    String Title = "Web Wizardry";

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>");
      out.print( Title);
      out.write(" - LOGIN</title>\n");
      out.write("        <style>\n");
      out.write("            :root {\n");
      out.write("                --Color-Btn: rgb(255, 255, 0);\n");
      out.write("                --Color-input-border: #fffb00;\n");
      out.write("                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            * {\n");
      out.write("                margin: 0 0;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                background-image: url(Images/naturebg.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100% 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-border {\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                padding: 20px;\n");
      out.write("                width: 300px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction: column;\n");
      out.write("                align-items: center;\n");
      out.write("                justify-content: center;\n");
      out.write("                position: fixed;\n");
      out.write("                top: 50%;\n");
      out.write("                left: 50%;\n");
      out.write("                transform: translate(-50%, -50%);\n");
      out.write("                background-color: rgba(0, 0, 0, 0.4);\n");
      out.write("                backdrop-filter: blur(15px);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items {\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items label {\n");
      out.write("                display: block;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .Login-heading {\n");
      out.write("                font-size: 2em;\n");
      out.write("                text-align: center;\n");
      out.write("                position: relative;\n");
      out.write("                background-color: rgba(0, 0, 0, 0.2);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .Login-heading span {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 40px;\n");
      out.write("                color: #fff;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                animation: flip 3s infinite;\n");
      out.write("                animation-delay: calc(.2s * var(--i));\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            input[type=\"text\"],\n");
      out.write("            input[type=\"password\"] {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                border: 2px solid #ccc;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                color: black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"text\"]:focus,\n");
      out.write("            input[type=\"password\"]:focus {\n");
      out.write("                outline: none;\n");
      out.write("                border-color: var(--Color-input-border);\n");
      out.write("                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items input[type=\"checkbox\"] {\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items a {\n");
      out.write("                display: block;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items a:hover {\n");
      out.write("                color: var(--Color-input-border);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items input[type=\"submit\"] {\n");
      out.write("                color: var(--Color-Btn);\n");
      out.write("                cursor: pointer;\n");
      out.write("                font-size: 16px;\n");
      out.write("                font-weight: 400;\n");
      out.write("                line-height: 45px;\n");
      out.write("                margin: 0 0 2em;\n");
      out.write("                position: relative;\n");
      out.write("                width: 100%;\n");
      out.write("                text-decoration: none;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                border: 0 solid;\n");
      out.write("                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);\n");
      out.write("                outline: 1px solid;\n");
      out.write("                outline-color: var(--Color-Btn-Outlinecolor);\n");
      out.write("                outline-offset: 0px;\n");
      out.write("                text-shadow: none;\n");
      out.write("                transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);\n");
      out.write("                background-color: rgba(0, 0, 0, 0.4);\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items input[type=\"submit\"]:after {\n");
      out.write("                background: black;\n");
      out.write("                content: \"\";\n");
      out.write("                height: 155px;\n");
      out.write("                left: -75px;\n");
      out.write("                opacity: 0.2;\n");
      out.write("                position: absolute;\n");
      out.write("                top: -50px;\n");
      out.write("                transform: rotate(35deg);\n");
      out.write("                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);\n");
      out.write("                width: 50px;\n");
      out.write("                z-index: -10;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .form-items input[type=\"submit\"]:hover {\n");
      out.write("                border: 1px solid;\n");
      out.write("                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);\n");
      out.write("                outline-color: rgba(255, 255, 255, 0);\n");
      out.write("                outline-offset: 15px;\n");
      out.write("                text-shadow: 1px 1px 2px #427388;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-items input[type=\"submit\"]:hover:after {\n");
      out.write("                left: 120%;\n");
      out.write("                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .rain-container {\n");
      out.write("                position: relative;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100vh;\n");
      out.write("                overflow: hidden;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .raindrop {\n");
      out.write("                position: absolute;\n");
      out.write("                width: 1px;\n");
      out.write("                height: 50px;\n");
      out.write("                background-color: rgba(255, 255, 255, 0.5);\n");
      out.write("                animation: raindrop 1s linear infinite;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes raindrop {\n");
      out.write("                0% {\n");
      out.write("                transform: translateY(-50px);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            100% {\n");
      out.write("                transform: translateY(100vh);\n");
      out.write("            }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes flip {\n");
      out.write("\n");
      out.write("                0%,\n");
      out.write("                80% {\n");
      out.write("                transform: rotateY(360deg)\n");
      out.write("            }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");

            if (request.getMethod().equalsIgnoreCase("POST")) {
                String username = request.getParameter("Username");
                String password = request.getParameter("Password");

                rst = stmt.executeQuery("Select * from Account where username='" + username + "' and password='" + password + "'");
                if(rst.next()) {
                    session.setAttribute("SessionUser", username);
                    session.setAttribute("SessionAID",rst.getString("AID"));
                    System.out.println(rst.getString(2));
                    //TODO : CHECK THE ACCOUNTYPE HERE UPDATE
//                    if (rst.getString(3).equals("Goutham"))
//                        response.sendRedirect("index.jsp");
//                    else
//                        response.sendRedirect("SignUp.jsp");
                      response.sendRedirect("index.jsp");
                } else {
                    //TODO : ADD THE MESSAGE HERE
                    response.sendRedirect("Login.jsp");
                }
                                       
            }

        
      out.write("\n");
      out.write("        <div class=\"rain-container\" id=\"rainContainer\"></div>\n");
      out.write("        <div class=\"form-border\">\n");
      out.write("            <div class=\"form-items\">\n");
      out.write("                <form action=\"Login.jsp\" method=\"POST\">\n");
      out.write("                    <div class=\"Login-heading\">\n");
      out.write("                        <span style=\"--i:1\">L</span>\n");
      out.write("                        <span style=\"--i:2\">o</span>\n");
      out.write("                        <span style=\"--i:3\">G</span>\n");
      out.write("                        <span style=\"--i:4\">I</span>\n");
      out.write("                        <span style=\"--i:5\">N</span>\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                    <label for=\"Username\">Username <input type=\"text\" name=\"Username\" placeholder=\"Enter the Username\"\n");
      out.write("                                                          required></label>\n");
      out.write("                    <label for=\"Password\">Password <input type=\"Password\" name=\"Password\" placeholder=\"Enter the Password\"\n");
      out.write("                                                          required></label>\n");
      out.write("                    <label for=\"rememberpsd\"><input type=\"checkbox\" name=\"rememberpsd\"> Remember me</label>\n");
      out.write("                    <a href=\"#\">Forgot Password?</a>\n");
      out.write("                    <input type=\"submit\" value=\"Login\">\n");
      out.write("                    <a href=\"SignUp.jsp\">Don't have an account? Click here</a>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"JavaScript/LoginScript.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
