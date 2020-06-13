

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
       <%
    String name = request.getParameter("username");
   String password = request.getParameter("password");
 
Statement st = conn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer where email='" + name + "' and pswrd='" + password + "'");
    if (rs.next()) {
       session.setAttribute("name", rs.getString("cust_name"));
       session.setAttribute("custid", rs.getInt("id"));
       response.sendRedirect("home.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    conn.close();
%>
    </body>
</html>
