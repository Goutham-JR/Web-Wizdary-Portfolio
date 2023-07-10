<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Secure/Config.jsp" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Menu and Form Example</title>
        <script src="https://kit.fontawesome.com/8fa998140f.js" crossorigin="anonymous"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
        <style>
            body{
                background-color: #666666;
            }
            .menu {
                width: 200px;
                background-color: #f1f1f1;
            }

            .menu ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .menu li {
                position: relative;
            }

            .menu li button {
                display: block;
                padding: 10px;
                border: none;
                color: #000;
            }

            .menu li a {
                display: block;
                padding: 10px;
                text-decoration: none;
                color: #000;
            }


            .menu .arrow::after {
                content: "\25BE";
            }

            .menu .arrow.up::after {
                content: "\25B4";
            }

            .submenu {
                display: block;
                padding-left: 20px;
                position: relative;
                top: -5px;
                left: 20px;
            }

            .form-container {
                position: absolute;
                left: 40%;
            }

            .form-container input[type="text"],
            .form-container input[type="file"] {
                margin-bottom: 10px;
            }

            #account-arrow,
            #setting-arrow {
                position: absolute;
                right: 50px;
            }

            .form-container label {
                display: block;
                margin-bottom: 5px;
            }

            .form-container input[type="password"],
            .form-container input[type="text"],
            .form-container input[type="file"],
            .form-container input[type="date"] {
                width: 100%;
                padding: 5px;
                margin-bottom: 10px;
            }

            .form-container textarea {
                width: 100%;
                padding: 5px;
                margin-bottom: 10px;
            }

            .form-container input[type="submit"] {
                color: var(--Color-Btn);
                cursor: pointer;
                font-size: 16px;
                font-weight: 400;
                line-height: 45px;
                margin: 0 0 2em;
                position: relative;
                width: 100%;
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

            .form-container input[type="submit"]:after {
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


            .form-container input[type="submit"]:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .form-container input[type="submit"]:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }


            .skills-container {
                margin-bottom: 20px;
            }

            .skills-container input[type="text"],
            .skills-container input[type="number"] {
                width: 60%;
                display: inline-block;
                margin-bottom: 10px;
            }

            .add-skill-btn {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 5px 10px;
                cursor: pointer;
            }

            .project-container {
                margin-bottom: 20px;
            }

            .project-container input[type="text"],
            .project-container textarea {
                width: 100%;
                padding: 5px;
                margin-bottom: 10px;
            }

            .blog-preview {
                border: 1px solid #ccc;
                padding: 10px;
            }

            .blog-preview img {
                max-width: 100%;
                height: auto;
            }

            .tabcontent {
                display: none;
                margin: 0px 20px;
            }

            .tabcontent h2 {
                text-align: center;
            }

            .main-menu {
                display: flex;
                top:0;
            }
        </style>
        <script>

            window.onload = function () {
                var accountMenu = document.getElementById("account");
                var accountSubmenu = document.getElementById("account-submenu");
                var accountArrow = document.getElementById("a-caret-down");
                var settingMenu = document.getElementById("setting");
                var settingSubmenu = document.getElementById("setting-submenu");
                var settingArrow = document.getElementById("fa-caret-down");
                document.getElementById("Profile").style.display = "block";

                accountMenu.addEventListener("click", function () {
                    accountSubmenu.style.display = accountSubmenu.style.display === "none" ? "block" : "none";
                });

                settingMenu.addEventListener("click", function () {
                    settingSubmenu.style.display = settingSubmenu.style.display === "none" ? "block" : "none";
                });
            };;


            function addSkillField() {
                const skillsContainer = document.getElementById('skillsContainer');

                const skillContainer = document.createElement('div');
                skillContainer.classList.add('skills-container');

                const skillInput = document.createElement('input');
                skillInput.type = 'text';
                skillInput.name = 'skills[]';
                skillInput.placeholder = 'Enter a skill';

                const percentageInput = document.createElement('input');
                percentageInput.type = 'number';
                percentageInput.name = 'skillPercentages[]';
                percentageInput.placeholder = 'Percentage';
                percentageInput.min = '0';
                percentageInput.max = '100';

                const addButton = document.createElement('button');
                addButton.classList.add('add-skill-btn');
                addButton.type = 'button';
                addButton.textContent = '+';
                addButton.addEventListener('click', addSkillField);

                skillContainer.appendChild(skillInput);
                skillContainer.appendChild(percentageInput);
                skillContainer.appendChild(addButton);
                skillsContainer.appendChild(skillContainer);
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

        </script>


    </head>

    <body>
        
        <%
            String AID = session.getAttribute("SessionAID").toString();
            if (request.getMethod().equalsIgnoreCase("POST")) {
                if (request.getParameter("AccountPrivacy") != null) {
                    String Name = request.getParameter("PrivacyName");
                    String DOB = request.getParameter("PrivacyDOB");
                    String Email = request.getParameter("PrivacyEmail");
                    String Password = request.getParameter("PrivacyPassword");
                    String Address = request.getParameter("PrivacyAddress");
                    stmt.executeUpdate("UPDATE Account SET Name='" + Name + "', DOB='" + DOB + "', Email='" + Email + "', Password='" + Password + "', Address='" + Address + "' WHERE AID='" + AID + "'");
                    response.sendRedirect("Usermanage.jsp");
                } else if (request.getParameter("RequestVerification") != null) {
                    stmt.executeUpdate("INSERT INTO Verification(AID, Username, Date)values('" + AID + "', '" + session.getAttribute("SessionUser") + "', NOW())");
                    response.sendRedirect("Usermanage.jsp");
                } else if (request.getParameter("Blogs") != null) {
                    String blogTitle = request.getParameter("blogTitle");
                    String blogContent = request.getParameter("blogContent");
                    stmt.executeUpdate("INSERT INTO blog(AID, Title, Description, Date)values('" + AID + "', '" + blogTitle + "', '" + blogContent + "', NOW())");
                    response.sendRedirect("Usermanage.jsp");
                } else if (request.getParameter("Skill") != null) {
                    String skill = request.getParameter("skills[]");
                    String percentage = request.getParameter("skillPercentages[]");
                    stmt.executeUpdate("INSERT INTO Skills (AID, Skills, Percentage) VALUES ('" + AID + "', '" + skill + "', '" + percentage + "')");
                    response.sendRedirect("Usermanage.jsp");
                }
            }
        %>

        <div class="main-menu">
            <div class="menu">
                <ul>
                    <li><button class="left-btn" onclick="openPage(event, 'Profile')"><i class="fa-solid fa-user"></i>
                            Profile</button></li>
                    <li id="account">
                        <button class="left-btn"><i class="fa-solid fa-address-card"></i> Account <i
                                class="fa-solid fa-caret-down"></i></button>
                        <ul class="submenu" id="account-submenu">
                            <li><a href="#" onclick="openPage(event, 'Achivements')"><i class="fa-solid fa-star"></i> Achivements</a>
                            </li>
                            <li><a href="#" onclick="openPage(event, 'Blog')"><i class="fa-solid fa-blog"></i> Blog</a></li>
                            <li><a href="#" onclick="openPage(event, 'ModifyCV')"><i class="fa-solid fa-file-pen"></i> Modify CV</a></li>
                            <li><a href="#" onclick="openPage(event, 'ProjectShowcase')"><i class="fa-solid fa-handshake"></i> Project Showcase</a></li>
                            <li><a href="#" onclick="openPage(event, 'Skills')"><i class="fa-solid fa-bolt"></i> Skills</a></li>
                        </ul>
                    </li>
                    <li id="setting">
                        <button class="left-btn"><i class="fa-solid fa-gear"></i> Settings <i
                                class="fa-solid fa-caret-down"></i></button>
                        <ul class="submenu" id="setting-submenu">
                            <li><a href="#" onclick="openPage(event, 'Privacy')"><i class="fa-solid fa-key"></i> Account Privacy</a></li>
                            <li><a href="#" onclick="openPage(event, 'Verify')"><i class="uil uil-comment-verify" ></i> Verify Account</a></li>
                            <li><a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="form-container">


                <%

                    rst = stmt.executeQuery("SELECT * FROM profile WHERE AID='" + AID + "'");
                    if (rst.next()) {

                %>
                <div id="Profile" class="tabcontent">
                    <form action="Recommends" enctype="multipart/form-data" method="post"> 
                        <h2>Profile Information</h2>
                        <img src="ViewProfile.jsp?name=<%=AID%>" width="150px" height="150px"
                             style="position: relative;left: 60px; border-radius: 50%;background-color: rebeccapurple;"/>

                        <label for="User" style="padding-left: 100px;"> <jsp:include page="ViewName.jsp">
                                <jsp:param name="AID" value="<%=AID %>" />
                            </jsp:include></label>
                        <label for="image">Profile Image:</label>
                        <input type="file" id="image" name="image" accept="image/*">
                        <label for="bio">Bio:</label>
                        <textarea id="bio" name="bio" rows="4"><%= rst.getString("Bio")%></textarea>
                        <label for="facebook">Facebook:</label>
                        <input type="text" id="facebook"value="<%= rst.getString("Facebook")%>" name="facebook">
                        <label for="LinkedIn">LinkedIn:</label>
                        <input type="text" id="LinkedIn" value="<%= rst.getString("LinkedIn")%>" name="LinkedIn">
                        <label for="instagram">Instagram:</label>
                        <input type="text" id="instagram" value="<%= rst.getString("Instagram")%>" name="instagram">
                        <input type="submit" value="Save">
                    </form>
                </div>
                <%} else {%>
                <div id="Profile" class="tabcontent">
                    <form action="Recommends" enctype="multipart/form-data" method="post"> 
                        <h2>Profile Information</h2>
                        <img src="ViewProfile.jsp?name=<%=AID%>" width="150px" height="150px"
                             style="position: relative;left: 60px; border-radius: 50%;background-color: rebeccapurple;"/>

                        <label for="User" style="padding-left: 20px;"><label for="User" style="padding-left: 100px;"> <jsp:include page="ViewName.jsp">
                                <jsp:param name="AID" value="<%=AID %>" />
                            </jsp:include></label></label>
                        <label for="image">Profile Image:</label>
                        <input type="file" id="image" name="image" accept="image/*">
                        <label for="bio">Bio:</label>
                        <textarea id="bio" name="bio" rows="4"></textarea>
                        <label for="facebook">Facebook:</label>
                        <input type="text" id="facebook"value="" name="facebook">
                        <label for="LinkedIn">LinkedIn:</label>
                        <input type="text" id="LinkedIn" value="" name="LinkedIn">
                        <label for="instagram">Instagram:</label>
                        <input type="text" id="instagram" value="" name="instagram">
                        <input type="submit" value="Save">
                    </form>
                </div>
                <%
                    }%>
                <div id="ModifyCV" class="tabcontent" align="center">
                    <form action="UploadCV" enctype="multipart/form-data" method="post"> 
                        <h2>Upload CV</h2>                
                        <input type="file" id="fname" name="file" style="padding-left:120px;padding-top: 20px;" required>
                        <input type="submit" name="UploadCV" value="Save">
                    </form>
                </div>
                <div id="Achivements" class="tabcontent">
                    <form action="Achievement" enctype="multipart/form-data" method="post">
                        <h2>Achievement</h2>
                        <label for="achievementTitle">Title:</label>
                        <input type="text" id="achievementTitle" name="achievementTitle">
                        <label for="achievementImage">Image:</label>
                        <input type="file" id="achievementImage" name="achievementImage" accept="image/*">
                        <input type="submit" value="Add">
                    </form>
                </div>

                <div id="Skills" class="tabcontent">
                    <h2>Skills</h2>
                    <div id="skillsContainer">
                        <div class="skills-container">
                            <form action="Usermanage.jsp" method="POST">
                                <input type="text" name="skills[]" placeholder="Enter a skill">
                                <input type="number" name="skillPercentages[]" placeholder="Percentage"><br/>                                
                                <input type="submit" name="Skill" value="Add">
                            </form>
                        </div>
                    </div>
                </div>

                <div id="ProjectShowcase" class="tabcontent">
                    <h2>Project Showcase</h2>
                    <div id="projectsContainer">
                        <div class="project-container" align="">
                            <form action="ProjectSC" enctype="multipart/form-data" method="post">
                                <label for="projectTitle">Title:</label>
                                <input type="text" id="projectTitle" name="projectTitle">
                                <label for="projectImage">Image:</label>
                                <input type="file" id="projectImage" name="projectImage" accept="image/*">
                                <label for="projectDescription">Description:</label>
                                <textarea id="projectDescription" name="projectDescription" rows="4"></textarea>
                                <input type="submit" value="Add">
                            </form>
                        </div>
                    </div>
                </div>

                <form action="Usermanage.jsp" method="POST">
                    <div id="Blog" class="tabcontent">
                        <h2>Blog</h2>
                        <label for="blogTitle">Title:</label>
                        <input type="text" id="blogTitle" name="blogTitle" oninput="previewBlog()">
                        <label for="blogContent">Content:</label>
                        <div>
                            <button type="button" onclick="formatText('bold')">Bold</button>
                            <button type="button" onclick="formatText('italic')">Italic</button>
                            <button type="button" onclick="formatText('underline')">Underline</button>
                            <button type="button" onclick="formatText('insertImage')">Add Image</button>
                            <button type="button" onclick="formatText('breakline')">Next Line</button>
                        </div>
                        <textarea id="blogContent" name="blogContent" rows="10" oninput="previewBlog()"></textarea>                   
                        <div class="blog-preview" id="blogPreview"></div>
                        <br>
                        <input type="submit" name="Blogs" value="Post">
                    </div>
                </form>
                <%
                    rst = stmt.executeQuery("SELECT * FROM Account WHERE AID='" + AID + "'");
                    if (rst.next()) {

                %>
                <form action="Usermanage.jsp" method="POST">
                    <div id="Privacy" class="tabcontent">
                        <h2>Privacy</h2>
                        <label for="PrivacyName">Name:</label>
                        <input type="text" id="PrivacyName" value="<%=rst.getString("Name")%>" name="PrivacyName">
                        <label for="PrivacyDOB">DOB:</label>
                        <input type="date" id="PrivacyDOB" value="<%=rst.getString("DOB")%>" name="PrivacyDOB">
                        <label for="PrivacyEmail">Email:</label>
                        <input type="text" id="PrivacyEmail" value="<%=rst.getString("Email")%>" name="PrivacyEmail">
                        <label for="PrivacyPassword">Password:</label>
                        <input type="password" id="PrivacycPassword" value="<%=rst.getString("Password")%>" name="PrivacyPassword">
                        <label for="PrivacyAddress">Address:</label>
                        <textarea name="PrivacyAddress" id="PrivacyAddress" cols="10" rows="10"><%=rst.getString("Address")%></textarea>
                        <br>
                        <input type="submit" name="AccountPrivacy" value="Save">
                    </div>
                </form>
                <%} else {%>
                <form action="Usermanage.jsp" method="POST">
                    <div id="Privacy" class="tabcontent">
                        <h2>Privacy</h2>
                        <label for="PrivacyName">Name:</label>
                        <input type="text" id="PrivacyName" name="PrivacyName">
                        <label for="PrivacyDOB">DOB:</label>
                        <input type="date" id="PrivacyDOB" name="PrivacyDOB">
                        <label for="PrivacyEmail">Email:</label>
                        <input type="text" id="PrivacyEmail" name="PrivacyEmail">
                        <label for="PrivacyPassword">Password:</label>
                        <input type="password" id="PrivacycPassword" name="PrivacyPassword">
                        <label for="PrivacyAddress">Address:</label>
                        <textarea name="PrivacyAddress" id="PrivacyAddress" cols="10" rows="10"></textarea>
                        <br>
                        <input type="submit" name="AccountPrivacy" value="Save">
                    </div>
                </form>
                <%}%>
                <form action="Usermanage.jsp" method="POST">
                    <div id="Verify" class="tabcontent">
                        <h2>Request Verification</h2>

                        <br>
                        <input type="submit" name="RequestVerification" value="Request Verification">
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>