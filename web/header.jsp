<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/8fa998140f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <style>
            :root {
                --Color-text-hover: #fffb00;
                --Color-Btn: rgb(255, 255, 0);
                --Color-input-border: #fffb00;
                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);
                --Color-Background-Color: #202327;
            }

            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }

            header {
                padding: 20px;
                color: #cccccc;
                display: flex;
                justify-content: space-between;
                align-items: center;
                height: 40px;
                width: 1570px;
                position: fixed;
                box-shadow: 1px 1px 1px 1px rgb(255,2550,255,0.2);
                background-color: var(--Color-Background-Color);
                margin: 10px 40px;
                z-index: 999;

            }

            .logo {
                height: 80px;
                width: 150px;
                margin: 5px -20px;
            }

            nav ul {
                list-style: none;
                margin: 0;
                padding: 0;
                display: flex;
                position: relative;
                top: 20px;
            }

            nav ul li a {
                color: #fff;
                margin: 0px 30px;
                text-decoration: none;
                border-radius: 5px;
                position: relative;
                overflow: hidden;
            }

            nav ul li a::before {
                content: "";
                position: absolute;
                left: 0;
                bottom: -5px;
                width: 100%;
                height: 2px;
                background-color: var(--Color-text-hover);
                transform: scaleX(0);
                transform-origin: left;
                transition: transform 0.3s ease;
            }

            nav ul li a:hover::before {
                transform: scaleX(1);
            }

            nav ul li a:hover {
                color: var(--Color-text-hover);
            }

            .sessionuser {
                position: relative;
                top: -20px;
                left: 10px;
                color: #eaff00;
                font-weight: 900;
                font-family: 'Roboto Slab', serif;
            }

            .profile-img {
                border-radius: 50px;
            }

            .search-box {
                width: fit-content;
                height: fit-content;
                position: relative;
            }
            /* Add this CSS code */


            .ui-autocomplete {
                z-index: 9999 !important;
                position: absolute;
                border: 1px solid #ccc;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
                padding: 5px;
                max-width: fit-content;
                max-height: fit-content;
                overflow-y: auto;
                color: var( --Color-text-hover);
                background-color: rgba(0, 0, 0, 0.4);
                backdrop-filter: blur(15px);
            }


            .ui-autocomplete .ui-menu-item {
                padding: 10px;
                cursor: pointer;
            }

            .ui-autocomplete .ui-menu-item  {
                background-color: rgba(0, 0, 0, 0.4);
                backdrop-filter: blur(15px);
                padding: 10px;
                font-size: 16px;
            }


            .fas {
                position: relative;
                top: -15px;
                z-index: 1;
                color: black;
            }

            .input-search {
                position: relative;
                top: -5px;
                height: 10px;
                width: 0px;
                border-style: none;
                padding: 10px;
                font-size: 18px;
                letter-spacing: 2px;
                outline: none;
                border-radius: 25px;
                transition: all .5s ease-in-out;
                background-color: var(--Color-Btn);
                padding-right: 40px;
                color: #fff;
            }

            .input-search::placeholder {
                color: rgba(255, 255, 255, .5);
                font-size: 18px;
                letter-spacing: 2px;
                font-weight: 100;
            }
            
            .btn-search {
                width: 50px;
                height: 50px;
                border-style: none;
                font-size: 20px;
                font-weight: bold;
                outline: none;
                cursor: pointer;
                border-radius: 50%;
                position: absolute;
                right: 0px;
                color: #ffffff;
                background-color: transparent;
                pointer-events: painted;
            }

            .btn-search:focus~.input-search {
                width: 300px;
                border-radius: 0px;
                background-color: transparent;
                border-bottom: 1px solid rgba(255, 255, 255, .5);
                transition: all 500ms cubic-bezier(0, 0.110, 0.35, 2);
            }
            
            .btn-search i{
                position: relative;
                top: 0px;
                left: 13px;
            }

            .input-search:focus {
                width: 300px;
                border-radius: 0px;
                background-color: transparent;
                border-bottom: 1px solid rgba(255, 255, 255, .5);
                transition: all 500ms cubic-bezier(0, 0.110, 0.35, 2);
            }

            /* Dropdown Menu Styles */
            .dropdown-menu {
                display: none;
                position: absolute;
                background-color: #000;
                box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                z-index: 1;
                right:-40px;
            }

            .dropdown-menu a {
                color: #fff;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-menu a:hover {
                background-color: #fffb00;
                color: #000;
            }

            .dropdown:hover .dropdown-menu {
                display: block;
            }
            .Headerbtn {
                border: none;
                color: #000;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                font-weight: bolder;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 4px;
                position: relative;
                bottom: 15px;
                background-color: white;
            }

            .Headerbtn:hover{
                background-color: var(--Color-Btn);
            }

            #signupbtn {
                margin-left: 10px;
            }

        </style>
    </head>

    <body>

        <header>
            <img class="logo" src="https://www.nvidia.com/content/dam/en-zz/Solutions/about-nvidia/logo-and-brand/02-nvidia-logo-color-blk-500x200-4c25-p@2x.png">

            <nav>
                <ul>
                    <li>
                        <form>
                            <div class="search-box">
                                <button1 class="btn-search"><i class="fas fa-search"></i></button1>
                                <input type="text" id="search" class="input-search" placeholder="Type to Search...">
                            </div>
                        </form>
                    </li>
                    <li><a href="index.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
                    <li><a href="Profile.jsp?AID=<%= session.getAttribute("SessionAID")%>"><i class="fa-solid fa-user"></i> Profile</a></li>
                    <li><a href="Message.jsp"><i class="fa-solid fa-message"></i> Message</a></li>
                    <li><a href="Blog.jsp"><i class="fa-solid fa-blog"></i> Blog</a></li>
                    <li><a href="#"><i class="fa-solid fa-address-book"></i>  Contact Us</a></li>
                    <%
                        if (session.getAttribute("SessionUser") != null) {
                    %>
                    <li class="dropdown">
                        <div class="profile">
                            <img class="profile-img"
                                 src="https://i.pinimg.com/736x/5a/e5/98/5ae598ff624217b9a5c008beb8c512d0.jpg" height="25px"
                                 width="25px" alt="Your profile picture">
                            <div class="dropdown-menu">
                                <a href="Usermanage.jsp"><i class="fa-solid fa-user-pen"></i> Edit Profile</a>
                                <a href="#"><i class="fa-solid fa-message"></i> Messages</a>
                                <a href="#"><i class="fa-solid fa-bell"></i> Notification</a>
                                <a href="#"><i class="fa-solid fa-chart-line"></i>  Admin Dashboard</a>
                                <a href="#"><i class="fa-solid fa-flag"></i> Report</a>
                                <a href="logout.jsp"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown">
                        <h4 class="sessionuser"><%= session.getAttribute("SessionUser")%> <i class="uil uil-comment-verify" style="color: yellow;"></i></h4>
                    </li>
                    <%} else {
                    %>
                    <li><form action="SignUp.jsp">
                            <button class="Headerbtn" type="submit">Sign Up</button>
                        </form>
                    </li>
                    <li><form action="Login.jsp">
                            <button class="Headerbtn" type="submit">Login</button>
                        </form>
                    </li>
                    <% }%>
                </ul>
            </nav>
        </header>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#search").autocomplete({
                    source: function (request, response) {
                        $.ajax({
                            url: "autocompleteData.jsp",
                            dataType: "json",
                            data: {
                                search: request.term
                            },
                            success: function (data) {
                                response(data);
                            }
                        });
                    },
                    minLength: 1
                });
            });
        </script>
    </body>

</html>

