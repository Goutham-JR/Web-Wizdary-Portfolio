<%@page import="network.Mails"%>
<%@page import="network.mail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Secure/Config.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%= Title%> - Forgot Password</title>
        <style>
            :root {
                --Color-Btn: rgb(255, 255, 0);
                --Color-input-border: #fffb00;
                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);
            }

            * {
                margin: 0 0;
                color: white;
            }

            body {
                background-image: url(Images/naturebg.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }

            .form-border {
                border: 1px solid #ccc;
                padding: 20px;
                width: 300px;
                margin: 0 auto;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                position: fixed;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background-color: rgba(0, 0, 0, 0.4);
                backdrop-filter: blur(15px);
            }

            .form-items {
                width: 100%;
            }

            .form-items label {
                display: block;
                margin-bottom: 10px;
            }

            .Login-heading {
                font-size: 2em;
                text-align: center;
                position: relative;
                background-color: rgba(0, 0, 0, 0.2);
            }

            .Login-heading span {
                position: relative;
                display: inline-block;
                font-size: 40px;
                color: #fff;
                text-transform: uppercase;
                animation: flip 3s infinite;
                animation-delay: calc(.2s * var(--i));
            }



            input[type="text"],
            input[type="password"],
            input[type="email"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 2px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                color: black;
            }

            input[type="text"]:focus,
            input[type="password"]:focus,
            input[type="email"]:focus {
                outline: none;
                border-color: var(--Color-input-border);
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }

            .form-items a {
                display: block;
                margin-bottom: 10px;
                text-decoration: none;
            }

            .form-items a:hover {
                color: var(--Color-input-border);
            }

            .form-items input[type="submit"] {
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

            .form-items input[type="submit"]:after {
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


            .form-items input[type="submit"]:hover {
                border: 1px solid;
                box-shadow: inset 0 0 20px rgba(255, 255, 255, 0.5), 0 0 20px rgba(255, 255, 255, 0.2);
                outline-color: rgba(255, 255, 255, 0);
                outline-offset: 15px;
                text-shadow: 1px 1px 2px #427388;
            }

            .form-items input[type="submit"]:hover:after {
                left: 120%;
                transition: all 550ms cubic-bezier(0.19, 1, 0.22, 1);
            }


            .rain-container {
                position: relative;
                width: 100%;
                height: 100vh;
                overflow: hidden;
            }

            .raindrop {
                position: absolute;
                width: 1px;
                height: 50px;
                background-color: rgba(255, 255, 255, 0.5);
                animation: raindrop 1s linear infinite;
            }

            @keyframes raindrop {
                0% {
                transform: translateY(-50px);
            }

            100% {
                transform: translateY(100vh);
            }
            }

            @keyframes flip {

                0%,
                80% {
                transform: rotateY(360deg)
            }
            }
        </style>
    </head>

    <body>
        <%
            if (request.getMethod().equalsIgnoreCase("POST")) {
                String Email = request.getParameter("Email");
                // Prepare the query
                String query = "SELECT * FROM Account WHERE Email = ?";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1, Email);
                rst = pstmt.executeQuery();

                // Check if a result exists
                if (rst.next()) {
                    Mails m = new Mails();
                    String msg = "<div style='font-family: Arial, sans-serif; background-color: #f2f2f2; max-width: 600px; margin: 0 auto; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);'>"
                            + "<h1 style='text-align: center;'>Hello, " + rst.getString(2) + "</h1>"
                            + "<div style='background-color: #ffffff; padding: 20px; border-radius: 5px;'>"
                            + "<h2 style='text-align: center; margin-bottom: 10px;'>You have a request to change your password.</h2>"
                            + "<p style='text-align: center; margin-bottom: 20px;'>We cannot simply send you your old password. A unique link to reset your password has been generated for you. To reset your account, click the following link and follow the instructions.</p>"
                            + "<center><a href='http://localhost:8084/Web_Wizdary/Loading.jsp?URL=ChangePassword.jsp?AID=" + rst.getString(1) + "'><input type='submit' class='mbutton' value='Reset Password' style='color: rgb(255, 255, 0); cursor: pointer; font-size: 16px; font-weight: 400; line-height: 45px; margin: 0 0 2em; position: relative; width: 40%; text-decoration: none; text-transform: uppercase; border: 0 solid; box-shadow: inset 0 0 20px rgba(255, 255, 255, 0); outline: 1px solid; outline-color: rgba(255, 255, 255, 0.5); outline-offset: 0px; text-shadow: none; transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1); background-color: rgba(0, 0, 0, 0.4); border-radius: 10px;'></a></center>"
                            + "</div>"
                            + "</div>";
                    m.secretMail(msg, Email, Email);
                    out.print("<script>alert('Please check your mail for resetting password!');</script>");
                    out.print("<script>location.href='Loading.jsp?URL=Login.jsp';</script>");
                } else {
        %>
        <script>
            alert("Account not found!");
        </script>
        <%                }
            }
        %>
        <div class="rain-container" id="rainContainer"></div>
        <div class="form-border">
            <div class="form-items">
                <form action="ForgotPassword.jsp" method="POST">
                    <div class="Login-heading">
                        <span style="--i:1">F</span>
                        <span style="--i:2">O</span>
                        <span style="--i:3">R</span>
                        <span style="--i:4">G</span>
                        <span style="--i:5">O</span>
                        <span style="--i:6">T</span>
                    </div>
                    <br>                                       
                    <label for="Email">Email <input type="email" name="Email" placeholder="Enter the Email"
                                                    required></label>                             
                    <input type="submit" value="Send">
                    <a href="Loading.jsp?URL=Login.jsp">Remember account? Login here</a>
                </form>
            </div>
        </div>
        <script src="JavaScript/LoginScript.js" type="text/javascript"></script>
    </body>

</html>
