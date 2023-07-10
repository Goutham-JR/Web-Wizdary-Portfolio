<%@include file="Secure/Config.jsp" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Notification Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        h1 {
            text-align: center;
            color: #333;
        }

        .notifications-container {
            max-width: 400px;
            margin: 0 auto;
        }

        .notification {
            padding: 10px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            background-color: #f5f5f5;
            color: #333;
        }

        .notification.success {
            background-color: #dff0d8;
            color: #3c763d;
        }

        .notification.info {
            background-color: #d9edf7;
            color: #31708f;
        }

        .notification.warning {
            background-color: #fcf8e3;
            color: #8a6d3b;
        }

        .notification.error {
            background-color: #f2dede;
            color: #a94442;
        }
    </style>
</head>
<body>    
    <h1>Notifications</h1>

    <div class="notifications-container">
        <div class="notification success">Congrats! Your account is verified.</div>
        <div class="notification info">User messaged you.</div>
        <div class="notification warning">User sent his contacts to you.</div>
        <!-- Add more notifications here -->
    </div>
</body>
</html>
