<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>category</title>
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
  <%@include file="header.jsp" %>
  <body>
    
   
   <%@page import="java.sql.*"%> 
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
                  <li aria-current="page" class="breadcrumb-item active">Our Products</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>GYMNEEDS</h1>
                <p>In our Product department we offer wide selection of the best products we have found and carefully selected worldwide.</p>
              </div>
             
               <div class="row products"> 
                
                <%
        try {
            String subcategory; ResultSet rs;
        subcategory=request.getParameter("category");
        
        String qry="Select * from product where subcategory=?";
        PreparedStatement ps=conn.prepareStatement(qry);
        ps.setString(1,subcategory);
        rs=ps.executeQuery();
        
        while(rs.next())
        {
        
        %>
            
              
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="description.jsp?pid=<%=rs.getInt("id")%>"><img src="DisplayPhotoServlet?id=<%=rs.getInt("id")%>" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="description.jsp?pid=<%=rs.getInt("id")%>"><img src="DisplayPhotoServlet?id=<%=rs.getInt("id")%>" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="description.jsp?pid=<%=rs.getInt("id")%>" class="invisible"><img src="images/equipment/d1.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="description.jsp?pid=<%=rs.getInt("id")%>"><%=rs.getString("name")%></a></h3>
                      <p class="price"> 
                        <del></del><%=rs.getInt("price")%>
                      </p>
                      <p class="buttons"><a href="description.jsp?pid=<%=rs.getInt("id")%>" class="btn btn-outline-secondary">View detail</a><a href="cart.jsp?pid=<%=rs.getInt("id")%>&pnm=<%=rs.getString("name")%>&pr=<%=rs.getInt("price")%>&qty=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                   
                  </div>
                </div>
              
              
             <%
                
        }
       
        }
        catch (Exception ex)
        {
            out.println(ex);
        }
        conn.close();
        %> 
        </div>
            </div>
           
            <div class="col-lg-3">
             
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Categories</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column category-menu">
                    <li><a href="suppliments.jsp" class="nav-link active">Suppliments <span class="badge badge-secondary">42</span></a>
                      <ul class="list-unstyled">
                        <li><a href="productcategory.jsp?category=protein" class="nav-link">Protein</a></li>
                        <li><a href="productcategory.jsp?category=bcaa" class="nav-link">Bcaa</a></li>
                        <li><a href="productcategory.jsp?category=creatine" class="nav-link">Cretaine</a></li>
                        <li><a href="productcategory.jsp?category=gainer" class="nav-link">Fat Burner</a></li>
                      </ul>
                    </li>
                    <li><a href="clothes.jsp" class="nav-link active">GymWears  <span class="badge badge-light">123</span></a>
                      <ul class="list-unstyled">
                        <li><a href="productcategory.jsp?category=tees" class="nav-link">T-shirts</a></li>
                        <li><a href="productcategory.jsp?category=shoes" class="nav-link">Shoes</a></li>
                        <li><a href="productcategory.jsp?category=gloves" class="nav-link">Gloves</a></li>
                        <li><a href="productcategory.jsp?category=vests" class="nav-link">Vest</a></li>
                      </ul>
                    </li>
                    <li><a href="equipments.jsp" class="nav-link active">Equipments  <span class="badge badge-secondary">11</span></a>
                      <ul class="list-unstyled">
                        <li><a href="productcategory.jsp?category=DUMBELL" class="nav-link">Dumbells</a></li>
                        <li><a href="productcategory.jsp?category=cardio" class="nav-link">cardio</a></li>
                        <li><a href="productcategory.jsp?category=BAND" class="nav-link">bands</a></li>
                        <li><a href="productcategory.jsp?category=leg machine " class="nav-link">leg machine</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
             
            </div>
          </div>
        </div>
      </div>
    </div>
   <%@include file="footer.jsp" %>
    
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>