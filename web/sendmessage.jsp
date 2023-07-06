<%@include file="Secure/Config.jsp" %>
<html>
    <body>
        <%
            String sender = session.getAttribute("SessionAID").toString();
            String receiver = request.getParameter("AID");
            String message = request.getParameter("message");
            String sql = "INSERT INTO message(sender, receiver, message, date) VALUES ('"+sender+"', '"+receiver+"', '"+message+"', NOW())";
            stmt.executeUpdate(sql);
    %>      
    </body>
    <script>
        window.close();
    </script>
</html>
