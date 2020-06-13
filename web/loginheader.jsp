<%-- 
    Document   : header
    Created on : Mar 1, 2020, 1:25:55 AM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
         <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
   <style> 
        img { 
            max-width: 100%; 
            max-height: 10%;  
        }
   </style>
    </head>
    <body>
      <!-- header -->
          <div>
           
           <nav class="navbar navbar-expand-lg">
        <div class="container"><a href="index.jsp" class="navbar-brand home"><img src="images/logoo.jpg" alt="GYMNEEDS" class="d-none d-md-inline-block"><img src="images/logo.jpg" alt="Obaju logo" class="d-inline-block d-md-none"><span class="sr-only">Obaju - go to homepage</span></a>
          <div class="navbar-buttons">
            <button type="button" data-toggle="collapse" data-target="#navigation" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <button type="button" data-toggle="collapse" data-target="#search" class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></button><a href="basket.html" class="btn btn-outline-secondary navbar-toggler"><i class="fa fa-shopping-cart"></i></a>
          </div>
          <div id="navigation" class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"><a href="#" class="nav-link active">Home</a></li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">SUPPLIMENTS<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>PROTEIN</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">MUSCLE BLAZE</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">OPTIMUM NUTRITION</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">AS IT IS</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">GOLD</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>BCAA</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">OPTIMUM NUTRITION</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">MUSCLE BLAZE</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">SPIDER</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">MY PROTEINX</a></li>
                        </ul>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <h5>WEIGHT GAINER</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">Trainers</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">Sandals</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">Casual</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">Hiking shoes</a></li>
                          <li class="nav-item"><a href="suppliments.jsp" class="nav-link">Casual</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">GYMWEAR<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>MERCHANDISE</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="clothes.jsp" class="nav-link">T-shirts</a></li>
                          <li class="nav-item"><a href="clothes.jsp" class="nav-link">Shirts</a></li>
                          <li class="nav-item"><a href="clothes.jsp" class="nav-link">Pants</a></li>
                          <li class="nav-item"><a href="clothes.jsp" class="nav-link">SHOES</a></li>
                        </ul>
                      </div> 
                    </div>
                  </li>
                </ul>
              </li>
              
               <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link">EQUIPMENTS<b class="caret"></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>MERCHANDISE</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="equipments.jsp" class="nav-link">DUMBELLS</a></li>
                          <li class="nav-item"><a href="equipments.jsp" class="nav-link">RESISTANCE BAND</a></li>
                          <li class="nav-item"><a href="equipments.jsp" class="nav-link">BARBELLS</a></li>
                          <li class="nav-item"><a href="equipments.jsp" class="nav-link">CHEST PRESS</a></li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
              </li>
              
              <% try{
                  if(!session.getAttribute("name").equals("")){%>
               <li class="nav-item dropdown menu-large"><a href="account.jsp" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle nav-link"><b class="caret"><i class="fa fa-user-o fa-lg"></i><%= session.getAttribute("name")%></b></a>
                <ul class="dropdown-menu megamenu">
                  <li>
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <h5>ABOUT US</h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="#" class="nav-link">T-shirts</a></li>
                          <li class="nav-item"><a href="#" class="nav-link">Shirts</a></li>
                          <li class="nav-item"><a href="#" class="nav-link">Pants</a></li>
                          <li class="nav-item"><a href="#" class="nav-link">SHOES</a></li>
                        </ul>
                      </div> 
                        <div class="col-md-6 col-lg-3">
                        <h5><i class="fa fa-user-circle" aria-hidden="true"></i></h5>
                        <ul class="list-unstyled mb-3">
                          <li class="nav-item"><a href="account.jsp" class="nav-link">Manage Account</a></li>
                          <li class="nav-item"><a href="account.jsp" class="nav-link">Orders</a></li>
                          <li class="nav-item"><a href="#"  class="nav-link">Log-Out</a></li>
                        </ul>
                      </div> 
                    </div>
                  </li>
                </ul>
              </li>
              <% }
              }catch(Exception e){
              }
              %>
            </ul>
            <div class="navbar-buttons d-flex justify-content-end">
       
 <div id="search-not-mobile" class="navbar-collapse collapse"></div><a data-toggle="collapse" href="#search" class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span class="sr-only">Toggle search</span><i class="fa fa-search"></i></a>
              
 <div id="basket-overview" class="navbar-collapse collapse d-none d-lg-block">
 <a href="viewcart.jsp" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span>cart</span></a></div>
            
            </div>
          </div>
        </div>
      </nav>
      <div id="search" class="collapse">
        <div class="container">
          <form role="search" class="ml-auto">
            <div class="input-group">
              <input type="text" placeholder="Search" class="form-control">
              <div class="input-group-append">
                <button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button>
              </div>
            </div>
          </form>
        </div>
      </div>
           
           
       </div>
        <!-- header end -->
        
        
        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
    </body>
</html>
