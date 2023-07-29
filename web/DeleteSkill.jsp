<%@include file="Secure/Config.jsp" %>
<%
    String SKID = request.getParameter("SKID");
    stmt.executeUpdate("DELETE FROM skills WHERE SKID='"+SKID+"'");
%>