<%-- 
    Document   : nEmail
    Created on : 11 Jul, 2023, 3:59:33 PM
    Author     : gowth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Sendmail.jsp" method="POST">
            Email
            <input type="email" name="email">
            message
            <input type="text" name="message">
            <input type="Submit" name="Submit" value="Submit">
        </form>
    </body>
</html>
