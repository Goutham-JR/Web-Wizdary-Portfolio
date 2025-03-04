
<!DOCTYPE html>
<html lang="en">
    <%@include file="Secure/Config.jsp" %>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%=Title %> - Blog</title>
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" />
        <style>
            :root {
                --Color-text-hover: #fffb00;
                --Color-Btn: rgb(255, 255, 0);
                --Color-input-border: #fffb00;
                --Color-Btn-Outlinecolor: rgba(255, 255, 255, 0.5);
                --Color-Background-Color: #202327;
            }
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
            }

            article {
                margin-bottom: 40px;
            }

            h2 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            p {
                font-size: 16px;
                color: #555;
                margin-bottom: 20px;
            }

            time {
                font-style: italic;
            }

            /* Additional styles for specific elements */
            /* For example, you can add a background color to the header */
            article header {
                background-color: #666666;
                padding: 10px;
                border-radius: 5px;
            }

            /* You can style the paragraphs inside articles */
            article p {
                line-height: 1.5;
            }

            .profile-pic {
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

            #gotopBtn {
                display: block;
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
                text-decoration: none;
            }

            #gotopBtn:hover {
                background-color: #555;
            }
            .profile-name{
                position: relative;
                left:70px;
                bottom:55px;
            }
        </style>
    </head>

    <body>
        <a href="Loading.jsp?URL=Home.jsp" id="gotopBtn" title="Go to top">Home</a>
        <%
            rst = stmt.executeQuery("SELECT * FROM Blog ORDER BY Date DESC");
            while (rst.next()) {
        %>
        <article>
            <header>
                <a href="Loading.jsp?URL=Profile.jsp?AID=<%=rst.getString(2)%>"><img class="profile-pic" src="ViewProfile.jsp?name=<%=rst.getString(2)%>" alt=""></a><h4 class="profile-name"><jsp:include page="ViewName.jsp">
                        <jsp:param name="AID" value="<%=rst.getString(2)%>" />
                        </jsp:include></h4>

                <h2><%=rst.getString(3)%></h2>
                <p><font color="black">Published on <time datetime="2023-05-01"><%=rst.getString(5)%></font></time></p>
            </header>
            <p><%=rst.getString(4)%></p>
            <hr>
        </article>
        <%}%>
    </body>

</html>