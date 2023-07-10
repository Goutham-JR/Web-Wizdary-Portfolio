<%@include file="Secure/Config.jsp" %>
<%
    String AID = request.getParameter("AID");
    stmt.executeUpdate("DELETE FROM Verification WHERE AID='" + AID + "'");
    out.print("<script>alert('Declined!');</script>");
    out.print("<script>location.href='Loading.jsp?URL=AdminManagement.jsp';</script>");
%>