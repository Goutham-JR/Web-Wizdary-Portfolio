<%@include file="Secure/Config.jsp" %>
<%
    String Username = request.getParameter("username");
    String AID = "";
    rst = stmt.executeQuery("SELECT AID FROM Account where Username='" + Username + "'");
    if (rst.next()) {
        AID = rst.getString(1);
        response.sendRedirect("Loading.jsp?URL=Profile.jsp?AID=" + AID);
    } else {
         out.println("<script>alert('User not found.');</script>");
        response.sendRedirect("Loading.jsp?URL=Home.jsp");
       
    }
%>
