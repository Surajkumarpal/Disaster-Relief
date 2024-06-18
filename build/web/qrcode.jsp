<%-- 
    Document   : qrcode.jsp
    Created on : 28-May-2024, 7:45:37 pm
    Author     : Pranab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donate</title>
            <link rel="shortcut icon" href="image/home/white-icon.png" type="image/png" />

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        .container1 {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .container1 img {
            max-width: 200px;
            margin-bottom: 20px;
        }
        .container1 h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .container1 p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .container1 .qr-code {
            margin-bottom: 20px;
        }
        .back-button {
            position: fixed;
            top: 10px;
            right: 10px;
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
    <button class="back-button" onclick="window.history.back();">Back</button>
    <div class="container1">
        <h1>Support Disaster Relief Efforts</h1>
        <p>Your contribution can make a significant difference.</p>
        <div class="qr-code">
            <img src="image/donation/donate.jpg" alt="UPI QR Code">
        </div>
        <p>Scan the QR code above to donate via UPI.</p>
        <p>Thank you for your generosity!</p>
    </div>
</body>
</html>
