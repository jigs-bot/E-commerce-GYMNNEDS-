

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Change Password</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    </head>
    <body style="background-color: #85adad;">
    <br>
    <br>
    <br>
        <%@page import="java.io.*,java.sql.*,java.util.*" %>
        <%@include file="connection.jsp" %>
        <%! String currentp,newp,confirmp; %>
        <%
            currentp=request.getParameter("cpassword");
            newp=request.getParameter("npassword");
            
            

            try{
                
               
                String useremail=session.getAttribute("uemail").toString();
                
                String qry="update customer set upass=? , ucpass=? where uemail=? and upass=?";
                PreparedStatement ps=conn.prepareStatement(qry);
                ps.setString(1,newp);
                ps.setString(2,newp);
                ps.setString(3,useremail);
                ps.setString(4,currentp);
                
                int r=ps.executeUpdate();
                
                if(r==1){
                    
                  %>
                  <div style="margin: auto auto auto auto;">
                      <h3><%="Password Successfully Changed." %></h3>
                  </div>
                      <%   }  else{
                              %>
                              <div style="margin: auto auto auto auto;">
                      <h3><%="Wrong Current Password." %></h3>
                  </div>
                  <%
                              }    
            }
            catch(Exception ex)
            {
            out.println(ex);
            }
            
            %>
            <div>
                <table>
                    <tr>
                        <td><a href="userhome.jsp" class="btn btn-info ">Home</a></td>
                    </tr>
                </table>
            </div>
            
            
            
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>