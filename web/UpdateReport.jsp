<%@include file="Secure/Config.jsp" %>
<%
    String Name = request.getParameter("name");
    String Email = request.getParameter("email");
    String Message = request.getParameter("message");
    String sql = "INSERT INTO Report(AID, Name, Email, Message, Date) VALUES ('" + session.getAttribute("SessionAID").toString() + "', '" + Name + "', '" + Email + "', '"+Message+"', NOW())";
    stmt.executeUpdate(sql);
    out.print("<script>alert('Reported Successfully');</script>");
    out.print("<script>location.href='Loading.jsp?URL=index.jsp';</script>");
    %>