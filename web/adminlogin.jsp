

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
    String name = request.getParameter("name");
   String password = request.getParameter("password");
 
Statement st = conn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where name='" + name + "' and password='" + password + "'");
    if (rs.next()) {
       response.sendRedirect("admin.jsp");
    } else {
        out.println("Invalid password <a href='admindex.jsp'>try again</a>");
    }
    conn.close();
%>
    </body>
</html>
