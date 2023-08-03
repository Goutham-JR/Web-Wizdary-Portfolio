<%@include file="Secure/Config.jsp" %>
<%
    String Name = request.getParameter("Name");
    String Email = request.getParameter("Email");
    String PhoneNo = request.getParameter("PhoneNo");
    String Message = request.getParameter("Message");
    String AID = request.getParameter("AID");
    stmt.executeUpdate("INSERT INTO ContactUs values('"+AID+"','"+Name+"','"+Email+"','"+PhoneNo+"','"+Message+"', 'PENDING')");
    out.print("<script>alert('<jsp:include page='ViewName.jsp'><jsp:param name='"+AID+"' value='"+AID+"'/></jsp:include> will contact you soon!');</script>");
    out.print("<script>location.href='Loading.jsp?URL=Profile.jsp?AID='" + AID+"'';</script>");
    
%>