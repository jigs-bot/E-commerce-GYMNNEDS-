
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GymNeeds</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
       
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    
    <link rel="stylesheet" href="css/custom.css">
    
    <link rel="shortcut icon" href="favicon.png">
      
    </head>
    <div id="top">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 offer mb-3 mb-lg-0"><a href="#" class="btn btn-success btn-sm">Offer of the day</a><a href="#" class="ml-1">Get flat 35% off on orders over $50!</a></div>
            <div class="col-lg-6 text-center text-lg-right">
              <ul class="menu list-inline mb-0">
                <li class="list-inline-item"><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
                <li class="list-inline-item"><a href="register.jsp">Register</a></li>
                <li class="list-inline-item"><a href="#footer">Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Customer login</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
              </div>
              <div class="modal-body">
                <form action="login.jsp" method="post">
                  <div class="form-group">
                    <input id="email-modal" type="email" placeholder="email" name="username" class="form-control">
                  </div>
                  <div class="form-group">
                    <input id="password-modal" type="password" placeholder="password" name="password" class="form-control">
                  </div>
                  <p class="text-center">
                    <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                  </p>
                </form>
                <p class="text-center text-muted">Forget Password?</p>
                <p class="text-center text-muted"><a href="#" data-toggle="modal" data-target="#forget"><strong>Click Here</strong></a>! To Recover your Password</p>
              </div>
            </div>
          </div>
        </div>
       
        <div id="forget" tabindex="-1" role="dialog" aria-labelledby="forget" aria-hidden="true" class="modal fade">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Forget Password</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
              </div>
              <div class="modal-body">
                <form action="forget.jsp">
          <div class="form-group"><input type="email" name="email"></div>
         <div class="form-group"> <input type="submit" value="change"></div>
          </form>            
              </div>
            </div>
          </div>
        </div>
        
      </div>
     <%@include file="header.jsp" %>
     <body>
         
<div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div id="main-slider" class="owl-carousel owl-theme">
                
                <div class="item"><img src="images/gym.jpg" alt="" class="img-fluid"></div>
              
            </div>
          </div>
        </div>
       
        <div id="advantages">
          <div class="container">
            <div class="row mb-4">
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-heart"></i></div>
                  <h3><a href="#">We love our customers</a></h3>
                  <p class="mb-0">We are known to provide best possible service ever</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-tags"></i></div>
                  <h3><a href="#">Best prices</a></h3>
                  <p class="mb-0">We Provide You All Products At Affordable Price.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                  <div class="icon"><i class="fa fa-thumbs-up"></i></div>
                  <h3><a href="#">100% satisfaction guaranteed</a></h3>
                  <p class="mb-0">Free returns on everything for 10 days</p>
                </div>
              </div>
            </div>
           
          </div>
          
        </div>
       
        <div class="box text-center">
          <div class="container">
            <div class="col-md-12">
              <h3 class="text-uppercase">CATEGORIES</h3>
              
            </div>
          </div>
        </div>
       
        <div class="container">
          <div class="col-md-12">
            <div id="blog-homepage" class="row">
              <div class="col-sm-4">
                <div class="post">
                  <h4><a href="post.html">SUPPLIMENTS</a></h4>
                  
                  <hr>
                  <img src="images/suppl.jpg" style=" max-width: 100%; max-height: 50%;">
                   <p class="read-more"><a href="suppliments.jsp" class="btn btn-primary">SHOP</a></p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="post">
                  <h4><a href="post.html">GYMWEARS</a></h4>
                   <hr>
                  <img src="images/clothe.jpg" style=" max-width: 100%; max-height: 50%;">
                  <p class="read-more"><a href="clothes.jsp" class="btn btn-primary">SHOP</a></p>
                </div>
              </div>
                 <div class="col-sm-4">
                <div class="post">
                  <h4><a href="post.html">EQUIPMENTS</a></h4>
                  
                  <hr>
                  <img src="images/equ.jpg" style=" max-width: 90%; max-height: 50%;">
                  <p class="read-more"><a href="equipments.jsp" class="btn btn-primary">SHOP</a></p>
                </div>
              </div>
            </div>
            
          </div>
        </div>
        <div class="container">
          <div class="col-md-12">
            <div class="box slideshow">
              <h3>Get Inspired</h3>
              <p class="lead">Get the inspiration from our CUSTOMERS</p>
              <div id="get-inspired" class="owl-carousel owl-theme">
                <div class="item"><a href="#"><img src="images/download1.jpg" alt="Get inspired" class="img-fluid"></a></div>
                <div class="item"><a href="#"><img src="images/download2.jpeg" alt="Get inspired" class="img-fluid"></a></div>
                <div class="item"><a href="#"><img src="images/download3.jpg" alt="Get inspired" class="img-fluid"></a></div>
              </div>
            </div>
          </div>
        </div>
      
      </div>
    </div>
  
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
    </body>
    <%@include file="footer.jsp" %>
</html>
