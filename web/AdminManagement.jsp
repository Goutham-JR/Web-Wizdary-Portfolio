<%@include file="Secure/Config.jsp" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/8fa998140f.js" crossorigin="anonymous"></script>
        <style>
            :root {
                --Color-Btn: rgb(255, 255, 0);
                --Color-input-border: #fffb00;
                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);
                --Color-Background-Color: #202327;
            }

            html,
            body {
                height: 100%;
                margin: 0;
                padding: 0;
            }

            .main {
                display: flex;
                flex-direction: column;
                height: 100%;
            }

            .header {
                height: 10%;
                background-color: #f2f2f2;
            }

            .center {
                display: flex;
                flex-grow: 1;
                background-color: #ffffff;
            }

            .leftdash {
                width: 20%;
                background-color: var(--Color-Background-Color);
                color: white;
                padding: 10px;
            }

            .rightdash {
                flex-grow: 1;
                display: flex;
                flex-direction: column;
            }

            .navname {
                height: 10%;
                background-color: var(--Color-Background-Color);
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

            .navname .sessionuser {
                display: flex;
                align-items: center;
            }

            .navname .sessionuser img {
                width: 40px;
                height: 40px;
                margin-left: 10px;
            }

            .navname .sessionuser h2 {
                font-size: 22px;
                font-weight: bold;
                padding-left: 10px;
                padding-right: 30px;
                color: white;
            }


            .rightmain {
                flex-grow: 1;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .footer {
                height: 10%;
                background-color: #f2f2f2;
            }

            .toplogo {
                height: 10%;
                padding-bottom: 30px;
            }
            .toplogo img{
                width: 300px;
                height: 100px;                
            }

            .menu-heading {
                margin-top: 10px;
                font-size: 18px;
                font-weight: bolder;
                text-align: center;
            }

            .menu-hr {
                border-width: 0 0 1px;
                color: var(--Color-input-border);
                border-image: linear-gradient(90deg,
                    rgba(var(--Color-input-border), 0),
                    rgba(var(--Color-input-border), 1) 50%,
                    rgba(var(--Color-input-border), 0) 100%) 0 0 100%;
                border-style: solid;
            }

            .menu-option {
                font-weight: 100;
                margin-bottom: 10px;
            }

            .menu-option:last-child {
                margin-bottom: 10px;
            }

            .menu-option a {
                color: white;
                position: relative;
                text-decoration: none;
            }

            .menu-option a:hover {
                color: var(--Color-input-border);
                position: relative;
                text-decoration: none;
            }

            .menu-option a::before {
                content: '';
                position: absolute;
                width: 100%;
                height: 2px;
                border-radius: 4px;
                background-color: var(--Color-input-border);
                bottom: 0;
                left: 0;
                transform-origin: right;
                transform: scaleX(0);
                transition: transform .3s ease-in-out;
            }

            .menu-option a:hover::before {
                transform-origin: left;
                transform: scaleX(1);
            }

            .menu-space {
                margin-bottom: 20px;
            }

            .navname .admin-dashboard {
                margin-left: 20px;
                font-size: 25px;
                color: white;
            }

            .made-up {
                padding: 100px;
                padding-left: 300px;
                padding-right: 300px;
                background-color: #dddddd;
            }

            .made-up table {
                margin-bottom: 10px;
            }

            .made-up table td {
                text-align: left;
                padding-right: 10px;
                font-size: 25px;
                font-weight: 900;
                color: black;
            }

            .made-up legend {
                color: black;
                font-weight: bolder;
                font-size: 30px;
            }

            .made-up input[type="text"],
            .made-up input[type="password"],
            .made-up input[type="email"],
            select {
                text-align: left;
                padding: 10px;
                margin-bottom: 10px;
                font-size: 16px;
            }

            #custombtn {
                display: block;
                margin: 0 auto;
            }

            #custombtn {
                color: var(--Color-Btn);
                cursor: pointer;
                font-size: 16px;
                font-weight: 400;
                line-height: 45px;
                width: 300px;
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
            }

            #custombtn:after {
                background: black;
                content: "";
                height: 155px;
                left: -75px;
                opacity: 0.2;
                position: absolute;
                top: -50px;
                transform: rotate(35deg);
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
                width: 50px;
                z-index: -10;
            }


            #custombtn:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .tabcontent {
                display: none;
            }

            #customtable {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customtable td,
            #customtable th {
                border: 1px solid #ddd;
                padding: 8px;
            }
             #customtable td a{
                text-decoration: none;
                color: var(--Color-Btn);
            }
            #customtable td a:hover{
                text-decoration: none;
                color: white;
            }

            #customtable tr:nth-child(even) {
                background-color: #666666;
            }

            #customtable tr:hover {
                background-color: orange;
            }

            #customtable th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: var(--Color-Btn);
                color: black;
            }

            .Count-Content {
                display: flex;
                justify-content: space-around;
                align-items: center;
                background-color: #f2f2f2;
                padding: 20px;
                position: absolute;
                bottom: 300px;
                left: 600px;
            }

            .Count-User {
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-right: 20px;
                /* Add space between each Count-User */
            }

            .Count-User:last-child {
                margin-right: 0;
                /* Remove margin from the last Count-User */
            }

            .Count-User:nth-child(1) {
                background-color: red;
                padding: 50px;
                padding-left: 180px;
                padding-right: 180px;
            }

            .Count-User:nth-child(2) {
                background-color: yellow;
                padding: 50px;
                padding-left: 180px;
                padding-right: 180px;
            }

            .Count-User:nth-child(3) {
                background-color: green;
                padding: 50px;
                padding-left: 180px;
                padding-right: 180px;
            }

            .counter-icon {
                font-size: 24px;
                color: #333;
            }

            .counter-icon {
                font-size: 60px;
            }

            .Count p {
                margin: 0;
                font-size: 26px;
                color: #333;
            }
        </style>
    </head>

    <body>
        <div class="main">           
            <div class="center">
                <div class="leftdash">
                    <div class="toplogo"><img src="Images/Logo.png"></div>
                    <div class="menu-heading">
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Dashboard')"><i class="fa-solid fa-chart-line"></i> Dashboard</a>
                        </div>
                        <h3>User Management</h3>
                        <hr class="menu-hr">          
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'SearchUser')"><i class="fa-solid fa-magnifying-glass"></i> Search
                                User</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'showallusers')">Show All Users</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'UpgradeAccount')"><i class="fa-solid fa-pen-to-square"></i> Upgrade
                                Account</a>
                        </div>
                    </div>
                    <div class="menu-heading">
                        <h3>Verification</h3>
                        <hr class="menu-hr">
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'ListofRequestVerification')">List of Request Verification</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'ListofVerifiedUsers')">List of Verified Users</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'RemoveVerification')"><i class="fa-solid fa-ban"></i> Remove
                                Verification</a>
                        </div>
                    </div>
                    <div class="menu-heading">
                        <h3>Feedback / Report</h3>
                        <hr class="menu-hr">
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'FeedbackorReport')"><i class="fa-solid fa-flag"></i> View Feedback /
                                Report</a>
                        </div>
                        <div class="menu-space"></div>
                        <div class="menu-option">
                            <a href="Loading.jsp?URL=logout.jsp"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                        </div>
                    </div>
                </div>
                <div class="rightdash">
                    <div class="navname">
                        <div class="admin-dashboard">
                            <h3>Admin Dashboard</h3>
                        </div>
                        <div class="sessionuser">
                            <img src="Images/confused.png" alt="">
                            <h2>Goutham</h2>
                        </div>
                    </div>
                    <div class="rightmain">                    
                        <div class="tabcontent" id="SearchUser">
                            <fieldset class="made-up">
                                <legend>Search User</legend>
                                <table>
                                    <tr>
                                        <td>Username</td>
                                        <td><input type="text" id="usernameInput"></td>
                                    </tr>
                                </table>
                                <input type="submit" id="custombtn" value="Find" name="SearchUser" onclick="findUser()"><br><br>
                                <table id="customtable">


                                </table>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="showallusers">
                            <fieldset class="made-up">
                                <legend>Show All User</legend>
                                <table id="customtable" style="position: relative; top:-80px; left:-250px;">
                                    <th>AID</th>
                                    <th>Name</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Email</th>
                                    <th>PhoneNo</th>
                                    <th>Address</th>
                                    <th>AccountType</th>
                                    <th>DOB</th>
                                    <%
                                        rst = stmt.executeQuery("SELECT * FROM account");
                                        while (rst.next()) {
                                    %>

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
                                    <%}%>

                                </table>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="UpgradeAccount">
                            <fieldset class="made-up">
                                <legend>Upgrade Account</legend>
                                <form action="UpgradeAccount.jsp" method="POST">
                                    <table>
                                        <tr>
                                            <td>Username</td>
                                            <td><input type="text" name="Username"></td>
                                        </tr>
                                        <tr>
                                            <td>Type</td>
                                            <td>
                                                <select name="AccountType" id="AccountType">
                                                    <option value="Normal">Normal</option>
                                                    <option value="Verified">Verified</option>
                                                    <option value="Admin">Admin</option>
                                                    <option value="Banned">Banned</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </table>
                                    <input type="submit" id="custombtn" value="Update" name="AccountType">
                                </form>                                
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="ListofRequestVerification">
                            <fieldset class="made-up">
                                <legend>List of Request Verification</legend>
                                <table id="customtable" style="position: relative; top:-80px; left:0px;">
                                    <th>AID</th>
                                    <th>Name</th>
                                    <th>Username</th> 
                                    <th>Date</th> 
                                    <th>Status</th>

                                    <%
                                        rst = stmt.executeQuery("SELECT * FROM Verification ORDER BY Date");
                                        while (rst.next()) {
                                    %>

                                    <tr>
                                        <td><%=rst.getString(1)%></td>
                                        <td><jsp:include page="ViewName.jsp">
                                                <jsp:param name="AID" value="<%=rst.getString(1)%>" />
                                            </jsp:include></td>
                                        <td><%=rst.getString(2)%></td>
                                        <td><%=rst.getString(3)%></td>
                                        <td><a href="Loading.jsp?URL=ApproveVerification.jsp?AID=<%=rst.getString(1)%>">Approve</a> / <a href="Loading.jsp?URL=DeclineVerification.jsp?AID=<%=rst.getString(1)%>">Decline</a></td>

                                    </tr>
                                    <%}%>
                                </table>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="ListofVerifiedUsers">
                            <fieldset class="made-up">
                                <legend>List of Verified Users</legend>
                                <table id="customtable">
                                    <th>AID</th>
                                    <th>Name</th>
                                    <th>Username</th>
                                    <th>AccountType</th>
                                    <%
                                        rst = stmt.executeQuery("SELECT * FROM account WHERE AccountType='Verified'");
                                        while (rst.next()) {
                                    %>

                                    <tr>
                                        <td><%=rst.getString(1)%></td>
                                        <td><%=rst.getString(2)%></td>
                                        <td><%=rst.getString(3)%></td>
                                        <td><%=rst.getString(8)%></td>                                     
                                    </tr>
                                    <%}%>
                                </table>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="RemoveVerification">
                            <fieldset class="made-up">
                                <legend>Remove Verification</legend>
                                <form action="UpgradeAccount.jsp" method="POST">
                                <table>
                                    <tr>
                                        <td>Username</td>
                                        <td><input type="text" name="Username"></td>
                                    </tr>
                                </table>
                                    <input type="hidden" name="AccountType" value="Normal">
                                <input type="submit" id="custombtn" value="Remove" name="RemoveVerification">
                                </form>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="FeedbackorReport">
                            <fieldset class="made-up">
                                <legend>Feedback / Report</legend>
                                <table id="customtable">
                                    <th>AID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Message</th>
                                    <th>Date</th>
                                    <%
                                        rst = stmt.executeQuery("SELECT * FROM Report");
                                        while (rst.next()) {
                                    %>

                                    <tr>
                                        <td><%=rst.getString(1)%></td>
                                        <td><%=rst.getString(2)%></td>
                                        <td><%=rst.getString(3)%></td>
                                        <td><%=rst.getString(4)%></td> 
                                        <td><%=rst.getString(5)%></td> 
                                    </tr>
                                    <%}%>
                                </table>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="Dashboard">
                            <div class="Count-Content">
                                <div class="Count-User">
                                    <div class="counter-icon">
                                        <i class="fa-solid fa-user"></i>
                                    </div>
                                    <div class="Count">
                                        <p>500</p>
                                        <p>Users</p>
                                    </div>
                                </div>
                                <div class="Count-User">
                                    <div class="counter-icon">
                                        <i class="fa-solid fa-user"></i>
                                    </div>
                                    <div class="Count">
                                        <p>500</p>
                                        <p>Blog</p>
                                    </div>
                                </div>
                            </div>
                            <div class="right-main-body">

                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
        <script>
            document.getElementById("Dashboard").style.display = "block";

            function openPage(evt, PageName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(PageName).style.display = "block";
                evt.currentTarget.className += " active";
            }
    
            function findUser() {
                // Get the username from the input field
                var username = document.getElementById("usernameInput").value;
  
                // Make an AJAX request
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        // Update the table with the fetched data
                        document.getElementById("customtable").innerHTML = this.responseText;
                    }
                };
  
                // Send the AJAX request to the server
                xhttp.open("GET", "SearchUserData.jsp?username=" + username, true);
                xhttp.send();
            }
        </script>
        <%@include file="footer.jsp" %>
    </body>

</html>