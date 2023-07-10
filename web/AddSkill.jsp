<%@include file="Secure/Config.jsp" %>

<%
    String AID = session.getAttribute("SessionAID").toString();
    String skill = request.getParameter("skills[]");
    String percentage = request.getParameter("skillPercentages[]");
    stmt.executeUpdate("INSERT INTO Skills (AID, Skills, Percentage) VALUES ('" + AID + "', '" + skill + "', '" + percentage + "')");
    response.sendRedirect("Loading.jsp?URL=Usermanage.jsp");
%>