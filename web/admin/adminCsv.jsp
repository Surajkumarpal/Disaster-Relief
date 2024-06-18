<%-- 
    Document   : csv.jsp
    Created on : 27-May-2024, 10:10:46 pm
    Author     : Pranab
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

    <%
        // Connect to MySQL database
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/disaster", "root", "jeet1234");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM news");

        // Create a buffer to write the CSV data
        StringBuilder csvData = new StringBuilder();

        // Write the CSV header
        csvData.append("email\n");

        // Write the CSV data
        while (rs.next()) {
            csvData.append(rs.getString("email"));
            csvData.append("\n");
        }

        // Close the database connection
        conn.close();

        // Set the response headers to send the CSV data as a download
        response.setHeader("Content-Disposition", "attachment; filename=\"subscriber.csv\"");
        response.setContentType("text/csv");

        // Write the CSV data to the response output stream
        out.write(csvData.toString());
    %>