<%@include file="Secure/Config.jsp" %>
<%
    String AID = session.getAttribute("SessionAID").toString();
    String Name = request.getParameter("PrivacyName");
    String DOB = request.getParameter("PrivacyDOB");
    String Email = request.getParameter("PrivacyEmail");
    String Password = request.getParameter("PrivacyPassword");
    String Address = request.getParameter("PrivacyAddress");
    Address = Address.replace("'", "\\'");
    stmt.executeUpdate("UPDATE Account SET Name='" + Name + "', DOB='" + DOB + "', Email='" + Email + "', Password='" + Password + "', Address='" + Address + "' WHERE AID='" + AID + "'");
    out.print("<script>alert('Account has been modified successfully');</script>");
    out.print("<script>location.href='Loading.jsp?URL=Usermanage.jsp';</script>");
%>