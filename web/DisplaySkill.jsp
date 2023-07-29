<%@include file="Secure/Config.jsp" %>
<%
    String AID = request.getParameter("AID");
    rst = stmt.executeQuery("SELECT * FROM skills WHERE AID='" + AID + "'");
    while (rst.next()) {
%>
<li>
    <span class="skill-name"><%=rst.getString(3)%></span>
    <div class="skill-bar">
        <div class="skill-progress" style="width: <%=rst.getString(4).toString().concat("%")%>;"></div>
    </div>
    <span class="remove-skill" style="font-weight: bolder;" onclick="removeSkill('<%= rst.getString(1)%>')">X</span>
</li>
<%}%>  