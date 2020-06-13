

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header.jsp" %>
      <br>
    
      <%@page import="java.io.*,java.sql.*,java.util.*" %>
        
       <%! int id;%>
       <%
       try
    {
        String cid=request.getSession().getAttribute("custid"). toString();
       id=Integer.parseInt(request.getParameter("pid"));
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gymneeds","suman");
       String qry=" DELETE from orderdetails  where prodid=? and custid=?";
       PreparedStatement ps=conn.prepareStatement(qry);
       ps.setInt(1,id);
       ps.setString(2,cid);
       int i= ps.executeUpdate();
       if(i > 0)
       {
           
       response.sendRedirect("order.jsp");}
       else{
       out.println("nahi hoga");
       }

  }
       catch(Exception ex){
           out.println( "ye hai error" +ex);
       }
      
       %>
                    
      
    <%@include file="footer.jsp"%>
    </body>
</html>
