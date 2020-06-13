

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="connection.jsp" %> 
      <%@page import="java.sql.*"%>
        <%
      try{
          String stats=request.getParameter("radio1");
          int id= Integer.parseInt(request.getParameter("hidden"));
         String qry="UPDATE orderdetails SET status=? WHERE orderno=?";
         PreparedStatement ps=conn.prepareStatement(qry);
          ps.setString(1,stats);
          ps.setInt(2,id);
          ps.executeUpdate();
          response.sendRedirect("adminorder.jsp");
}
catch(Exception ex){
 out.println(ex);   
}

%>
    </body>
</html>
