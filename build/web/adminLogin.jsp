<%-- 
    Document   : adminLogin.jsp
    Created on : 08-Mar-2024, 11:42:29 am
    Author     : Suraj
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="javax.servlet.*,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Admin Login Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

            * {
                font-family: 'Poppins';
            }
            html, body {
                background-color: #F6F5F2;
                height: 100%;
                margin: 0;
                padding: 0;
            }
            form {
                width: 300px;
                margin: 0 auto;
            }
            label {
                display: block;
                margin-top: 10px;
            }
            input[type="text"], input[type="password"], select {
                width: 100%;
                padding: 8px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                background-color: #bfff80;
            }
            input[type="submit"] {
                background-color: #006600;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                margin-top: 10px;
            }
            h1{
                text-align: center;
                color: darkblue;
            }
        </style>
    </head>
    <body>
        <h1>Admin Login</h1>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null) {
                if (username.equals("admin") && password.equals("admin")) {
                    response.sendRedirect("admin/admin.jsp");
                } else {
                    out.println("<h2>Invalid username or password. Please try again.</h2>");
                }
            }
        %>
        <form method="post">
            <label for="username">Username:</label>
            <input type="text" name="username"><br>

            <label for="password">Password:</label>
            <input type="password" name="password"><br>

            <input type="submit" value="Login">
        </form>
    </body>
</html>
