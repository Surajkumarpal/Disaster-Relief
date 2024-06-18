<%-- 
    Document   : storeMap.jsp
    Created on : 30-May-2024, 12:29:40 pm
    Author     : Suraj
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Retrieve latitude, longitude, name, email, disasterType, and phone from the request
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String latitude = request.getParameter("latitude");
    String longitude = request.getParameter("longitude");
    String disaster_type = request.getParameter("disasterType");
    String phone_number = request.getParameter("phone");

    // JDBC connection parameters
    String url = "jdbc:mysql://localhost:3306/disaster";
    String username = "root";
    String password = "jeet1234";

    // Insert latitude, longitude, name, email, disasterType, and phone into MySQL database
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, password);
        Statement stmt = conn.createStatement();

        // Prepare SQL query
        String query = "INSERT INTO request (name, email, phone_number, disaster_type, latitude, longitude) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = conn.prepareStatement(query);
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, phone_number);
        pstmt.setString(4, disaster_type);
        pstmt.setString(5, latitude);
        pstmt.setString(6, longitude);

        // Execute query
        pstmt.executeUpdate();

        // Close connections
        pstmt.close();
        stmt.close();
        conn.close();

        // Send response back to the client
        response.getWriter().write("Location stored successfully.");
    } catch (Exception e) {
        e.printStackTrace();
        response.getWriter().write("Error storing location: " + e.getMessage());
    }
%>
