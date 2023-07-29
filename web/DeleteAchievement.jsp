<%@include file="Secure/Config.jsp" %>
<%
    String ACID = request.getParameter("ACID");
    stmt.executeUpdate("DELETE FROM achievements WHERE ACID='"+ACID+"'");
%>