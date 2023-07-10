<%@include file="Secure/Config.jsp" %>
<%
    String AID = session.getAttribute("SessionAID").toString();
    rst = stmt.executeQuery("SELECT * FROM Verification WHERE AID='" + AID + "'");
    if (rst.next()) {
        out.print("<script>alert('You have submitted a request before only');</script>");
        out.print("<script>location.href='Loading.jsp?URL=Usermanage.jsp';</script>");

    } else {
        stmt.executeUpdate("INSERT INTO Verification(AID, Username, Date)values('" + AID + "', '" + session.getAttribute("SessionUser") + "', NOW())");
        out.print("<script>alert('Recorded Successfully');</script>");
         out.print("<script>location.href='Loading.jsp?URL=Usermanage.jsp';</script>");
    }
%>