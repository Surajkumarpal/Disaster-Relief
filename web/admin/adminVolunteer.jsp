<%-- 
    Document   : adminVolunteer
    Created on : 26-May-2024, 2:56:27 pm
    Author     : Pranab
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Volunteers</title>
    <style>
        table {
            text-align: left;
            position: relative;
            border-collapse: collapse;
            background-color: #f6f6f6;
        }
        td, th {
            border: 1px solid #999;
            padding: 20px;
        }
        th {
            background: brown;
            color: white;
            border-radius: 0;
            top: 0;
            padding: 10px;
        }
        button {
            background: brown;
            color: white;
            border-radius: 10px;
            font-weight: bold;
            padding: 5px;
            cursor: pointer;
        }
        button:hover {
            background: darkred;
            color: whitesmoke;
        }
        .back-button {
            position: fixed;
            top: 10px;
            right: 10px;
            background: darkred;
            color: white;
            font-weight: bold;
            padding: 5px;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: brown;
            color: whitesmoke;
        }
    </style>
</head>
<body>
    <a href="admin.jsp"><button class="back-button">Back</button></a>
    <center>
        <h2 style="color: red">LIST OF VOLUNTEERS</h2>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Disaster</th>
                <th>Action</th>
            </tr>
            <%
            String url = "jdbc:mysql://localhost/disaster";
            String Username = "root";
            String Password = "pranab1234";
            String Query = "select * from volunteer";
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, Username, Password);
                pst = conn.prepareStatement(Query);
                rs = pst.executeQuery();
                while (rs.next()) {
                    String id = rs.getString("id"); // Assuming there's an 'id' column in your 'volunteer' table
            %>
            <tr>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("phone") %></td>
                <td><%= rs.getString("location") %></td>
                <td><a href="deleteVolunteer.jsp?id=<%= id %>"><button>Delete</button></a></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </table>
    </center>
</body>
</html>
