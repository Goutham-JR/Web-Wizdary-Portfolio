<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            :root {
                --effect: hover 1s linear infinite;
            }
            *{
                margin:0;
            }

            body {
                display: flex;
                width: 100vw;
                height: 100vh;
                background: black;
                align-items: center;
                justify-content: center;
            }

            div {
                text-align: center;
            }

            p {
                display: inline-block;
                text-transform: uppercase;
                text-align: center;
                font-size: 4em;
                font-family: arial;
                font-weight: 600;
                transform: scale(.5);
                color: #121212;
                -webkit-text-stroke: 2px gray;
            }

            p:nth-child(1) {
                animation: var(--effect);
            }

            p:nth-child(2) {
                animation: var(--effect) .125s;
            }

            p:nth-child(3) {
                animation: var(--effect) .25s;
            }

            p:nth-child(4) {
                animation: var(--effect) .375s;
            }

            p:nth-child(5) {
                animation: var(--effect) .5s;
            }

            p:nth-child(6) {
                animation: var(--effect) .675s;
            }

            p:nth-child(7) {
                animation: var(--effect) .75s;
            }

            @keyframes hover {
                0% {
                transform: scale(.5);
                color: #121212;
                -webkit-text-stroke: 2px gray;
            }

            20% {
                transform: scale(1);
                color: pink;
                -webkit-text-stroke: 3px red;
                filter: drop-shadow(0 0 1px black)drop-shadow(0 0 1px black)drop-shadow(0 0 3px red)drop-shadow(0 0 5px red)hue-rotate(10turn);
            }

            50% {
                transform: scale(.5);
                color: #121212;
                -webkit-text-stroke: 2px gray;
            }


            }

            .fade-out {
                animation: fadeOut 1s ease-in-out forwards;
            }

            @keyframes fadeOut {
                0% { opacity: 1; }
            100% { opacity: 0; }
            }
        </style>
        
    </head>
    <body>
        <%
            String URL = request.getParameter("URL");
        %>
        <div id="bodyID">
            <p>l</p>
            <p>o</p>
            <p>a</p>
            <p>d</p>
            <p>i</p>
            <p>n</p>
            <p>g</p>
        </div>
        <script>
            // JavaScript to add the fade-out class after 2 seconds
            setTimeout(function() {
                var bodyID = document.getElementById("bodyID");
                bodyID.classList.add('fade-out');                
            }, 3000);
            setTimeout(function() {
                location.href = "<%=URL%>";
            }, 4000);
        </script>
    </body>
</html>
