<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Your Cart</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
  
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    
    <link rel="stylesheet" href="css/custom.css">
    
    <link rel="shortcut icon" href="favicon.png">
    
  </head>
  <body>
      <%@include file="header.jsp" %>
      <br>
    
      <%@page import="java.io.*,java.sql.*,java.util.*" %>
        <%@include file="connection.jsp" %>
       <%!String cid ; ResultSet rs,rs2; int q,total,fa;%>
       <%
       try
    {
       cid=request.getSession().getAttribute("custid"). toString();
       String qry="select* from cart where custid=?";
       PreparedStatement ps=conn.prepareStatement(qry);
       ps.setString(1,cid);
       rs=ps.executeQuery();
       
       String qry2="select sum(quantity*prod_price) from cart where custid=?";
       PreparedStatement ps2=conn.prepareStatement(qry2);
       ps2.setString(1,cid);
       rs2=ps2.executeQuery();
       rs2.next();
       total=rs2.getInt(1);
       
       %>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Shopping cart</li>
                </ol>
              </nav>
            </div>
            <div id="basket" class="col-lg-9">
              <div class="box">
                <form method="post" action="payment.jsp">
                  <h1>Shopping cart</h1>
                  
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th colspan="2">Product</th>
                          <th>Quantity</th>
                          <th>Unit price</th>
                          <th>Discount</th>
                          <th colspan="2">Total</th>
                        </tr>
                      </thead>
                      <%
                      while(rs.next())
                      {
                      %>
                      <tbody>
                        <tr>
                          <td><a href="#"><img src="DisplayPhotoServlet?id=<%=rs.getInt("prodid")%>" alt="White Blouse Armani"></a></td>
                          <td><a href="#"><%=rs.getString("prod_name")%></a></td>
                          <td>
                            <input type="number" value="<%=rs.getString("quantity")%>" class="form-control">
                          </td>
                          <td><i class="fa fa-inr"></i><%=rs.getString("prod_price")%></td>
                          <td>$0.00</td>
                          <td><i class="fa fa-inr"></i><%=rs.getString("prod_price")%></td>
                          <td><a href="remove.jsp?pid=<%= rs.getInt("prodid")%>"><i class="fa fa-trash-o"></i></a></td>
                        </tr>
                      
                      </tbody>
                      <%
    }
    }
       catch(Exception ex){
           response.sendRedirect("register.jsp");
       }
       %>
                    
       <tfoot>
                        <tr>
                          <th colspan="5">Grand Total</th>
                          <th colspan="2"><i class="fa fa-inr"></i><%= total%></th>
                        </tr>
                      </tfoot>
                        
                    </table>
                  </div>
                  <!-- /.table-responsive-->
                  <div class="box-footer d-flex justify-content-between flex-column flex-lg-row">
                    <div class="left"><a href="categories.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i> Continue shopping</a></div>
                    <div class="right">
                      <button type="submit" class="btn btn-primary">Proceed to checkout <i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                  <input type="hidden" value="<%=total%>" name="amnt">
                </form>
              </div>              
            </div>
           
            <div class="col-lg-3">
              <div id="order-summary" class="box">
                <div class="box-header">
                  <h3 class="mb-0">Order summary</h3>
                </div>
                <p class="text-muted"> Free Shipping </p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>Order subtotal</td>
                        <th><i class="fa fa-inr"></i><%= total%></th>
                      </tr>
                      <tr>
                        <td>Shipping and handling</td>
                        <th><i class="fa fa-inr"></i>00</th>
                      </tr>
                      <tr>
                        <td>Tax</td>
                        <th><i class="fa fa-inr"></i>00</th>
                      </tr>
                      <tr class="total">
                        <td>PAY</td>
                        <th><i class="fa fa-inr"></i><%= total%></th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   
     
    <%@include file="footer.jsp"%>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>