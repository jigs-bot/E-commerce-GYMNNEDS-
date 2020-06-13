

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receipt</title>
        <script>
            function show(){
                if (confirm("invalid card details"))
                {
                    window.location="payment.jsp";
                }
                else
                {
                    window.location="receipt.jsp";
                }
                
                }
           
        </script>
    </head>
    
    <body>
        <%@include file="connection.jsp" %> 
      <%@page import="java.sql.*"%> 
     <%! int amount,card,cvv,vy,vm,transid; String username; ResultSet rs;%>
      
     <%
            java.util.Date today=new java.util.Date();
            Date currentDate= new java.sql.Date(today.getTime());
            
     
     amount= Integer.parseInt(request.getParameter("price"));
     card= Integer.parseInt(request.getParameter("cardnumber"));
     cvv=Integer.parseInt(request.getParameter("cvv"));
     username=request.getParameter("username");
     vy = Integer.parseInt(request.getParameter("year"));
     vm =Integer.parseInt(request.getParameter("month"));
     
     try{
         
         
         String qry="select *from banktable where cardno=? and holdername=? and cvv=? and vyear=? and vmonth=? and balance>=?";
         PreparedStatement ps=conn.prepareStatement(qry);
         ps.setInt(1, card);
         ps.setString(2, username);
         ps.setInt(3, cvv);
         ps.setInt(4,vy);
         ps.setInt(5,vm);
         ps.setInt(6,amount);
         rs=ps.executeQuery();
         if(!rs.next())
         {%>
         <script>
             show();
             </script>
             <%
         }
         else{
             
             String q="select max(tran_id) from payment";
         PreparedStatement p=conn.prepareStatement(q);
         ResultSet r=p.executeQuery();
         if(r.next()){
         transid=r.getInt(1);
         transid++;
         
            String cid= request.getSession().getAttribute("custid"). toString();
            String qry1="INSERT INTO payment(TRAN_ID,PROD_PRICE,CUST_ID,CARD_NO,CURRENTDATE) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps1=conn.prepareStatement(qry1);
            ps1.setInt(1,transid);
             ps1.setInt(2,amount);
            ps1.setString(3,cid);
            ps1.setInt(4,card);
            ps1.setString(5,currentDate.toString());
            
            int x=ps1.executeUpdate();
            if(x==1)
            {
                String qry2="select * from cart where CUSTID=?";
                PreparedStatement ps2=conn.prepareStatement(qry2);
                ps2.setString(1,cid);
                ResultSet rs2=ps2.executeQuery();
                while(rs2.next())
                 {
                    String qry3="insert into orderdetails values(?,?,?,?,?,?,?,?)";
                    PreparedStatement ps3=conn.prepareStatement(qry3);
                    
                     ps3.setInt(1,transid);
                    ps3.setString(2,cid);
                    ps3.setInt(3,rs2.getInt("prodid"));
                    ps3.setString(4,rs2.getString("prod_name"));
                    ps3.setInt(5,rs2.getInt("prod_price"));
                    ps3.setInt(6,rs2.getInt("quantity"));
                    ps3.setString(7,"pending");
                    ps3.setString(8,currentDate.toString());
                    int y=ps3.executeUpdate();
                    if(y==1)
                    {
                     String qry4="delete from cart where custid=?";
                     PreparedStatement ps4=conn.prepareStatement(qry4);
                     ps4.setString(1,cid);
                     int z=ps4.executeUpdate();
                    }
                }
            }
         }
            
   }
         %>
         
     <%    
         
     }
     catch(Exception ex){
     
    out.println(ex);
     }
     %>   
  
      <div class="container py-5">

  <div class="row">
    <div class="col-lg-7 mx-auto">
      <div class="bg-white rounded-lg shadow-sm p-5">
        <!-- Credit card form tabs -->
        
        <ul  class="nav bg-light success nav-pills rounded-pill nav-fill mb-3">
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-card" class="nav-link active rounded-pill">
                                <i class="fa fa-cart-arrow-down"></i>
                                THANK YOU FOR SHOPPING
                            </a>
          </li>
         
        </ul><br>
        <div class="tab-content">

         
          <div id="nav-tab-card" class="tab-pane fade show active">
            
           
            <center> <table>
                 
                 <tr><td ><h1>BILLING DETAILS</h1></td><tr>
                     <tr>
                         <td>NAME</td>
                         <td><b>:<% out.println(username);%></b></td>
                         </tr>
                         <tr>
                             <td>CARD NO</td>
                             <td><b>:<%out.println(card);%></b></td>
                         </tr>
                         <tr>
                             <td>AMOUNT</td>
                             <td><b>:<%out.println(amount);%></b></td>
                         </tr
                         
                          <tr>
                             <td>DATE</td>
                             <td><b>:<%out.println(currentDate.toString());%></b></td>
                         </tr>
             
             </table>      
              </center>         
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  
     
          <ul class="nav bg-light nav-pills rounded-pill nav-fill ">
          <li class="nav-item">
            <a  href="categories.jsp" class="nav-link active rounded-pill">
                                <i class="fa fa-cart-arrow-down"></i>
                                CONTINUE TO SHOP
                            </a>
          </li>
         
        </ul>
          
       
        <%@include file="footer.jsp"%>
    </body>
</html>
