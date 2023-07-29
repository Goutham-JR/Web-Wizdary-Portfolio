<%@include file="Secure/Config.jsp" %>
<%
    String AID = session.getAttribute("SessionAID").toString();
    String blogTitle = request.getParameter("blogTitle");
    blogTitle = blogTitle.replace("'", "\\'");
    String blogContent = request.getParameter("blogContent");
    blogContent = blogContent.replace("'", "\\'");
    stmt.executeUpdate("INSERT INTO blog(AID, Title, Description, Date)values('" + AID + "', '" + blogTitle + "', '" + blogContent + "', NOW())");
    response.sendRedirect("Loading.jsp?URL=Usermanage.jsp?msg=success");
%>