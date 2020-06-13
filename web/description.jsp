<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Description</title>
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
      <%@page import="java.sql.*"%> 
     <%@include file="connection.jsp" %>
        <%
        try {
            int proid; ResultSet rs;
        proid=Integer.parseInt(request.getParameter("pid"));
        
        String qry="Select * from product where id=?";
        PreparedStatement ps=conn.prepareStatement(qry);
        ps.setInt(1,proid);
        rs=ps.executeQuery();
        if(rs.next())
        {
        
        %>
  
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item"><a href="#">Shop</a></li>
                  <li class="breadcrumb-item"><a href="#">Categorie</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Product Details</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3 order-2 order-lg-1">
             
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">Categories</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column category-menu">
                     <li><a href="category.html" class="nav-link active">Suppliments <span class="badge badge-secondary">42</span></a>
                      <ul class="list-unstyled">
                        <li><a href="productcategory.jsp?category=protein" class="nav-link">Protein</a></li>
                        <li><a href="productcategory.jsp?category=bcaa" class="nav-link">Bcaa</a></li>
                        <li><a href="productcategory.jsp?category=tees" class="nav-link">Cretaine</a></li>
                        <li><a href="productcategory.jsp?category=tees" class="nav-link">Fat Burner</a></li>
                      </ul>
                    </li>
                     <li><a href="productcategory.jsp" class="nav-link active">GymWears  <span class="badge badge-light">123</span></a>
                      <ul class="list-unstyled">
                        <li><a href="productcategory.jsp?category=tees" class="nav-link">T-shirts</a></li>
                        <li><a href="productcategory.jsp?category=shoes" class="nav-link">Shoes</a></li>
                        <li><a href="productcategory.jsp?category=gloves" class="nav-link">Pants</a></li>
                        <li><a href="productcategory.jsp?category=vests" class="nav-link">Accessories</a></li>
                      </ul>
                    </li>
                    <li><a href="productcategory.jsp" class="nav-link active">Equipments  <span class="badge badge-secondary">11</span></a>
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
            <div class="col-lg-9 order-1 order-lg-2">
              <div id="productMain" class="row">
                <div class="col-md-6">
                  <div data-slider-id="1" class="owl-carousel shop-detail-carousel">
                    <div class="item"> <img src="DisplayPhotoServlet?id=<%=proid%>" alt="" class="img-fluid"></div>
                  </div>
                  <div class="ribbon sale">
                    <div class="theribbon">SALE</div>
                    <div class="ribbon-background"></div>
                  </div>
                  
                  <div class="ribbon new">
                    <div class="theribbon">NEW</div>
                    <div class="ribbon-background"></div>
                  </div>
                  
                </div>
                <div class="col-md-6">
                  <div class="box">
                    <h1 class="text-center"><%=rs.getString("name")%></h1>
                    <p class="goToDescription"><a href="#details" class="scroll-to">Scroll to product details, material &amp; care and sizing</a></p>
                    <p class="price"> Rs.<%=rs.getInt("price")%></p>
                    <p class="text-center buttons"><a href="cart.jsp?pid=<%=proid%>&pnm=<%=rs.getString("name")%>&pr=<%=rs.getInt("price")%>&qty=1" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to cart</a><a href="basket.html" class="btn btn-outline-primary"><i class="fa fa-heart"></i> Add to wishlist</a></p>
                  </div>
                  <div data-slider-id="1" class="owl-thumbs">
                    <button class="owl-thumb-item"><img src="DisplayPhotoServlet?id=<%=proid%>" alt="" class="img-fluid"></button>
                    
                  </div>
                </div>
              </div>
              <div id="details" class="box">
                
                <h4>Product details</h4>
                <ul>
               <li><%=rs.getString("description")%></li>
               </ul>
                <h4>Brand</h4>
                <ul>
                 <li> <%=rs.getString("brand")%></li>
                </ul>
                <h4>Size &amp; Fit</h4>
                <ul>
                  <li>Regular fit</li>
                  
                </ul>
                 <h4><%=rs.getString("warrenty")%> Days Replacement Scheme</h4><br>
                <blockquote>
                  <p><em>Define style this season with Armani's new range of trendy tops, crafted with intricate details. Create a chic statement look by teaming this lace number with skinny jeans and pumps.</em></p>
                </blockquote>
                <hr>
                <div class="social">
                  <h4>Show it to your friends</h4>
                  <p><a href="#" class="external facebook"><i class="fa fa-facebook"></i></a><a href="#" class="external gplus"><i class="fa fa-google-plus"></i></a><a href="#" class="external twitter"><i class="fa fa-twitter"></i></a><a href="#" class="email"><i class="fa fa-envelope"></i></a></p>
                </div>
              </div>
                
                
            </div>
            
          </div>
        </div>
      </div>
    </div>
        
        
        
         <%
                
        }
        else
        {
            out.println("not found");
        }
        }
        catch (Exception ex)
        {
            out.println(ex);
        }
        conn.close();
        %>
        <%@include file="footer.jsp"%>
    
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>