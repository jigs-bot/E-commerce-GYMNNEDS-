

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
       <%@page import="java.io.*,java.sql.*,java.util.*" %>
        <%@include file="connection.jsp" %>
       <%!String pnm,cid; int prodid,prodprice,q;%>
       <%
       try{
       cid=request.getSession().getAttribute("custid"). toString();
     
       prodid=Integer.parseInt(request.getParameter("pid"));
       pnm=request.getParameter("pnm");
       prodprice=Integer.parseInt(request.getParameter("pr"));
        q =Integer.parseInt(request.getParameter("qty"));

       String qry="insert into cart values(?,?,?,?,?)";
       PreparedStatement ps=conn.prepareStatement(qry);
       ps.setString(1,cid);
       ps.setString(2,pnm);
       ps.setInt(3,prodprice);
       ps.setInt(4,q);
       ps.setInt(5,prodid);
       
       ps.executeUpdate();
       response.sendRedirect("clothes.jsp");
       
       }
           catch(Exception ex){
                   response.sendRedirect("register.jsp");
                   }
      
       %>
    </body>
</html>
