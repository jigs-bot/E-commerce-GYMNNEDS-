

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>ORDER STATUS</h1></center>
        <%@include file="connection.jsp" %> 
      <%@page import="java.sql.*"%>
       <table border="" align="center" id="table">
           
           <tr><td>Product</td>
               <td>ID</td>
               <td>Status</td>
               <td>ChangeStatus</td>
           </tr>
           <%
           try
           {
              
           String qry="Select * from orderdetails";
           PreparedStatement ps=conn.prepareStatement(qry);
           ResultSet rs=ps.executeQuery();
           
           while(rs.next()){
              
              
           %>
           <tr><td><%=rs.getString("PRODNM")%></td>
               <td><%=rs.getInt("ORDERNO")%></td>
               <td><%=rs.getString("STATUS")%></td>
              
               <td><form action="alterorder.jsp">
                       <input type="hidden" name="hidden" value="<%=rs.getInt("ORDERNO")%>">
                       <input type="radio" name="radio1" value="Dispatch">Dispatch
                       <input type="radio" name="radio1" value="Shipped">Shipped
                       <input type="radio" name="radio1" value="Delivered">Delivered
                       <input type="submit" value="Alter">
                   </form></td>
           </tr>
          <%
              
           }
           }
           catch(Exception ex){
               
           }
          %>
       </table>
    </body>
</html>
