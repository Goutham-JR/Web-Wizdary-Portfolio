<%@include file="Secure/Config.jsp" %>
<%
    String AID = request.getParameter("AID");
    stmt.executeUpdate("UPDATE account SET AccountType='Verified' WHERE AID='" + AID + "'");
    stmt.executeUpdate("DELETE FROM Verification WHERE AID='" + AID + "'");
    out.print("<script>alert('Approved!');</script>");
    out.print("<script>location.href='Loading.jsp?URL=AdminManagement.jsp';</script>");
%>