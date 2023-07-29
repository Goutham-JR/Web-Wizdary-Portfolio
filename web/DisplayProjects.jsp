<%@include file="Secure/Config.jsp" %>
<%
    String AID = request.getParameter("AID");
    rst = stmt.executeQuery("SELECT * FROM projectshowcase WHERE AID='" + AID + "'");
    while (rst.next()) {
%>

<img class="Project-Images" src="ViewProjectSC.jsp?PSCID=<%=rst.getString(1)%>" alt="l">
<div class="Project-Title">
    <%if (session.getAttribute("SessionAID").toString().equals(AID)) {%>
    <div class="Pthree-dot-menu">
        <div class="Pmenu-icon" onclick="toggleDropdown(this)">&#8285;</div>
        <div class="Pdropdown-menu">
            <div class="Pmenu-item" onclick="deleteProject('<%=rst.getString(1)%>')">Delete</div>
        </div>
    </div>
    <%}%>
    <%=rst.getString(4)%>
    <div class="Project-Discription">
        <%=rst.getString(6)%>
    </div>
</div>
<%}%>