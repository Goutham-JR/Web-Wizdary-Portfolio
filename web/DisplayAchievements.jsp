<%@include file="Secure/Config.jsp" %>
<%
    String AID = request.getParameter("AID");
    rst = stmt.executeQuery("SELECT * FROM Achievements WHERE AID='" + AID + "' order by Date");
    while (rst.next()) {

%>
<div class="Achivement-left">
    <%if (session.getAttribute("SessionAID").toString().equals(AID)) {%>
    <div class="three-dot-menu">
        <div class="menu-icon" onclick="toggleDropdown(this)">&#8285;</div>
        <div class="Adropdown-menu" id="ADropmenu">
            <div class="Amenu-item" onclick="deleteAchievement('<%=rst.getString(1)%>')">Delete</div>            
        </div>
    </div>
    <%}%>
    <img class="achivement-Images" src="ViewAchievements.jsp?ACID=<%=rst.getString(1)%>" alt="l">
    <div class="Achivement-Title"><%=rst.getString(4)%></div>

</div>

<%}%>