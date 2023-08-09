<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="Secure/Config.jsp" %>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%=Title %> - Profile</title>
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
                left: 30px;
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
                height: 400px;
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
                background-color: #a3a0a0;
            }

            #chat-form {
                display: flex;
                align-items: center;
                bottom: 10px;
                background-color: #a3a0a0;
            }

            #chat-input {
                flex-grow: 1;
                margin-right: 10px;
                border: 2px solid #ccc;
                border-radius: 4px;
                padding: 10px 0px;
                box-sizing: border-box;
                background-color: grey;
                color:white;
            }

            #chat-input::placeholder {
                color: yellow;
                opacity: 1; /* Firefox */
            }


            #chat-input:focus {
                outline: none;
                border-color: var(--Color-input-border);
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }


            .sendmessagebtn {
                border-radius: 8px;
                position: relative;
                left: -10px;
            }

            .sendmessagebtn {
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

            .sendmessagebtn:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .sendmessagebtn:hover:after {
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
                position: relative;
                left: 100px;
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
                background-color: orange;
                float: right;
            }

            .greenyellow-text {
                color: greenyellow;
                float: left;
                display: block;
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

            /* Add your existing CSS styles for other elements here */

            .three-dot-menu {
                position: relative;
            }

            .menu-icon {
                cursor: pointer;
                font-size: 24px;
                position: relative;
                left:200px;
            }

            .Adropdown-menu {
                display: none;
                position: absolute;
                top: 100%;
                right: 0;
                background-color: #fff;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                z-index: 1;
            }

            .Amenu-item {
                padding: 8px;
                cursor: pointer;
                background-color: black;
            }
            .Amenu-item:hover {
                background-color: yellow;
                color:black;
            }

            .Pthree-dot-menu {
                position: relative;
            }
            .Pmenu-icon {
                cursor: pointer;
                font-size: 24px;
                position: relative;
                left:300px;
                bottom: 100px;
            }

            .Pdropdown-menu {
                display: none;
                position: absolute;
                bottom: 50px;
                right: 0;
                background-color: #fff;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                z-index: 1;
            }

            .Pmenu-item {
                padding: 8px;
                cursor: pointer;
                background-color: black

            }
            .Pmenu-item:hover {
                background-color: yellow;
                color:black;
            }

            .Bthree-dot-menu {
                position: relative;
            }
            .Bmenu-icon {
                cursor: pointer;
                font-size: 24px;
                position: relative;
                left: 1200px;
                bottom: 150px;
            }

            .Bdropdown-menu {
                display: none;
                position: absolute;
                bottom:100px;
                right: 0;
                background-color: #fff;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                z-index: 1;
            }

            .Bmenu-item {
                padding: 8px;
                cursor: pointer;
                background-color: black

            }
            .Bmenu-item:hover {
                background-color: yellow;
                color:black;
            }


            /* Show the dropdown when the menu icon is clicked */
            .show-dropdown {
                display: block;
            }

            .remove-skill {
                font-weight: bold;                
                color: black;
                position: relative;
                top: -20px;
                left:1280px;
            }

            .remove-skill:hover {
                color: yellow;
            }

        </style>
    </head>

    <body>
        <%
            if (session.getAttribute("SessionUser") != null) {
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

                String Bio = "";
                String Instagram = "";
                String Facebook = "";
                String LinkedIn = "";
                String City = "";
                String Residence = "";
                String Experience = "";
                int CompletedProjects = 0;                
                int Achivements = 0;

                try {
                    rst = stmt.executeQuery("SELECT * FROM profile WHERE AID='" + AID + "'");
                    if (rst.next()) {
                        Bio = rst.getString(3);
                        Instagram = rst.getString(4);
                        Facebook = rst.getString(5);
                        LinkedIn = rst.getString(6);
                        City = rst.getString(7);
                        Residence = rst.getString(8);
                        Experience = rst.getString(9);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    rst = stmt.executeQuery("SELECT * FROM achievements WHERE AID='" + AID + "'");
                    while (rst.next()) {
                       Achivements +=1;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    rst = stmt.executeQuery("SELECT * FROM projectshowcase WHERE AID='" + AID + "'");
                    while (rst.next()) {
                        CompletedProjects +=1;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                

        %>
        <button onclick="topFunction()" id="gotopBtn" title="Go to top">Top</button>
        <div class="profile-banner">
            <img src="Images/naturebg.jpg" alt="Profile-banner" class="Profile-banner">
        </div>
        <img src="ViewProfile.jsp?name=<%=AID%>" class="Profile-Img" alt="">
        <div class="profile-rectangle">
            <div class="profile-about">
                <h2><jsp:include page="ViewName.jsp">
                                            <jsp:param name="AID" value="<%=AID%>" />
                                        </jsp:include></h2>
                <p><%if(AccountType.equals("Banned")) {%> <s><font color="Gray"><%=Bio%></font></s><%}else{%><%=Bio%><%}%>
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
                <%if(Facebook.equals("")){              
                }else{%><a href="<%if(AccountType.equals("Banned")) {%>#<%}else{%><%=Facebook%><%}%>"><i class="fa fa-facebook" id="facebook"></i></a><%}%>
                <%if(Instagram.equals("")){              
                }else{%><a href="<%if(AccountType.equals("Banned")) {%>#<%}else{%><%=Instagram%><%}%>"><i class="fa fa-instagram" id="instagram"></i></a><%}%>
                <%if(LinkedIn.equals("")){              
                }else{%><a href="<%if(AccountType.equals("Banned")) {%>#<%}else{%><%=LinkedIn%><%}%>"><i class="fa fa-linkedin" id="linkedin"></i></a><%}%>
            </div>

            <div class="profile-details">
                <div class="pitems">
                    <div class="profile-email">
                        <h4 class="Email">Email</h4>
                        <p class="Email-para"><%if(AccountType.equals("Banned")) {%> <s><font color="Gray"><%=Email%></font></s><%}else{%><%=Email%><%}%></p>
                    </div>
                    <div class="profile-phoneno">
                        <h4 class="phoneno">Phone Number</h4>
                        <p class="phoneno-para"><%if(AccountType.equals("Banned")) {%> <s><font color="Gray">(+91) <%=PhoneNo%></font></s><%}else{%>(+91) <%=PhoneNo%><%}%></p>
                    </div>
                    <div class="profile-dob">
                        <h4 class="DOB">Date of Birth</h4>
                        <p class="DOB-para"><%if(AccountType.equals("Banned")) {%> <s><font color="Gray"><%=DOB%></font></s><%}else{%><%=DOB%><%}%></p>
                    </div>
                    <div class="profile-location">
                        <h4 class="location">Location</h4>
                        <p class="location-para"><%if(AccountType.equals("Banned")) {%> <s><font color="Gray"><%=Address%></font></s><%}else{%><%=Address%><%}%></p>
                    </div>
                </div>
            </div>
        </div>

    <main>
        <div class="main-container">
            <div class="left-box">
                <div class="left-container">
                    <button class="left-btn" onclick="openPage(event, 'AboutMe')">About Me</button>
                    <button class="left-btn" onclick="openPage(event, 'Achievements')">Achievements</button>
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
                                <count>+<%=Experience%></count> Years of Experience
                            </div>
                            <div class="personal-count-item">
                                <count><%=CompletedProjects%></count> Completed Projects
                            </div>                            
                            <div class="personal-count-item">
                                <count><%=Achivements%></count> Achievements
                            </div>
                        </div>
                        <hr>
                        <div class="personal-details">
                            <p>Residence: <%=Residence%></p>
                            <p>DOB: <%=DOB%></p>
                            <p>City: <%=City%></p>
                        </div>
                        <hr>
                        <div class="languages">
                            <p>Languages you know:</p>
                            <ul>
                                <%
                                    rst = stmt.executeQuery("SELECT * FROM Languages WHERE AID='" + AID + "'");
                                    while (rst.next()) {
                                %>
                                <li><span class="language-circle"><%= rst.getString(2)%></span></li>
                                <%}%>
                            </ul>
                        </div>
                        <hr>
                        <div class="skills">
                            <h2>Skills</h2>
                            <ul>
                                <div id="DisplaySkill"></div>      
                            </ul>
                        </div>

                        <div class="services">
                            <button onclick="window.location.href='DownloadCV?AID=<%= AID%>'">Download CV <i class="fa fa-download"></i></button>
                        </div>
                    </div>
                    <div id="Achievements" class="tabcontent">
                        <h1>ACHIEVEMENTS</h1>
                        <div class="acontainer">
                            <div class="aitems" id="aitems">                                
                            </div>
                        </div>
                    </div>
                    <div id="ContactUs" class="tabcontent">
                        <h1>CONTACT US</h1>
                        <div class="contactdiv">
                            <form action="Contact.jsp" method="POST"> 
                                <label for="Name">Name <input type="text" name="Name" placeholder="Enter the Name"
                                                              required></label>
                                <label for="Email">Email <input type="email" name="Email" placeholder="Enter the Email"
                                                                required></label>
                                <label for="Phone Number">Phone Number<input type="Text" name="PhoneNo" placeholder="Enter the Phone Number" required></label>
                                <label for="Message">Message <input type="text" name="Message" placeholder="Enter the Message" required></label>
                                <input type="hidden" name="AID" class="contact-submitBtn" value="<%=AID%>">
                                <input type="submit" name="Contact" class="contact-submitBtn" value="Submit">
                            </form>
                        </div>
                    </div>
                    <div id="ProjectShowCase" class="tabcontent">
                        <h1>PROJECT SHOWCASE</h1>
                        <div class="pcontainer">
                            <div class="pitems">
                                <div class="pcontainer-left" id="pcontainer-left">

                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="Blog" class="tabcontent">
                        <h1>BLOG</h1>
                        <div id="Displayblog"></div>

                    </div>
                </div>
            </div>
        </div>

        <div id="chatPopup">
            <div id="chatTitle">
                <h3><%=PName%></h3>
                <button onclick="closeChat()">End chat</button>
            </div>
            <div id="messages">               
            </div>
            <div id="chat-form">
                <input type="text" id="chat-input" name="message" placeholder="Type your message here">
                <input type="hidden" name="AID" value="<%=AID%>">
                <button type="submit" class="sendmessagebtn" id="send-button" onclick="sendMessage()">Send<i class="fa fa-send"></i></button>
            </div>
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

       
 
        var sendmessage = document.getElementById("send-button");
        var message = document.getElementById("chat-input");

        sendmessage.addEventListener("click", function() {
            setTimeout(function() {
                var messages = document.getElementById("messages");
                message.value = "";
                messages.scrollTop = messages.scrollHeight;
            }, 500); // Delay of 0.5 seconds (500 milliseconds)
        });


        function toggleDropdown(menuIcon) {
            const dropdownMenu = menuIcon.nextElementSibling;
            dropdownMenu.classList.toggle("show-dropdown");
        }

        function deleteAchievement(ACID) {            
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DeleteAchievement.jsp?ACID="+ACID, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
            
        }
        
        function deleteProject(PSCID) {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DeleteProject.jsp?PSCID="+PSCID, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        
        function deleteBlog(BID) {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DeleteBlog.jsp?BID="+BID, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
        
        function removeSkill(SKID) {
             var xhr = new XMLHttpRequest();
            xhr.open("GET", "DeleteSkill.jsp?SKID="+SKID, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        function openChat() {
            <%if(AccountType.equals("Banned")){%>
                alert("Your not allowed to chat with him/her!");
            <%}
            else{%>           
            document.getElementById("chatPopup").style.display = "block";
            var messages = document.getElementById("messages");
            messages.scrollTop = messages.scrollHeight;
            <%}%>
        }

        function closeChat() {
            document.getElementById("chatPopup").style.display = "none";
        }
        
        function sendMessage() {
            var message = document.getElementById("chat-input").value;
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "sendmessage.jsp?AID=<%=AID%>&message="+message+"", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        function refreshDiv() {
            var divToRefresh = document.getElementById("messages");
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "fetch_messages.jsp?AID=<%=AID%>", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
        
        function refreshAchievement() {
            var divToRefresh = document.getElementById("aitems");
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DisplayAchievements.jsp?AID=<%=AID%>", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
        function refreshProject() {
            var divToRefresh = document.getElementById("pcontainer-left");
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DisplayProjects.jsp?AID=<%=AID%>", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
        function refreshBlog() {
            var divToRefresh = document.getElementById("Displayblog");
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DisplayBlog.jsp?AID=<%=AID%>", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
        function refreshSkill() {
            var divToRefresh = document.getElementById("DisplaySkill");
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "DisplaySkill.jsp?AID=<%=AID%>", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    divToRefresh.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }

        refreshDiv();
        refreshProject();
        refreshAchievement();
        refreshBlog();
        refreshSkill();
        setInterval(refreshDiv, 1000);
        setInterval(refreshAchievement, 4000);
        setInterval(refreshProject, 4000);
        setInterval(refreshBlog, 4000);
        setInterval(refreshSkill, 4000);

    </script>

    <%} else {%>
    <script>
        alert("Please login first.");
        window.location.href = "Loading.jsp?URL=Login.jsp";
    </script>
    <%        }%>

</body>

</html>