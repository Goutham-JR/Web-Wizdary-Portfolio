<%@include file="Secure/Config.jsp" %>
<%
    // Get the username from the request parameter
    String username = request.getParameter("username");

    rst = stmt.executeQuery("SELECT * FROM account WHERE Username='" + username + "'");
    if (rst.next()) {
%>
<th>AID</th>
<th>Name</th>
<th>Username</th>
<th>Password</th>
<th>Email</th>
<th>PhoneNo</th>
<th>Address</th>
<th>AccountType</th>
<th>DOB</th>
<tr>
    <td><%=rst.getString(1)%></td>
    <td><%=rst.getString(2)%></td>
    <td><%=rst.getString(3)%></td>
    <td><%=rst.getString(4)%></td>
    <td><%=rst.getString(5)%></td>
    <td><%=rst.getString(6)%></td>
    <td><%=rst.getString(7)%></td>
    <td><%=rst.getString(8)%></td>
    <td><%=rst.getString(10)%></td>   
</tr>
<%} else {%>
<h1 style="color: red">User not found!</h1>
<%}%>
