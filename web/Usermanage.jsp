<%@include file="Secure/Config.jsp" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/8fa998140f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
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
                padding-top: 40px;
            }

            .navname .sessionuser h2 {
                font-size: 22px;
                font-weight: bold;
                padding-left: 10px;
                padding-right: 30px;
                color: white;
                padding-top: 40px;
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
                bottom: 390px;
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

            input[type=file]::file-selector-button {
                margin-right: 20px;
                border: none;
                background: var(--Color-Btn);
                padding: 10px 20px;
                border-radius: 10px;
                color: #000;
                cursor: pointer;
                transition: background .2s ease-in-out;
            }

            input[type=file]::file-selector-button:hover {
                background: rgb(255, 230, 0);
            }
        </style>
    </head>

    <body>
        <%
            String AID = session.getAttribute("SessionAID").toString();
        %>

        <div class="main">

            <div class="center">
                <div class="leftdash">
                    <div class="toplogo"><img src="Images/Logo.png"><br></div>
                    <div class="menu-heading">
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Profile')"><i class="fa-solid fa-user"></i> Profile</a>
                        </div>
                        <h3><i class="fa-solid fa-address-card"></i> Account Management</h3>
                        <hr class="menu-hr">
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Achivements')"><i class="fa-solid fa-star"></i> Achivements</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Blog')"><i class="fa-solid fa-blog"></i> Blog</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'ModifyCV')"><i class="fa-solid fa-file-pen"></i> Modify CV</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'ProjectShowcase')"><i class="fa-solid fa-handshake"></i>Project Showcase</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Skills')"><i class="fa-solid fa-bolt"></i> Skills</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'addlanguage')"><i class="fa-solid fa-language"></i> Language</a>
                        </div>
                    </div>
                    <div class="menu-heading">
                        <h3><i class="fa-solid fa-gear"></i> Setting</h3>
                        <hr class="menu-hr">
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Privacy')"><i class="fa-solid fa-key"></i>Account Privacy</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Verify')"><i class="uil uil-comment-verify" ></i> Verify Account</a>
                        </div>
                        <div class="menu-option">
                            <a href="#" onclick="openPage(event, 'Contactyou')"><i class="fa-solid fa-phone"></i> Contact you</a>
                        </div>
                    </div>
                    <div class="menu-heading">         
                        <div class="menu-space"></div>
                        <div class="menu-option">
                            <a href="Loading.jsp?URL=logout.jsp"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                        </div>
                    </div>
                </div>
                <div class="rightdash">
                    <div class="navname">
                        <div class="admin-dashboard">
                            <h3>User Dashboard</h3>
                        </div>
                        <div class="sessionuser">
                            <img src="ViewProfile.jsp?name=<%=AID%>" alt="">
                            <h2>  <jsp:include page="ViewName.jsp">
                                    <jsp:param name="AID" value="<%= AID%>" />
                                </jsp:include></h2>

                        </div>
                    </div>
                    <div class="rightmain">

                        <%

                            rst = stmt.executeQuery("SELECT * FROM profile WHERE AID='" + AID + "'");
                            if (rst.next()) {

                        %>
                        <div id="Profile" class="tabcontent">
                            <form action="Recommends" enctype="multipart/form-data" method="post"> 
                                <fieldset class="made-up">
                                    <legend>Profile Information</legend>
                                    <img src="ViewProfile.jsp?name=<%=AID%>" width="150px" height="150px" style="position: relative;left:120px; bottom:80px; background-color: rebeccapurple;"/>

                                    <label for="User" style="font-size: 30px; position: absolute; left:900px; top: 420px" > <jsp:include page="ViewName.jsp">
                                            <jsp:param name="AID" value="<%=AID%>" />
                                        </jsp:include></label>
                                    <table>
                                        <tr>
                                            <td><label for="image">Profile Image</label></td>
                                            <td><input type="file" id="image" name="image" accept="image/*"></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="bio">Bio</label></td>
                                            <td> <textarea id="bio" name="bio" rows="4"><%= rst.getString("Bio")%></textarea></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="facebook">Facebook</label></td>
                                            <td><input type="text" id="facebook" value="<%= rst.getString("Facebook")%>" name="facebook"></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="LinkedIn">LinkedIn</label></td>
                                            <td><input type="text" id="LinkedIn" value="<%= rst.getString("LinkedIn")%>" name="LinkedIn"></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="instagram">Instagram</label></td>
                                            <td><input type="text" id="instagram" value="<%= rst.getString("Instagram")%>" name="instagram"></td>                                            
                                        </tr> 
                                    </table>
                                    <input type="submit" id="custombtn" value="Save">
                                </fieldset>
                            </form>
                        </div>
                        <%} else {%>
                        <div id="Profile" class="tabcontent">
                            <form action="Recommends" enctype="multipart/form-data" method="post"> 
                                <fieldset class="made-up">
                                    <legend>Profile Information</legend>
                                    <img src="ViewProfile.jsp?name=<%=AID%>" width="150px" height="150px" style="position: relative;left:120px; bottom:80px; background-color: rebeccapurple;"/>
                                    <label for="User" style="font-size: 30px; position: absolute; left:950px; top: 420px" > <jsp:include page="ViewName.jsp">
                                            <jsp:param name="AID" value="<%=AID%>" />
                                        </jsp:include></label>
                                    <table>
                                        <tr>
                                            <td><label for="image">Profile Image</label></td>
                                            <td><input type="file" id="image" name="image" accept="image/*"></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="bio">Bio</label></td>
                                            <td> <textarea id="bio" name="bio" rows="4"></textarea></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="facebook">Facebook</label></td>
                                            <td><input type="text" id="facebook" value="" name="facebook"></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="LinkedIn">LinkedIn</label></td>
                                            <td><input type="text" id="LinkedIn" value="" name="LinkedIn"></td>                                            
                                        </tr>
                                        <tr>
                                            <td><label for="instagram">Instagram</label></td>
                                            <td><input type="text" id="instagram" value="" name="instagram"></td>                                            
                                        </tr> 
                                    </table>
                                    <input type="submit" id="custombtn" value="Save">
                                </fieldset>
                            </form>
                        </div>
                        <%
                            }%>
                        <div id="ModifyCV" class="tabcontent" align="center">
                            <form action="UploadCV" enctype="multipart/form-data" method="post"> 
                                <fieldset class="made-up">
                                    <legend>Upload CV</legend>  
                                    <table>
                                        <tr>
                                            <td><label for="choose">Choose File</label></td>
                                            <td><input type="file" id="fname" name="file" required></td>                                            
                                        </tr>
                                    </table>
                                    <br>
                                    <input type="submit" id="custombtn" name="UploadCV" value="Save">
                                </fieldset>
                            </form>
                        </div>
                        <div id="Achivements" class="tabcontent">
                            <form action="Achievement" enctype="multipart/form-data" method="post">
                                <fieldset class="made-up">
                                    <legend>Achievement</legend> 
                                    <table>
                                        <tr>
                                            <td><label for="achievementTitle">Title</label></td>
                                            <td><input type="text" id="achievementTitle" name="achievementTitle"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="achievementImage">Achivement Image</label></td>
                                            <td><input type="file" id="achievementImage" name="achievementImage" accept="image/*"></td>
                                        </tr>
                                    </table>
                                    <input type="submit" id="custombtn" value="Add">
                                </fieldset>
                            </form>
                        </div>

                        <div id="Skills" class="tabcontent">
                            <fieldset class="made-up">
                                <legend>Add Skills</legend>                             
                                <div id="skillsContainer">
                                    <div class="skills-container">
                                        <form action="AddSkill.jsp" method="POST">
                                            <table>
                                                <tr>
                                                    <td><label for="Skill">Skill</label></td>
                                                    <td><input type="text" name="skills[]" placeholder="Enter a skill"></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="Percentage">Percentage</label></td>
                                                    <td><input type="number" name="skillPercentages[]" placeholder="Percentage"></td>
                                                </tr>
                                            </table>                                                       
                                            <input type="submit" id="custombtn" name="Skill" value="Add">
                                        </form>
                                    </div>
                                </div>
                            </fieldset>
                        </div>

                        <div id="ProjectShowcase" class="tabcontent">
                            <fieldset class="made-up">
                                <legend>Project Showcase</legend>
                                <div id="projectsContainer">
                                    <div class="project-container" align="">
                                        <form action="ProjectSC" enctype="multipart/form-data" method="post">
                                            <table>
                                                <tr>
                                                    <td><label for="projectTitle">Title</label></td>
                                                    <td><input type="text" id="projectTitle" name="projectTitle"></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="projectImage">Image</label></td>
                                                    <td><input type="file" id="projectImage" name="projectImage" accept="image/*"></td>
                                                </tr>
                                                <tr>
                                                    <td><label for="projectDescription">Description</label></td>
                                                    <td><textarea id="projectDescription" name="projectDescription" cols="25" rows="10"></textarea></td>
                                                </tr>
                                            </table>
                                            <input type="submit" id="custombtn" value="Add">
                                        </form>
                                    </div>
                                </div>
                            </fieldset>
                        </div>

                        <form action="BlogPost.jsp" method="post">
                            <div id="Blog" class="tabcontent">
                                <fieldset class="made-up">
                                    <legend>Blog</legend>
                                    <table>
                                        <tr>
                                            <td><label for="blogTitle">Title</label></td>
                                            <td><input type="text" id="blogTitle" name="blogTitle" oninput="previewBlog()"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="blogContent">Content</label></td>
                                            <td>
                                                <div>
                                                    <button type="button" onclick="formatText('bold')">Bold</button>
                                                    <button type="button" onclick="formatText('italic')">Italic</button>
                                                    <button type="button" onclick="formatText('underline')">Underline</button>
                                                    <button type="button" onclick="formatText('insertImage')">Add Image</button>
                                                    <button type="button" onclick="formatText('breakline')">Next Line</button>                                                    
                                                </div>
                                                <textarea id="blogContent" name="blogContent" rows="10" cols="70" oninput="previewBlog()"></textarea>
                                            </td>
                                        </tr>                                        
                                        <tr>
                                            <td><label for="Preview">Preview</label></td>
                                            <td><div class="blog-preview" id="blogPreview" style="font-weight: 100"></div></td>
                                        </tr>
                                    </table>
                                    <br>
                                    <input type="submit" id="custombtn" name="Blogs" value="Post">
                                </fieldset>
                            </div>
                        </form>
                        <%
                            rst = stmt.executeQuery("SELECT * FROM Account WHERE AID='" + AID + "'");
                            if (rst.next()) {

                        %>
                        <form action="AccountPrivacy.jsp" method="POST">
                            <div id="Privacy" class="tabcontent">
                                <fieldset class="made-up">
                                    <legend>Privacy</legend>
                                    <table>
                                        <tr>
                                            <td><label for="PrivacyName">Name</label></td>
                                            <td><input type="text" id="PrivacyName" value="<%=rst.getString("Name")%>" name="PrivacyName"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="PrivacyDOB">DOB</label></td>
                                            <td><input type="date" id="PrivacyDOB" value="<%=rst.getString("DOB")%>" name="PrivacyDOB"></td>
                                        </tr>
                                        <tr>
                                            <td> <label for="PrivacyEmail">Email</label></td>
                                            <td><input type="text" id="PrivacyEmail" value="<%=rst.getString("Email")%>" name="PrivacyEmail"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="PrivacyPassword">Password</label></td>
                                            <td> <input type="password" id="PrivacycPassword" value="<%=rst.getString("Password")%>" name="PrivacyPassword"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="PrivacyAddress">Address</label></td>
                                            <td><textarea name="PrivacyAddress" id="PrivacyAddress" cols="50" rows="10"><%=rst.getString("Address")%></textarea></td>
                                        </tr>
                                    </table>
                                    <input type="submit" id="custombtn" name="AccountPrivacy" value="Save">
                                </fieldset>
                            </div>
                        </form>
                        <%} else {%>
                        <form action="AccountPrivacy.jsp" method="POST">
                            <div id="Privacy" class="tabcontent">
                                <fieldset class="made-up">
                                    <legend>Privacy</legend>
                                    <table>
                                        <tr>
                                            <td><label for="PrivacyName">Name</label></td>
                                            <td><input type="text" id="PrivacyName" name="PrivacyName"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="PrivacyDOB">DOB</label></td>
                                            <td><input type="date" id="PrivacyDOB" name="PrivacyDOB"></td>
                                        </tr>
                                        <tr>
                                            <td> <label for="PrivacyEmail">Email</label></td>
                                            <td><input type="text" id="PrivacyEmail" name="PrivacyEmail"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="PrivacyPassword">Password</label></td>
                                            <td> <input type="password" id="PrivacycPassword" name="PrivacyPassword"></td>
                                        </tr>
                                        <tr>
                                            <td><label for="PrivacyAddress">Address</label></td>
                                            <td><textarea name="PrivacyAddress" id="PrivacyAddress" cols="50" rows="10"></textarea></td>
                                        </tr>
                                    </table>
                                    <input type="submit" id="custombtn" name="AccountPrivacy" value="Save">
                                </fieldset>
                            </div>
                        </form>
                        <%}%>
                        <form action="RequestVerification.jsp" method="POST">
                            <div id="Verify" class="tabcontent">
                                <fieldset class="made-up">
                                    <legend>Request Verification</legend>
                                    <input type="submit" id="custombtn" name="RequestVerification" value="Request Verification">
                                </fieldset>
                            </div>
                        </form>
                        <div id="Contactyou" class="tabcontent">
                            <fieldset class="made-up">
                                <legend>Contacts</legend>
                                <table id="customtable" style="position: relative; top:-80px; left:-250px;">                                    
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>PhoneNo</th>
                                    <th>Message</th>                                
                                    <%
                                        rst = stmt.executeQuery("SELECT * FROM contactus WHERE AID='" + AID + "'");
                                        while (rst.next()) {
                                    %>

                                    <tr>                             
                                        <td><%=rst.getString(2)%></td>
                                        <td><%=rst.getString(3)%></td>
                                        <td><%=rst.getString(4)%></td>
                                        <td><%=rst.getString(5)%></td>                                       
                                    </tr>
                                    <%}%>

                                </table>
                            </fieldset>
                        </div>
                        <div class="tabcontent" id="addlanguage">
                            <fieldset class="made-up">
                                <legend>Language</legend>
                                <form action="AddLanguage.jsp" method="POST"> 
                                <table>
                                    <tr>
                                        <td>Langugage</td>
                                        <td><input type="text" id="usernameInput"></td>
                                    </tr>
                                </table>
                                <input type="submit" id="custombtn" value="Add" name="Submit">
                                </form><br><br>
                                <table id="customtable">


                                </table>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.getElementById("Profile").style.display = "block";

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
        
        function formatText(action) {
            const content = document.getElementById('blogContent');
            const startPos = content.selectionStart;
            const endPos = content.selectionEnd;
            var selectedText = content.value.substring(startPos, endPos);

            switch (action) {
                case 'bold':
                    selectedText = "<strong>"+selectedText+"</strong>";
                    break;
                case 'italic':
                    selectedText = "<em>"+selectedText+"</em>";
                    break;
                case 'underline':
                    selectedText = "<u>"+selectedText+"</u>";
                    break;
                case 'insertImage':
                    selectedText = "<img src=\""+selectedText+"\" width=\"200px\" height=\"200px\" >";
                    break;
                case 'breakline':
                    selectedText = "<br/>";
                    break;
                default:
                    break;
            }

            const updatedContent =
                content.value.substring(0, startPos) +
                selectedText +
                content.value.substring(endPos);

            content.value = updatedContent;
            content.focus();
        }

        function previewBlog() {
            const title = document.getElementById('blogTitle').value;
            const content = document.getElementById('blogContent').value;
                   

            const blogPreview = document.getElementById('blogPreview');
            blogPreview.innerHTML = '';

            const titleElement = document.createElement('h3');
            titleElement.textContent = title;
            blogPreview.appendChild(titleElement);

            const contentElement = document.createElement('div');
            contentElement.innerHTML = content;
            blogPreview.appendChild(contentElement);
        }
    </script>
    <%@include file="footer.jsp" %>
</body>

</html>