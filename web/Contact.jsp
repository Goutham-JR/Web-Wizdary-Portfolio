<%@include file="Secure/Config.jsp" %>
<%
    String Name = request.getParameter("Name");
    String Email = request.getParameter("Email");
    String PhoneNo = request.getParameter("PhoneNo");
    String Message = request.getParameter("Message");
    String AID = request.getParameter("AID");
    stmt.executeUpdate("INSERT INTO ContactUs values('"+AID+"','"+Name+"','"+Email+"','"+PhoneNo+"','"+Message+"', 'PENDING')");
    response.sendRedirect("Profile.jsp?AID=" + AID );
      
%>