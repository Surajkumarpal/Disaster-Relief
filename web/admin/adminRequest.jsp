<%-- 
    Document   : adminRequest
    Created on : 21-May-2024, 11:58:38 am
    Author     : Pranab
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Requests</title>
        <style>
            table {
                text-align: left;
                position: relative;
                border-collapse: collapse;
                background-color: #f6f6f6;
            }/* Spacing */
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
            button{
                background:darkred;
                color: white;
                border-radius: 10px;
                font-weight: bold;
                padding: 5px 5px 5px 5px;
                cursor: pointer;

            }
            button:hover{
                background: brown;
                color: whitesmoke;
            }
            .back-button {
                position: fixed;
                top: 10px;
                right: 10px;
                background:darkred;
                color: white;
                font-weight: bold;
                padding: 5px 5px 5px 5px;
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
        <h2 style="color : red">HELP REQUEST RECORD</h2>
        <table border= "1">
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
            String Password = "jeet1234";
            String Query ="select * from request";
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
	
            try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(url,Username,Password);
                    pst = conn.prepareStatement(Query);
                    rs = pst.executeQuery();
                    while(rs.next()){
			
            %>
            <tr>
                <td> <%=rs.getString("name") %></td>
                <td> <%=rs.getString("email") %></td>
                <td> <%=rs.getString("phone_number")%></td>
                <td> <%=rs.getString("disaster_type")%></td>
                <td><a href="adminHelp.jsp?id=<%=rs.getString("id")%>"><button>PROVIDE HELP</button></a></td>	


                <%
                         }
                }catch(Exception e){
                        e.printStackTrace();
                }
                %>
        </table>
    </center>
</body>
</html>