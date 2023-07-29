 <%@page import="network.mail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String msg = request.getParameter("message");
        String name = "Name";
        String email= request.getParameter("email");
        mail m = new mail();
            m.secretMail(msg, name, email);%>
    </body>
</html>
