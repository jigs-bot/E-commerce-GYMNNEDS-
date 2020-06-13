

<%@ page import="java.sql.*" %>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gymneeds","suman");
%>
