 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gymwear</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
         
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style> 
        img { 
            max-width: 100%; 
            max-height: 50%; 
            padding-top:10px; 
        } 
        h1 { 
            color: green; 
        } 
        .custom {
    width: 200px !important;
}
.card{text-align: center; border: none; border-radius: 5px;
margin-bottom: 100px;
}
    </style> 
    </head>
     
   <%@include file="header.jsp" %>
    <body>
   <br>
    <div class="container"> 
        <div class="card-group"> 
 
            <div class="row">
                <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Gymwear</li>
                </ol>
              </nav>
            </div>
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=14">
                    <img class="card-img-top" src= "images/clothes/d1.jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-titl text-primary">SHORTS<br>500</h3>
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=14&pnm=shorts&pr=500&qty=1'"></i> ADD TO CART 
                       </button> <br><br>
                       <button type="button" class="btn btn-info custom " onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                 <a href="description.jsp?pid=15">
                    <img class="card-img-top" src= "images/clothes/d2.jpg"> 
                    </a>
                      
                    <div class="card-body"> 
                        <h4 class="card-title text-primary"> GYM VESTS <br>800</h4>
                        <div class="card-footer ">
                            <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=15&pnm=gym vest&pr=800&qty=1'"></i>ADD TO CART</button> <br><br>
                            <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div>
                        </div> 
                </div> 
                
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=16">
                    <img class="card-img-top" src= "images/clothes/d3.jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-title text-primary"> FULL TEES <br>490</h3>
                         <div class="ribbon sale">
                      <div class="theribbon">SALE</div>
                      <div class="ribbon-background"></div>
                    </div>
                        <div class="card-footer">
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=16&pnm=Tees&pr=490&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp?amnt=490'">BUY NOW</button> 
                        </div>
                        </div> 
                </div> 
                
                  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=17">
                    <img class="card-img-top" src= "images/clothes/d4.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">SHOES.<br>999</h3>
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=17&pnm=shoes&pr=999&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=18">
                    <img class="card-img-top" src= "images/clothes/d5.jpg"> 
                    </a> 
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">MEN FULL TEES<br>1100</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=18&pnm=Tees&pr=1100&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOWT</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=19">
                    <img class="card-img-top" src= "images/clothes/d6.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">TROUSER<br>1100</h3> 
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=19&pnm=Trouser&pr=1100&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=20">
                    <img class="card-img-top" src= "images/clothes/d7.jpg"> 
                    </a>
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">SHOES<br>999</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=20&pnm=shoes&pr=999&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=21">
                    <img class="card-img-top" src= "images/clothes/d8.jpg"> 
                    </a>
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">T-SHIRT<br>1100</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=21&pnm=T-Shirts&pr=1100&qty=1'">  </i>ADD TO CART</button><br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=22">
                    <img class="card-img-top" src= "images/clothes/d9.jpg"> 
                    </a> 
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">T-SHIRTS<br>840</h3> 
                      <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=22&pnm=T-Shirts&pr=840&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=23">
                    <img class="card-img-top" src= "images/clothes/d10.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">SHOES<br>1499</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=23&pnm=shoes&pr=1499&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=24">
                    <img class="card-img-top" src= "images/clothes/d11.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">GLOVES <br>1500</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=24&pnm=gloves&pr=1500&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=25">
                    <img class="card-img-top" src= "images/clothes/d12.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">HOODIE<br>984</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                
                
            </div> 
        </div> 
    </div> 
  
         <%@include file="footer.jsp" %>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
