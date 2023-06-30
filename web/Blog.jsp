
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
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
            background-color: #f5f5f5;
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
    </style>
</head>

<body>
    <a href="index.jsp" id="gotopBtn" title="Go to top">Home</a>
    <article>
        <header>
            <img class="profile-pic" src="Images/confused.png" alt="John Doe's Profile Picture">
            <h2>My First Blog Post</h2>
            <p>Published on <time datetime="2023-05-01">May 1, 2023</time> by John Doe</p>
        </header>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis diam vel arcu
            posuere, non
            fermentum metus lacinia. Nulla facilisi. Sed fringilla ipsum sed massa hendrerit, eget
            venenatis
            risus rhoncus. Sed vitae libero vel nisl consectetur imperdiet. Duis eget magna aliquet,
            sagittis risus nec, tincidunt elit. Donec sed lectus eget enim tempor dignissim vitae in
            quam.
            Phasellus vehicula nisi id quam ultrices, id luctus dui tincidunt.</p>
        <hr>
    </article>
    <article>
        <header>
            <img class="profile-pic" src="Images/confused.png" alt="John Doe's Profile Picture">
            <h2>My First Blog Post</h2>
            <p>Published on <time datetime="2023-05-01">May 1, 2023</time> by John Doe</p>
        </header>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis diam vel arcu
            posuere, non
            fermentum metus lacinia. Nulla facilisi. Sed fringilla ipsum sed massa hendrerit, eget
            venenatis
            risus rhoncus. Sed vitae libero vel nisl consectetur imperdiet. Duis eget magna aliquet,
            sagittis risus nec, tincidunt elit. Donec sed lectus eget enim tempor dignissim vitae in
            quam.
            Phasellus vehicula nisi id quam ultrices, id luctus dui tincidunt.</p>
        <hr>
    </article>
    <article>
        <header>
            <img class="profile-pic" src="Images/confused.png" alt="John Doe's Profile Picture">
            <h2>My First Blog Post</h2>
            <p>Published on <time datetime="2023-05-01">May 1, 2023</time> by John Doe</p>
        </header>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sagittis diam vel arcu
            posuere, non
            fermentum metus lacinia. Nulla facilisi. Sed fringilla ipsum sed massa hendrerit, eget
            venenatis
            risus rhoncus. Sed vitae libero vel nisl consectetur imperdiet. Duis eget magna aliquet,
            sagittis risus nec, tincidunt elit. Donec sed lectus eget enim tempor dignissim vitae in
            quam.
            Phasellus vehicula nisi id quam ultrices, id luctus dui tincidunt.</p>
        <hr>
    </article>

</body>

</html>