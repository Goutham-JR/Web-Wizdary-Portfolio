<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Secure/Config.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=Title%></title>
        <style>
            * {
                border: 0;
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            :root {
                --hue: 60; /* Change the hue value to 60 for yellow */
                --bg: hsl(var(--hue),10%,90%);
                --fg: hsl(var(--hue),10%,10%);
                font-size: calc(16px + (24 - 16) * (100vw - 320px) / (1280 - 320));
            }

            body {
                background: var(--bg);
                color: var(--fg);
                font: 1em/1.5 sans-serif;
                height: 100vh;
                display: grid;
                place-items: center;
            }

            .pl {
                display: block;
                width: 6.25em;
                height: 6.25em;
            }

            .pl__ring,
            .pl__ball {
                animation: ring 2s ease-out infinite;
            }

            .pl__ball {
                animation-name: ball;
            }

            /* Dark theme */
            @media (prefers-color-scheme: dark) {
                :root {
                    --bg: hsl(var(--hue),10%,10%);
                    --fg: hsl(var(--hue),10%,90%);
                }
            }

            /* Animation */
            @keyframes ring {
                from {
                stroke-dasharray: 0 257 0 0 1 0 0 258;
            }

            25% {
                stroke-dasharray: 0 0 0 0 257 0 258 0;
            }

            50%,
            to {
                stroke-dasharray: 0 0 0 0 0 515 0 0;
            }
            }

            @keyframes ball {
                from,
                50% {
                animation-timing-function: ease-in;
                stroke-dashoffset: 1;
            }

            64% {
                animation-timing-function: ease-in;
                stroke-dashoffset: -109;
            }

            78% {
                animation-timing-function: ease-in;
                stroke-dashoffset: -145;
            }

            92% {
                animation-timing-function: ease-in;
                stroke-dashoffset: -157;
            }

            57%,
            71%,
            85%,
            99%,
            to {
                animation-timing-function: ease-out;
                stroke-dashoffset: -163;
            }
            } 
            .fade-out {
                animation: fadeOut 1s ease-in-out forwards;
            }

            @keyframes fadeOut {
                0% { opacity: 1; }
            100% { opacity: 0; }
            }

            .logo{
                
                width: 200px;
                height: 100px;
            }
        </style>
        <script>
            // JavaScript to add the fade-out class after 2 seconds
            setTimeout(function() {
                var bodyID = document.getElementById("bodyID");
                bodyID.classList.add('fade-out');                
            }, 5000);
            setTimeout(function() {
                location.href = "Home.jsp";
            }, 6000);
        </script>
    </head>
    <body id="bodyID">
        <img class="logo" src="Images/Logo.png">
        <svg class="pl" viewBox="0 0 200 200" width="200" height="200" xmlns="http://www.w3.org/2000/svg">
        <defs>
        <linearGradient id="pl-grad1" x1="1" y1="0.5" x2="0" y2="0.5">
        <stop offset="0%" stop-color="yellow" /> <!-- Change the stop-color to yellow -->
        <stop offset="100%" stop-color="yellow" /> <!-- Change the stop-color to yellow -->
        </linearGradient>
        <linearGradient id="pl-grad2" x1="0" y1="0" x2="0" y2="1">
        <stop offset="0%" stop-color="yellow" /> <!-- Change the stop-color to yellow -->
        <stop offset="100%" stop-color="yellow" /> <!-- Change the stop-color to yellow -->
        </linearGradient>
        </defs>
        <circle class="pl__ring" cx="100" cy="100" r="82" fill="none" stroke="url(#pl-grad1)" stroke-width="36" stroke-dasharray="0 257 1 257" stroke-dashoffset="0.01" stroke-linecap="round" transform="rotate(-90,100,100)" />
        <line class="pl__ball" stroke="url(#pl-grad2)" x1="100" y1="18" x2="100.01" y2="182" stroke-width="36" stroke-dasharray="1 165" stroke-linecap="round" />
        </svg>

    </body>
</html>
