<%@include file="Secure/Config.jsp" %>
<%
    String AID = session.getAttribute("SessionAID").toString();
    String blogTitle = request.getParameter("blogTitle");
    blogTitle = blogTitle.replace("'", "\\'");
    String blogContent = request.getParameter("blogContent");
    blogContent = blogContent.replace("'", "\\'");
    stmt.executeUpdate("INSERT INTO blog(AID, Title, Description, Date)values('" + AID + "', '" + blogTitle + "', '" + blogContent + "', NOW())");
    out.print("<script>alert('Blog has been posted');</script>");
    out.print("<script>location.href='Loading.jsp?URL=Usermanage.jsp';</script>");
%>