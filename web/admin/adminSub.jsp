<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscriber List</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }

        .table-container {
            width: 50%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
            text-align: left;
        }
        
        button {
            background: darkred;
            color: white;
            border-radius: 10px;
            font-weight: bold;
            padding: 5px;
            cursor: pointer;
        }

        button:hover {
            background: brown;
            color: whitesmoke;
        }

        .button-container {
            position: fixed;
            top: 60px;
            right: 15px;
        }

        .back-button {
            position: fixed;
            top: 10px;
            right: 15px;
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
    <div class="container">
        <div class="table-container">
            <h2 style="color: red">LIST OF SUBSCRIBERS</h2>
            <table border="1">
                <tr>
                    <th>Email</th>
                    <th>Delete</th>
                </tr>
                <%
                String url = "jdbc:mysql://localhost/disaster";
                String Username = "root";
                String Password = "jeet1234";
                String Query = "select * from news";
                Connection conn = null;
                PreparedStatement pst = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(url, Username, Password);
                    pst = conn.prepareStatement(Query);
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        String email = rs.getString("email");
                        String userId = rs.getString("id"); // Assuming there's an 'id' column in your 'news' table
                %>
                <tr>
                    <td><%= email %></td>
                    <td><a href="deleteSub.jsp?id=<%= userId %>"><button>Delete</button></a></td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </table>
        </div>
        <div class="button-container">
            <a href="adminCsv.jsp"><button>Download</button></a>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
