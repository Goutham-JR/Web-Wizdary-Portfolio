<%@include file="Secure/Config.jsp" %>
<%
    String BID = request.getParameter("BID");
    stmt.executeUpdate("DELETE FROM blog WHERE BID='"+BID+"'");
%>