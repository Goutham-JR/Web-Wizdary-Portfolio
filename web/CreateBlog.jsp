<%@include file="Secure/Config.jsp" %> %>
<%
    String AID = session.getAttribute("SessionAID").toString();
    String blogTitle = request.getParameter("blogTitle");
    String blogContent = request.getParameter("blogContent");
    stmt.executeUpdate("INSERT INTO blog(AID, Title, Description, Date)values('" + AID + "', '" + blogTitle + "', '" + blogContent + "', NOW())");
    response.sendRedirect("Usermanage.jsp");

%>