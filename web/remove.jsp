<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ORDER</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    
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
       String qry=" DELETE from cart  where prodid=? and custid=?";
       PreparedStatement ps=conn.prepareStatement(qry);
       ps.setInt(1,id);
       ps.setString(2,cid);
       int i= ps.executeUpdate();
       if(i > 0)
       {
           
       response.sendRedirect("viewcart.jsp");}
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