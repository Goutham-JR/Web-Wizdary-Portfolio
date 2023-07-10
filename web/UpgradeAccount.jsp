<%@include file="Secure/Config.jsp" %>
<%
    String Username = request.getParameter("Username");
    String Type = request.getParameter("AccountType");
    rst = stmt.executeQuery("SELECT * FROM account WHERE Username='" + Username + "'");
    if (rst.next()) {
        stmt.executeUpdate("UPDATE account SET AccountType='" + Type + "' WHERE AID='" + rst.getString(1) + "'");
        out.print("<script>alert('"+Username+" is now "+Type+"');</script>");
        out.print("<script>location.href='Loading.jsp?URL=AdminManagement.jsp';</script>");
    } else {
        out.print("<script>alert('"+Username+" not found!');</script>");
        out.print("<script>location.href='Loading.jsp?URL=AdminManagement.jsp';</script>");
    }

%>