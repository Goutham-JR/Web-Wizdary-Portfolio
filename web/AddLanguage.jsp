<%@include file="Secure/Config.jsp" %>
<%
    String Lang = request.getParameter("Lang");
    stmt.executeUpdate("INSERT INTO Languages VALUES('"+session.getAttribute("SessionAID") +"','"+Lang+"')");
    out.print("<script>alert('Language added Successfully');</script>");
    out.print("<script>location.href='Loading.jsp?URL=Usermanage.jsp';</script>");
%>