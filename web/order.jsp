<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Order</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    
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
        <%@include file="connection.jsp" %>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">My orders</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
             
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">Customer section</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column"><a href="order.jsp" class="nav-link active"><i class="fa fa-list"></i> My orders</a><a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> My account</a><a href="logout.jsp" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></ul>
                </div>
              </div>
              
            </div>
            <div id="customer-orders" class="col-lg-9">
              <div class="box">
                <h1>My orders</h1>
                <p class="lead">Your orders on one place.</p>
                <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>
                <hr>
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Items</th>
                        <th>Date</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                         <%@page import="java.sql.*"%> 
                        <%
                        try{
                         String cid= request.getSession().getAttribute("custid"). toString();
                        String qry= "select*from orderdetails where custid=?"; 
                        PreparedStatement ps=conn.prepareStatement(qry);
                        ps.setString(1,cid);
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
        {%>
        <tr>
                       <td><img src="DisplayPhotoServlet?id=<%=rs.getInt("prodid")%>"></td>            
                        <td><%=rs.getString("currentdate")%></td>
                        <td><%=rs.getInt("price")%></td>
                        <td><span class="badge badge-info"><%=rs.getString("status")%></span></td>
                        <td><a href="cancelorder.jsp?pid=<%=rs.getInt("prodid")%>" class="btn btn-primary btn-sm"><i class="fa fa-times" aria-hidden="true"></i>Cancel</a></td>
                      </tr>
        
                        <%
        }
                        }
                        catch( Exception ex){
                            
                        }
                        
                        %>

                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
    <%@include file="footer.jsp"%>
  </body>
</html>