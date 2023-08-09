 <%@page import="network.Mails"%>
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
        String msg = "Hi";
        String name = "Name";
        String email= "gowthamnaidu.jr@gmail.com";
        Mails m = new Mails();
            m.secretMail(msg, name, email);%>
    </body>
</html>
