<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="Secure/Config.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" />
        <style>
            :root {
                --Color-Btn: rgb(255, 255, 0);
                --Color-input-border: #fffb00;
                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);
                --Color-Background-Color: #202327;
            }

            /* for the pen */
            html,
            body {
                margin: 0;
                min-height: 100%;
                background-color: #f2f2f2;
            }


            .profile-rectangle {
                height: 300px;
                background-color: var(--Color-Background-Color);
                position: relative;
                overflow: hidden;
                top: -90px;
                margin: 10px 40px;
                border-radius: 10px;
                color: white;
            }


            .profile-about {
                position: relative;
                margin: 20px;
                margin-left: 300px;

            }

            .profile-about h2 {
                position: relative;
                top: 0px;
                left: 0;
                font-size: 30px;
                font-variant: small-caps;
            }

            .profile-about p {
                font-size: 15px;
                font-variant: small-caps;
                position: relative;
                left: 0px;
                max-width: 400px;
            }



            .Profile-Message button {
                color: var(--Color-Btn);
                cursor: pointer;
                font-size: 16px;
                font-weight: 400;
                line-height: 45px;
                position: absolute;
                top: 220px;
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
                margin: 20px;
            }

            .Profile-Message button:after {
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


            .Profile-Message button:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .Profile-Message button:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }

            .Profile-banner {
                width: 100%;
                height: 250px;
            }

            .Profile-Img {
                height: 250px;
                width: 250px;
                position: absolute;
                top: 230px;
                margin: 5px 50px;
                z-index: 99;
                border-radius: 20px;
            }

            .uil .fa {
                padding-left: 5px;
            }

            #instagram {
                font-size: 25px;
                background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
                -webkit-background-clip: text;
                background-clip: text;
                -webkit-text-fill-color: transparent;
                position: relative;
                top: -5px;
            }

            #facebook {
                color: #1877F2;
                position: relative;
            }

            #linkedin {
                color: #0A66C2;
                position: relative;
                margin-right: -90px;
            }

            #facebook:hover,
            #instagram:hover,
            #linkedin:hover {
                font-size: 30px;
                transition: 0.2s ease-in-out;
            }

            hr {
                border: none;
                height: 2px;
                background-color: gray;
                margin: 30px 0;
            }

            .social-media {
                position: relative;
                top: 10px;
                left: 400px;
                width: 100px;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .profile-details {
                width: 100%;
                position: absolute;
                left: 850px;
                bottom: 180px;
                justify-content: space-between;
            }

            .pitems {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                align-items: center;
                width: 100%;
            }

            .profile-dob {
                position: absolute;
                left: 0px;
                top: 130px;
            }

            .profile-phoneno {
                position: absolute;
                left: 450px;
            }

            .profile-location {
                position: absolute;
                left: 450px;
                top: 130px;
            }

            .left-box {
                width: 250px;
                padding-bottom: 20px;
                background-color: var(--Color-Background-Color);
                margin: 0px 40px;
                border-radius: 5px;
                position: relative;
                bottom: 75px;
                height: 290px;
                padding-top: 20px;
            }

            .left-container {
                margin: 0px 20px;
            }


            .left-btn {
                color: var(--Color-Btn);
                cursor: pointer;
                font-size: 16px;
                font-weight: 400;
                line-height: 45px;
                margin-top: 10px;
                position: relative;
                width: 200px;
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

            .left-btn:after {
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


            .left-btn:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .left-btn:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }

            .right-container {
                width: 1320px;
                background-color: var(--Color-Background-Color);
                margin: 0px 0px;
                border-radius: 5px;
                position: relative;
                bottom: 75px;
                padding-top: 20px;
                color: white;
            }

            .main-container {
                display: flex;
            }

            .tabcontent {
                display: none;
                margin: 0px 20px;
            }

            .tabcontent h1 {
                text-align: center;
                padding-bottom: 30px;
            }

            #gotopBtn {
                display: none;
                position: fixed;
                bottom: 20px;
                right: 30px;
                z-index: 99;
                font-size: 18px;
                border: none;
                outline: none;
                background-color: var(--Color-Background-Color);
                color: var(--Color-input-border);
                cursor: pointer;
                padding: 15px;
                border-radius: 4px;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
            }

            #gotopBtn:hover {
                background-color: #555;
            }

            .pcontainer-left {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 20px;
            }

            .Project-Images {
                width: 100%;
                height: auto;
            }

            .Project-Title {
                margin-top: 100px;
                font-weight: bold;
                text-align: center;
            }

            .Project-Discription {
                padding-top: 20px;
                text-align: center;
            }

            label {
                display: block;
                margin-bottom: 10px;
            }

            .contactdiv input[type="text"],
            .contactdiv input[type="email"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 2px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            .contactdiv input[type="text"]:focus,
            .contactdiv input[type="email"]:focus {
                outline: none;
                border-color: var(--Color-input-border);
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }

            .contact-submitBtn {
                color: var(--Color-Btn);
                cursor: pointer;
                font-size: 16px;
                font-weight: 400;
                line-height: 45px;
                position: absolute;
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
                margin: 20px;
                margin-left: 450px;
            }

            .contact-submitBtn:after {
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


            .contact-submitBtn:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .contact-submitBtn:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }

            #ContactUs {
                height: 500px;
            }


            #chatPopup {
                display: none;
                position: fixed;
                bottom: 20px;
                right: 20px;
                width: 320px;
                height: 400px;
                background-color: #ffff;
                box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
                z-index: 99999;
            }


            #chatTitle {
                background-color: var(--Color-Background-Color);
                padding: 10px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                color: white;
            }

            #chatTitle h3 {
                margin: 0;
            }

            #messages {
                height: 300px;
                overflow-y: scroll;
                padding: 10px;
            }

            #chat-form {
                display: flex;
                align-items: center;
                bottom: 10px;
            }

            #chat-input {
                flex-grow: 1;
                margin-right: 10px;
                border: 2px solid #ccc;
                border-radius: 4px;
                padding: 10px 0px;
                box-sizing: border-box;
                text-align: center;
            }

            #chat-input:focus {
                outline: none;
                border-color: var(--Color-input-border);
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }


            #chat-form button {
                border-radius: 8px;
                position: relative;
                left: -10px;
            }

            #chat-form button {
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

            #chat-form button:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            #chat-form button:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }

            #Achievements {
                padding: 50px;
                text-align: center;
            }

            .acontainer {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .Achivement-left {
                flex: 0 0 calc(50% - 30px);
                padding: 20px;
                background-color: rgba(0, 0, 0, 0.2);
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                margin-bottom: 20px;
                box-sizing: border-box;
            }

            .aitems {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                align-items: center;
                width: 100%;
            }

            .achivement-Images {
                width: 350px;
                height: 350px;
            }

            .Achivement-Title {
                padding-top: 15px;
                font-weight: bolder;
            }

            article {
                margin-bottom: 40px;
            }

            article h2 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            article p {
                font-size: 16px;
                margin-bottom: 20px;
            }

            article time {
                font-style: italic;
            }

            /* Additional styles for specific elements */
            /* For example, you can add a background color to the header */
            article header {
                background-color: rgba(0, 0, 0, 0.2);
                padding: 10px;
                border-radius: 5px;
            }

            /* You can style the paragraphs inside articles */
            article p {
                line-height: 1.5;
            }

            .bprofile-pic {
                width: 50px;
                /* Adjust the size as needed */
                height: 50px;
                border-radius: 50%;
                margin-right: 10px;
            }

            hr {
                margin: 40px 0;
                border: none;
                border-top: 1px solid yellow;
            }

            /* Styles for the personal details */
            .personal-details {
                margin-bottom: 20px;
            }

            .personal-details p {
                margin: 5px 0;
            }

            /* Styles for the skills section */
            .skills {
                margin-bottom: 20px;
            }

            .skills ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .skills li {
                margin-bottom: 10px;
            }

            .skills .skill-name {
                font-weight: bold;
            }

            .skills .skill-bar {
                height: 20px;
                border-radius: 4px;
                overflow: hidden;
            }

            .skills .skill-progress {
                height: 100%;
                background-color: var(--Color-input-border);
                width: 0;
                transition: width 0.8s ease-in-out;
            }

            /* Styles for the languages section */
            .languages {
                margin-bottom: 20px;
            }

            .languages ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .languages li {
                display: inline-block;
                margin-right: 10px;
            }

            .languages .language-circle {
                width: 30px;
                height: 30px;
                border-radius: 50%;
                background-color: #333;
                color: #fff;
                text-align: center;
                line-height: 30px;
                font-size: 14px;
            }

            /* Styles for the services section */
            .services {
                margin-bottom: 20px;
            }

            .services button {
                padding: 10px 20px;
                background-color: #333;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .services button:hover {
                background-color: #555;
            }

            .personal-count {
                display: flex;
                margin: 0px 50px;
            }

            .personal-count-item {
                background-color: rgba(0, 0, 0, 0.2);
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                width: 300px;
                font-weight: 900;
                font-size: 26px;
                text-align: center;
            }

            .personal-count-item count {
                color: var(--Color-input-border);
            }

            .red-text {
                color: red;
                float: right;
            }

            .greenyellow-text {
                color: greenyellow;
                float: left;
                display: block;
            }
        </style>
    </head>

    <body>
        <%
            String PName = "";
            String Username = "";
            String Email = "";
            String PhoneNo = "";
            String Address = "";
            String AccountType = "";
            String Gender = "";
            String DOB = "";
            String AID = "";
            try {
                AID = request.getParameter("AID");
                rst = stmt.executeQuery("SELECT * FROM account WHERE AID='" + AID + "'");
                if (rst.next()) {
                    PName = rst.getString(2);
                    Username = rst.getString(3);
                    Email = rst.getString(5);
                    PhoneNo = rst.getString(6);
                    Address = rst.getString(7);
                    AccountType = rst.getString(8);
                    Gender = rst.getString(9);
                    DOB = rst.getString(10);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <br />
        <br />
        <br />
        <br />
        <br />
        <button onclick="topFunction()" id="gotopBtn" title="Go to top">Top</button>
        <div class="profile-banner">
            <img src="Images/naturebg.jpg" alt="Profile-banner" class="Profile-banner">
        </div>
        <img src="view3.jsp?name=<%=AID%>" class="Profile-Img" alt="">
        <div class="profile-rectangle">
            <div class="profile-about">
                <h2><%=PName%> 
                    <% if (AccountType.equals("Verified")) {%><i class="uil uil-comment-verify" style="color: yellow;"></i><%}%> </h2>
                <p>Sed laoreet lacinia sem, vitae volutpat leo. Aenean tincidunt sollicitudin nibh ac
                    rhoncus.
                    Integer vel suscipit purus. Quisque a elit interdum, varius tellus ac, tincidunt arcu.
                    Vivamus
                    in nulla in dolor aliquet tristique. Maecenas posuere, libero ac scelerisque malesuada,
                    justo ex
                    sagittis quam, in suscipit nisl libero vitae massa. Donec nec fringilla ex. Praesent a
                    erat vel
                    quam dignissim facilisis sed nec dolor.
                </p>
            </div>
            <%
                if (AID.equals(session.getAttribute("SessionAID"))) {
            %>
            <div class="Profile-Message">
                <button onclick="window.location.href='Usermanage.jsp'">Edit Profile <i class="fa-solid fa-user-pen"></i></button>
            </div>
            <%} else {%>
            <div class="Profile-Message">
                <button onclick="openChat()">Message <i class="fa-solid fa-message"></i></button>
            </div>
            <%}%>
            <div class="social-media">
                <i class="fa fa-facebook" id="facebook"></i>
                <i class="fa fa-instagram" id="instagram"></i>
                <i class="fa fa-linkedin" id="linkedin"></i>
            </div>

            <div class="profile-details">
                <div class="pitems">
                    <div class="profile-email">
                        <h4 class="Email">Email</h4>
                        <p class="Email-para"><%=Email%></p>
                    </div>
                    <div class="profile-phoneno">
                        <h4 class="phoneno">Phone Number</h4>
                        <p class="phoneno-para">(+91) <%=PhoneNo%></p>
                    </div>
                    <div class="profile-dob">
                        <h4 class="DOB">Date of Birth</h4>
                        <p class="DOB-para"><%=DOB%></p>
                    </div>
                    <div class="profile-location">
                        <h4 class="location">Location</h4>
                        <p class="location-para"><%=Address%></p>
                    </div>
                </div>
            </div>
        </div>

    <main>
        <div class="main-container">
            <div class="left-box">
                <div class="left-container">
                    <button class="left-btn" onclick="openPage(event, 'AboutMe')">About Me</button>
                    <button class="left-btn" onclick="openPage(event, 'Achievements')">Achivements</button>
                    <button class="left-btn" onclick="openPage(event, 'ProjectShowCase')">Project
                        ShowCase</button>
                    <button class="left-btn" onclick="openPage(event, 'Blog')">Blog</button>
                    <button class="left-btn" onclick="openPage(event, 'ContactUs')">Contact Us</button>
                </div>
            </div>
            <div class="right-container">
                <div class="displaypages">
                    <div id="AboutMe" class="tabcontent">
                        <h1>ABOUT ME</h1>
                        <div class="personal-count">
                            <div class="personal-count-item">
                                <count>+10</count> Years of Experience
                            </div>
                            <div class="personal-count-item">
                                <count>1200</count> Completed Projects
                            </div>
                            <div class="personal-count-item">
                                <count>810</count> Reviewed Customers
                            </div>
                            <div class="personal-count-item">
                                <count>110</count> Achivements
                            </div>
                        </div>
                        <hr>
                        <div class="personal-details">
                            <p>Residence: India</p>
                            <p>Age: 21</p>
                            <p>City: Bangalore</p>
                        </div>
                        <hr>
                        <div class="languages">
                            <p>Languages you know:</p>
                            <ul>
                                <li><span class="language-circle">ENGLISH</span></li>
                                <li><span class="language-circle">TELUGU</span></li>
                                <li><span class="language-circle">KANNADA</span></li>
                                <li><span class="language-circle">TAMIL</span></li>
                                <li><span class="language-circle">HINDI</span></li>
                            </ul>
                        </div>
                        <hr>
                        <div class="skills">
                            <h2>Skills</h2>
                            <ul>
                                <li>
                                    <span class="skill-name">Html</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 100%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <span class="skill-name">Css</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 28%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <span class="skill-name">Javascript</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 20%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <span class="skill-name">C++</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 80%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <span class="skill-name">C#</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 50%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <span class="skill-name">Java</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 75%;"></div>
                                    </div>
                                </li>
                                <li>
                                    <span class="skill-name">SQL</span>
                                    <div class="skill-bar">
                                        <div class="skill-progress" style="width: 60%;"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="services">
                            <button>Download CV <i class="fa fa-download"></i></button>
                        </div>
                    </div>
                    <div id="Achievements" class="tabcontent">
                        <h1>ACHIVEMENTS</h1>
                        <div class="acontainer">
                            <div class="aitems">

                                <div class="Achivement-left">
                                    <img class="achivement-Images" src="Images/naturebg.jpg" alt="l">
                                    <div class="Achivement-Title">Email</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ContactUs" class="tabcontent">
                        <h1>CONTACT US</h1>
                        <div class="contactdiv">
                            <label for="Name">Name <input type="text" name="Name" placeholder="Enter the Name"
                                                          required></label>
                            <label for="Email">Email <input type="email" name="Email" placeholder="Enter the Email"
                                                            required></label>
                            <label for="Phone Number">Phone Number<input type="Text" name="PhoneNo"
                                                                         placeholder="Enter the Phone Number" required></label>
                            <label for="Message">Message <input type="text" name="Message"
                                                                placeholder="Enter the Message" required></label>
                            <input type="submit" class="contact-submitBtn" value="Submit">
                        </div>
                    </div>
                    <div id="ProjectShowCase" class="tabcontent">
                        <h1>PROJECT SHOWCASE</h1>
                        <div class="pcontainer">
                            <div class="pitems">
                                <div class="pcontainer-left">
                                    <img class="Project-Images" src="Images/naturebg.jpg" alt="l">
                                    <div class="Project-Title">
                                        Hi
                                        <div class="Project-Discription">
                                            ed laoreet lacinia sem, vitae volutpat leo. Aenean tincidunt
                                            sollicitudin
                                            nibh ac
                                            rhoncus.
                                            Integer vel suscipit purus. Quisque a elit interdum, varius
                                            tellus ac,
                                            tincidunt arcu.
                                            Vivamus
                                            in nulla in dolor aliquet tristique. Maecenas posuere,
                                            libero ac scelerisque
                                            malesuada,
                                            justo ex
                                        </div>
                                    </div>
                                    <img class="Project-Images" src="Images/naturebg.jpg" alt="l">
                                    <div class="Project-Title">
                                        Hi
                                        <div class="Project-Discription">
                                            ed laoreet lacinia sem, vitae volutpat leo. Aenean tincidunt
                                            sollicitudin
                                            nibh ac
                                            rhoncus.
                                            Integer vel suscipit purus. Quisque a elit interdum, varius
                                            tellus ac,
                                            tincidunt arcu.
                                            Vivamus
                                            in nulla in dolor aliquet tristique. Maecenas posuere,
                                            libero ac scelerisque
                                            malesuada,
                                            justo ex
                                        </div>
                                    </div>
                                    <img class="Project-Images" src="Images/naturebg.jpg" alt="l">
                                    <div class="Project-Title">
                                        Hi
                                        <div class="Project-Discription">
                                            ed laoreet lacinia sem, vitae volutpat leo. Aenean tincidunt
                                            sollicitudin
                                            nibh ac
                                            rhoncus.
                                            Integer vel suscipit purus. Quisque a elit interdum, varius
                                            tellus ac,
                                            tincidunt arcu.
                                            Vivamus
                                            in nulla in dolor aliquet tristique. Maecenas posuere,
                                            libero ac scelerisque
                                            malesuada,
                                            justo ex
                                        </div>
                                    </div>
                                    <img class="Project-Images" src="Images/naturebg.jpg" alt="l">
                                    <div class="Project-Title">
                                        Hi
                                        <div class="Project-Discription">
                                            ed laoreet lacinia sem, vitae volutpat leo. Aenean tincidunt
                                            sollicitudin
                                            nibh ac
                                            rhoncus.
                                            Integer vel suscipit purus. Quisque a elit interdum, varius
                                            tellus ac,
                                            tincidunt arcu.
                                            Vivamus
                                            in nulla in dolor aliquet tristique. Maecenas posuere,
                                            libero ac scelerisque
                                            malesuada,
                                            justo ex
                                        </div>
                                    </div>
                                    <img class="Project-Images" src="Images/naturebg.jpg" alt="l">
                                    <div class="Project-Title">
                                        Hi
                                        <div class="Project-Discription">
                                            ed laoreet lacinia sem, vitae volutpat leo. Aenean tincidunt
                                            sollicitudin
                                            nibh ac
                                            rhoncus.
                                            Integer vel suscipit purus. Quisque a elit interdum, varius
                                            tellus ac,
                                            tincidunt arcu.
                                            Vivamus
                                            in nulla in dolor aliquet tristique. Maecenas posuere,
                                            libero ac scelerisque
                                            malesuada,
                                            justo ex
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="Blog" class="tabcontent">
                        <h1>BLOG</h1>
                        <article>

                            <img class="bprofile-pic" src="Images/confused.png" alt="John Doe's Profile Picture">
                            <h2>My First Blog Post</h2>
                            <p>Published on <time datetime="2023-05-01">May 1, 2023</time> by John Doe
                            </p>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis
                                diam vel arcu
                                posuere, non
                                fermentum metus lacinia. Nulla facilisi. Sed fringilla ipsum sed massa
                                hendrerit, eget
                                venenatis
                                risus rhoncus. Sed vitae libero vel nisl consectetur imperdiet. Duis
                                eget magna aliquet,
                                sagittis risus nec, tincidunt elit. Donec sed lectus eget enim tempor
                                dignissim vitae in
                                quam.
                                Phasellus vehicula nisi id quam ultrices, id luctus dui tincidunt.</p>
                            <hr>
                        </article>
                        <article>

                            <img class="bprofile-pic" src="Images/confused.png" alt="John Doe's Profile Picture">
                            <h2>My First Blog Post</h2>
                            <p>Published on <time datetime="2023-05-01">May 1, 2023</time> by John Doe
                            </p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis
                                diam vel arcu
                                posuere, non
                                fermentum metus lacinia. Nulla facilisi. Sed fringilla ipsum sed massa
                                hendrerit, eget
                                venenatis
                                risus rhoncus. Sed vitae libero vel nisl consectetur imperdiet. Duis
                                eget magna aliquet,
                                sagittis risus nec, tincidunt elit. Donec sed lectus eget enim tempor
                                dignissim vitae in
                                quam.
                                Phasellus vehicula nisi id quam ultrices, id luctus dui tincidunt.</p>
                            <hr>
                        </article>
                        <article>

                            <img class="bprofile-pic" src="Images/confused.png" alt="John Doe's Profile Picture">
                            <h2>My First Blog Post</h2>
                            <p>Published on <time datetime="2023-05-01">May 1, 2023</time> by John Doe
                            </p>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis
                                diam vel arcu
                                posuere, non
                                fermentum metus lacinia. Nulla facilisi. Sed fringilla ipsum sed massa
                                hendrerit, eget
                                venenatis
                                risus rhoncus. Sed vitae libero vel nisl consectetur imperdiet. Duis
                                eget magna aliquet,
                                sagittis risus nec, tincidunt elit. Donec sed lectus eget enim tempor
                                dignissim vitae in
                                quam.
                                Phasellus vehicula nisi id quam ultrices, id luctus dui tincidunt.</p>
                            <hr>
                        </article>
                    </div>
                </div>
            </div>
        </div>

        <div id="chatPopup">
            <div id="chatTitle">
                <h3>Name <span style="color:greenyellow;">Online</span></h3>
                <button onclick="closeChat()">End chat</button>
            </div>
            <div id="messages">

            </div>
            <form id="chat-form" action="">
                <input type="text" id="chat-input" placeholder="Type your message here">
                <button type="submit" id="send-button">Send<i class="fa fa-send"></i></button>
            </form>
        </div>
    </main>
    <script>
        document.getElementById("AboutMe").style.display = "block";


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

        var mybutton = document.getElementById("gotopBtn");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () { scrollFunction() };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }






        function openChat() {
            document.getElementById("chatPopup").style.display = "block";
            var messages = document.getElementById("messages");
            messages.scrollTop = messages.scrollHeight;
        }

        function closeChat() {
            document.getElementById("chatPopup").style.display = "none";
        }


        function refreshDiv() {
            var divToRefresh = document.getElementById("messages");
            divToRefresh.innerHTML = ""; // Clear the content of the div
            var newContent = '<';
            divToRefresh.innerHTML = newContent;

        }

        setInterval(refreshDiv, 3000); // Refresh every 5 seconds
    </script>


</body>

</html>