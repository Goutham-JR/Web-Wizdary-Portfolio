<%@include file="Secure/Config.jsp" %>

<%
    String AID = session.getAttribute("SessionAID").toString();
    String skill = request.getParameter("skills[]");
    String percentage = request.getParameter("skillPercentages[]");
    stmt.executeUpdate("INSERT INTO Skills (AID, Skills, Percentage) VALUES ('" + AID + "', '" + skill + "', '" + percentage + "')");
    out.print("<script>alert('Added Skill Successfully!');</script>");
    out.print("<script>location.href='Loading.jsp?URL=Usermanage.jsp';</script>");
%>