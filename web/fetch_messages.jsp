<%@include file="Secure/Config.jsp" %>
<%
                    String AID = request.getParameter("AID");
                    rst = stmt.executeQuery("SELECT * FROM message WHERE (sender='"+AID+"' and receiver='"+session.getAttribute("SessionAID") +"') or (sender='"+session.getAttribute("SessionAID") +"' and receiver='"+AID+"') order by date");
                    while (rst.next()) {
                %>
                <%
                    if (rst.getString(1).equals(session.getAttribute("SessionAID"))) {
                %>
                <div class="message-orange">
                    <p class="message-content"><%=rst.getString("message")%></p>
                    <div class="message-timestamp-right">Sent <%=rst.getString("date")%></div>
                </div>

                
                <%
                } else {
                %>
                <div class="message-blue">
                    <p class="message-content"><%=rst.getString("message")%></p>
                    <div class="message-timestamp-left">Sent <%=rst.getString("date")%></div>
                </div>
                <%                        }
                %><br><br><%
                    }
                %>