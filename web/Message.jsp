<%@include file="Secure/Config.jsp" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Messenger</title>
        <style>
            :root {
                --Color-Btn: rgb(255, 255, 0);
                --Color-input-border: #fffb00;
                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);
                --Color-Background-Color: #202327;
            }

            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            .container {
                display: flex;
                height: 100vh;
            }

            .user-list {
                flex: 1;
                background-color: var(--Color-Background-Color);
                padding: 20px;
            }
            .main-right{
                flex: 3;
                width: 800px;
            }

            .user {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
                cursor: pointer;
                padding: 10px;
                background-color: #ddd;
                border-radius: 5px;
            }

            .user img {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                margin-right: 10px;
            }

            .user.active {
                font-weight: bold;
                background-color: var(--Color-Background-Color);
                color: var(--Color-Btn);
            }

            .chat-window {

                padding: 20px;
                background-color: gray;
                overflow-y: scroll;
                max-height: 600px;
            }

            .message {
                margin-bottom: 20px;

            }

            .message .sender {
                font-weight: bold;
                margin-bottom: 5px;
            }

            .message .timestamp {
                font-size: 12px;
                color: #888;
            }

            .message-input {
                display: flex;
                margin-top: 20px;
            }



            .message-input input[type="text"] {
                flex-grow: 1;
                margin-right: 10px;
                border: 2px solid #ccc;
                border-radius: 4px;
                padding: 10px 0px;
                box-sizing: border-box;

            }

            .message-input input[type="text"]:focus {
                outline: none;
                border-color: var(--Color-input-border);
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }


            .message-input button {
                border-radius: 8px;
                position: relative;
                left: -10px;
            }

            .message-input button {
                color: var(--Color-Btn);
                cursor: pointer;
                text-align: center;
                font-size: 14px;
                font-weight: 400;
                text-decoration: none;
                text-transform: uppercase;
                border: 0 solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
                outline: 1px solid;
                outline-color: var(--Color-Btn-Outlinecolor);
                outline-offset: 0px;
                text-shadow: none;
                transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
                background-color: rgba(0, 0, 0, 0.4);
                border-radius: 10px;
                margin: 4px 2px;
                padding: 8px 16px;
                display: inline-block;
                position: relative;
            }

            .message-input button:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .message-input button:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }

            .message-blue {
                position: relative;
                margin-left: 20px;
                margin-bottom: 10px;
                padding: 10px;
                background-color: var(--Color-Background-Color);
                width: 200px;
                height: 50px;
                text-align: left;
                font: 400 .9em 'Open Sans', sans-serif;
                border: 1px solid #97C6E3;
                border-radius: 10px;
                color: #FFF;
            }

            .message-orange {
                position: relative;
                margin-bottom: 10px;
                margin-left: calc(100% - 240px);
                padding: 10px;
                background-color: var(--Color-Btn);
                width: 200px;
                height: 50px;
                text-align: left;
                font: 400 .9em 'Open Sans', sans-serif;
                border: 1px solid #dfd087;
                border-radius: 10px;
            }

            .message-content {
                padding: 0;
                margin: 0;
            }

            .message-timestamp-right {
                position: absolute;
                font-size: .85em;
                font-weight: 300;
                bottom: 5px;
                right: 5px;
            }

            .message-timestamp-left {
                position: absolute;
                font-size: .85em;
                font-weight: 300;
                bottom: 5px;
                left: 5px;
            }

            .message-blue:after {
                content: '';
                position: absolute;
                width: 0;
                height: 0;
                border-top: 15px solid var(--Color-Background-Color);
                border-left: 15px solid transparent;
                border-right: 15px solid transparent;
                top: 0;
                left: -15px;
            }

            .message-blue:before {
                content: '';
                position: absolute;
                width: 0;
                height: 0;
                border-top: 17px solid var(--Color-Background-Color);
                border-left: 16px solid transparent;
                border-right: 16px solid transparent;
                top: -1px;
                left: -17px;
            }

            .message-orange:after {
                content: '';
                position: absolute;
                width: 0;
                height: 0;
                border-bottom: 15px solid var(--Color-Btn);
                border-left: 15px solid transparent;
                border-right: 15px solid transparent;
                bottom: 0;
                right: -15px;
            }

            .message-orange:before {
                content: '';
                position: absolute;
                width: 0;
                height: 0;
                border-bottom: 17px solid var(--Color-Btn);
                border-left: 16px solid transparent;
                border-right: 16px solid transparent;
                bottom: -1px;
                right: -17px;
            }

        </style>
    </head>

    <body>        
        <div class="container">
            <div class="user-list">
                <%
                    rst = stmt.executeQuery("SELECT DISTINCT receiver FROM message where sender='" + session.getAttribute("SessionAID") + "'");
                    while (rst.next()) {

                %>
                <!-- User List -->
                <div class="user" id="user" onclick="ShowMsg(<%=rst.getString(1)%>)">
                    <img src="ViewProfile.jsp?name=<%=rst.getString(1)%>">
                    <% String AID = rst.getString(1);%>
                    <jsp:include page="ViewName.jsp">
                        <jsp:param name="AID" value="<%= AID%>" />
                    </jsp:include>
                </div>
                <%}%>                
            </div>
            <div class="main-right">
                <div class="chat-window" id="chat-window">
                    <!-- Chat Window -->
                    <div id="message">
                    </div>
                </div>
                <div class="message-input">
                    <input type="text" id="chat-input" placeholder="Type your message...">
                    <button id="msgsend" onclick="sendMessage()">Send</button>
                </div>
            </div>
            <script>
                var AID;
                function ShowMsg(i)
                {
                    AID=i;
                    var divToRefresh = document.getElementById("message");             
                    var xhr = new XMLHttpRequest();
                    xhr.open("GET", "fetch_messages.jsp?AID="+i, true);
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            divToRefresh.innerHTML = xhr.responseText;
                        }
                    };
                    xhr.send();                    
                }
                var users = document.querySelectorAll('.user');
                users.forEach(function(user) {
                    user.addEventListener('click', function() {
                        setTimeout(function() {
                            var message = document.getElementById("chat-window");                
                            message.scrollTop = message.scrollHeight;
                        }, 50);
            
                        users.forEach(function(u) {
                            u.classList.remove('active');
                        });
                        user.classList.add('active');
                    });
                });
                
                function sendMessage() {
                    var message = document.getElementById("chat-input").value;
                    var divToRefresh = document.getElementById("message"); 
                    var xhr = new XMLHttpRequest();
                    xhr.open("GET", "sendmessage.jsp?AID="+AID+"&message="+message+"", true);
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            divToRefresh.innerHTML = xhr.responseText;
                            message="";
                        }
                    };
                    xhr.send();
                }
                
                var msgsend = document.getElementById("msgsend");
                var messagev = document.getElementById("chat-input");

                msgsend.addEventListener("click", function() {
                    setTimeout(function() {
                        var messages = document.getElementById("chat-window");
                        messagev.value = "";
                        messages.scrollTop = messages.scrollHeight;
                    }, 500); // Delay of 0.5 seconds (500 milliseconds)
                });


                setInterval(function() {   
                    ShowMsg(AID);
                }, 100);
            </script>
    </body>
</html>