<%@include file="Secure/Config.jsp" %>
<%
    String AID = request.getParameter("AID");
    rst = stmt.executeQuery("SELECT * FROM Blog WHERE AID='" + AID + "' order by Date DESC");
    while (rst.next()) {
%>
<article>
    <img class="bprofile-pic" src="ViewProfile.jsp?name=<%=AID%>">
    <h2><%=rst.getString(3)%></h2>
    <p>Published on <time datetime="2023-05-01"><%=rst.getString(5)%></time></p>
    <%if (session.getAttribute("SessionAID").toString().equals(AID)) {%>
    <div class="Bthree-dot-menu">
        <div class="Bmenu-icon" onclick="toggleDropdown(this)">&#8285;</div>
        <div class="Bdropdown-menu">
            <div class="Bmenu-item" onclick="deleteBlog('<%=rst.getString(1)%>')">Delete</div>
        </div>
    </div>
    <%}%>
    <p><%=rst.getString(4)%></p>
    <hr>
</article>
<%}%>