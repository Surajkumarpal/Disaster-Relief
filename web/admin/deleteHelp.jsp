<%-- 
    Document   : deleteHelp.jsp
    Created on : 31-May-2024, 9:49:25 am
    Author     : Pranab
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<%
Connection conn=null;
PreparedStatement pst=null;
String Url="jdbc:mysql://localhost/disaster";
String UserName ="root";
String Password ="jeet1234";
String id = request.getParameter("id");
String Query ="delete from request where id=?";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(Url,UserName,Password);
	pst = conn.prepareStatement(Query);
	pst.setInt(1,Integer.parseInt(id));
	pst.executeUpdate();
	response.sendRedirect("adminRequest.jsp");
}catch(Exception e){
	e.printStackTrace();
}
%>