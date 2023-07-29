<%@include file="Secure/Config.jsp" %>
<%
    String PSCID = request.getParameter("PSCID");
    stmt.executeUpdate("DELETE FROM projectshowcase WHERE PSCID='"+PSCID+"'");
%>