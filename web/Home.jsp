<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Secure/Config.jsp" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="icon" type="image/x-icon" href="Images/icon.ico" />
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            <%= Title%> - Home
        </title>
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
        <script src="https://kit.fontawesome.com/8fa998140f.js" crossorigin="anonymous"></script>
    </head>
    <style>
        /* 
        Document   : Style
        Created on : 19 Apr, 2023, 9:07:42 AM
        Author     : gowth
        Description:
            Purpose of the stylesheet follows.
        */
        @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@200;300;400;700&display=swap');

        :root {
            --Color-Dark: hsl(0, 0%, 0%);
            --Color-White: hsl(252, 30%, 95%);
            --Color-light: hsl(0, 0%, 57%);
            --Color-Searchbar: hsl(0, 0%, 57%);
            --Color-gray: hsl(0, 0%, 59%);
            --Color-primary: hsl(25, 100%, 48%);
            --Color-secondary: hsl(252, 100%, 90%);
            --Color-Success: hsl(120, 95%, 65%);
            --Color-danger: hsl(0, 95%, 65%);
            --Color-black: hsl(252, 30%, 10%);
            --Color-Botton: hsl(249, 100%, 50%);
            --Color-BottonHover: hsl(249, 100%, 35%);
            --Color-ShadowColor: hsl(249, 77%, 71%);

            --Border-radius: 2rem;
            --Card-border-radius: 1rem;
            --btn-padding: 0.6rem 2rem;
            --search-padding: 0.6rem 1rem;
            --card-padding: 1rem;
        }



        body {
            font-family: 'Roboto Slab', serif;
            color: var(--Color-Dark);
            background: var(--Color-light);
            overflow-x: hidden;
            background-color: var(--Color-Dark);
        }

        .container {
            background-image: url(Images/wallpaperflare.com_wallpaper.jpg);
            background-size: cover;
            background-attachment: fixed;
            height: 100vh;
        }

        .text {
            flex: 1;
            color: white;
            padding-top: 150px;
        }

        .text h1,
        p {
            padding-left: 90px;
        }


        .image {
            padding-left: 80px;
            margin-right: 20px;
        }

        .morecontainer {
            padding-top: 50px;
            text-align: center;
            background-image: url(Images/2109.jpg);
            background-position: 20%;
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 700px;
        }

        .morecontainer h1 {
            color: white;
        }

        .itemcontent>.item:nth-child(2) {
            background-image: url(https://www.homelane.com/blog/wp-content/uploads/2020/03/shutterstock_634730945.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .itemcontent>.item:nth-child(1) {
            background-image: url(https://www.wikihow.com/images/thumb/a/ac/Make-a-Portfolio-Step-2-Version-4.jpg/v4-460px-Make-a-Portfolio-Step-2-Version-4.jpg.webp);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .itemcontent>.item:nth-child(3) {
            background-image: url(https://amandagore.com/wp-content/uploads/2013/09/connection.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .itemcontent>.item:nth-child(4) {
            background-image: url(data:image/jpeg;base64,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);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .itemcontent {
            position: relative;
            top: 50px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            height: 300px;
        }

        .item {
            flex: 1 1 200px;
            height: 100%;
            margin: 10px;
            background-color: white;
        }

        .item h2 {
            position: relative;
            top: 50%;
            color: #000000;
            text-shadow: 1px 1px 2px #ccc;
            font-size: 24px;
            font-weight: bold;
        }


        footer {
            padding: 100px;
        }

        @keyframes lights {
            0% {
            color: hsl(230, 40%, 80%);
            text-shadow:
                0 0 1em hsla(320, 100%, 50%, 0.2),
                0 0 0.125em hsla(320, 100%, 60%, 0.3),
                -1em -0.125em 0.5em hsla(40, 100%, 60%, 0),
                1em 0.125em 0.5em hsla(200, 100%, 60%, 0);
        }

        30% {
            color: hsl(230, 80%, 90%);
            text-shadow:
                0 0 1em hsla(126, 100%, 48%, 0.5),
                0 0 0.125em hsla(143, 95%, 48%, 0.5),
                -0.5em -0.125em 0.25em hsla(40, 100%, 60%, 0.2),
                0.5em 0.125em 0.25em hsla(200, 100%, 60%, 0.4);
        }

        40% {
            color: hsl(230, 100%, 95%);
            text-shadow:
                0 0 1em hsla(58, 98%, 52%, 0.5),
                0 0 0.125em rgba(254, 250, 27, 0.5),
                -0.25em -0.125em 0.125em hsla(40, 100%, 60%, 0.2),
                0.25em 0.125em 0.125em hsla(200, 100%, 60%, 0.4);
        }

        70% {
            color: hsl(230, 80%, 90%);
            text-shadow:
                0 0 1em hsla(0, 0%, 98%, 0.5),
                0 0 0.125em hsla(0, 0%, 100%, 0.5),
                0.5em -0.125em 0.25em hsla(40, 100%, 60%, 0.2),
                -0.5em 0.125em 0.25em hsla(200, 100%, 60%, 0.4);
        }

        100% {
            color: hsl(230, 40%, 80%);
            text-shadow:
                0 0 1em hsla(320, 100%, 50%, 0.2),
                0 0 0.125em hsla(320, 100%, 60%, 0.3),
                1em -0.125em 0.5em hsla(40, 100%, 60%, 0),
                -1em 0.125em 0.5em hsla(200, 100%, 60%, 0);
            /*font-variation-settings: "wght" 0, "wdth" 0;
            filter: hue-rotate(0deg);*/
        }
        }


        #welcome-heading {
            text-align: center;
            font-size: 3.5rem;
            font-weight: 300;
            animation: lights 3s ease-in-out infinite;
        }

        .main {
            padding-top: 50px;
            width: 100%;
        }

        .main h1 {
            text-transform: uppercase;
            color: #F1FAEE;
            font-size: 3.5rem;
        }

        .roller {
            height: 4.125rem;
            line-height: 4rem;
            position: relative;
            overflow: hidden;
            top: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff420;
            font-size: 1.5rem;
            text-shadow: 2px 2px 4px rgba(255, 255, 255, 0.5),
                4px 4px 8px rgba(160, 160, 160, 0.4),
                6px 6px 12px rgba(179, 179, 179, 0.3);
        }

        #spare-time {
            font-size: 1rem;
            font-style: italic;
            letter-spacing: 1rem;
            margin-top: 0;
            color: #A8DADC;

        }

        .roller #rolltext {
            position: absolute;
            top: 0;
            animation: slide 5s infinite;
        }

        @keyframes slide {
            0% {
            top: 0;
        }

        20% {
            top: -4rem;
        }

        40% {
            top: -8rem;
        }

        60% {
            top: -12.25rem;
        }

        80% {
            top: -15.5rem;
        }
        }

        .impossible {
            position: relative;
            top: 180px;
        }

        .impossible h1 {
            color: #484848;
            font-size: 50px;
            font-weight: bold;
            font-family: monospace;
            letter-spacing: 7px;
            cursor: pointer
        }

        .impossible h1 span {
            transition: .5s linear
        }

        .impossible h1:hover span:nth-child(1) {
            margin-right: 5px
        }

        .impossible h1:hover span:nth-child(1):after {
            content: "'";
        }

        .impossible h1:hover span:nth-child(2) {
            margin-left: 30px;
        }


        .impossible h1:hover span {
            color: #fff;
            text-shadow: 0 0 10px #fff,
                0 0 20px #fff,
                0 0 40px #fff;
        }

        .text p {
            font-weight: 700;
            text-align: center;
            font-size: 40px;
            font-family: Hack, sans-serif;
            text-transform: uppercase;
            background: linear-gradient(90deg, #000, #fff, #000);
            letter-spacing: 5px;
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            background-repeat: no-repeat;
            background-size: 80%;
            animation: shine 10s linear infinite;
            position: relative;
        }

        @keyframes shine {
            0% {
            background-position-x: -500%;
        }

        100% {
            background-position-x: 500%;
        }
        }
    </style>

    <body>        
    <main>
        <div class="container">
            <div class="text">
                <p>Konnichiwa flok's, Welcome <br> to
                <h1 id="welcome-heading">Web Wizardry &#128155;</h1>
                </p>
                <div class="impossible" id="impossible" align="center">
                    <h1><span>I</span>M<span id="myText">POSSIBLE?</span></h1>
                </div>
            </div>
        </div>
        <div class="morecontainer">
            <div class="main">
                <h1>What to do? </h1>
                <div class="roller">
                    <span id="rolltext">Create Profile<br />
                        Update Profile<br />
                        Show your skills<br />
                        Communicate with others<br />
                        <span id="spare-time">too much spare time?</span><br /></span>
                </div>
                </h1>
            </div>
            <div class="itemcontent">
                <div class="item">
                    <h2>Create a Portfolio</h2>
                    <i class="fa-solid fa-user"></i>
                </div>
                <div class="item">
                    <h2>ShowCase your idea's</h2>
                </div>
                <div class="item">
                    <h2>Connect with other's</h2>
                </div>
                <div class="item">
                    <h2>Create blog's</h2>
                </div>
            </div>
        </div>
    </main>

    <script>
        var textElement = document.getElementById("myText");

        textElement.addEventListener("mouseover", function () {
            var text = this.textContent;
            var newText = text.slice(0, -9) + "GOUTHAM";
            this.textContent = newText;
        });

        textElement.addEventListener("mouseout", function () {
            var text = this.textContent;
            var newText = text.slice(0, -7) + "POSSIBLE?";
            this.textContent = newText;
        });
    </script>
    <%@include file="footer.jsp" %>
</body>

</html>