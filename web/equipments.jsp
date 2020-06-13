 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Equipmets</title>
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
  
            <!--bootstrap card with 3 horizontal images-->
            <div class="row"> 
                
                <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Equipments</li>
                </ol>
              </nav>
            </div>
                
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=1">
                    <img class="card-img-top" src="images/equipment/d1.jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">DUMBELS<br>800</h3> 
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=1&pnm=dumbell&pr=800&qty=1'"></i> ADD TO CART 
                       </button> <br><br>
                       <button type="button" class="btn btn-info custom " onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                 <a href="description.jsp?pid=2">  <img class="card-img-top" src= 
"images/equipment/d2.jpg"> </a>
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">BENCH PRESS<br>1800</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=2&pnm=bench press&pr=1800&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=3">
                    <img class="card-img-top" src="images/equipment/d3.png"> 
                    </a>
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">DUMBELLS <br>1200</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=3&pnm=dumbell&pr=1200&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                
                  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=4">
                    <img class="card-img-top" src="images/equipment/d4.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-titlet text-primary">KETTLEBELL<br>600</h3>
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=4&pnm=kettlebell&pr=600&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=5">
                    <img class="card-img-top" src="images/equipment/d5.jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">BAND<br>600</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=5&pnm=band&pr=600&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOWT</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=6">
                    <img class="card-img-top" src="images/equipment/d6.jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">ROPE<br>400</h3> 
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=6&pnm=rope&pr=400&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=7">
                    <img class="card-img-top" src="images/equipment/d7.jpg"> 
                    </a> 
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">WALK. MACHINE<br>2000</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=7&pnm=walk machine&pr=2000&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=8">
                    <img class="card-img-top" src="images/equipment/d8.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">LEG PRESS<br>2500</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=8&pnm=leg press&pr=2500&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                    
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=9">
                    <img class="card-img-top" src="images/equipment/d9.jpg"> 
                    </a> 
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">WEIGHT RACK<br>2000</h3> 
                      <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=9&pnm=weight rack&pr=2000&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=10">
                    <img class="card-img-top" src="images/equipment/d10.jpg"> 
                    </a>
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">CURL MACHINE<br>1600</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=10&pnm=curl machine&pr=1600&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=11">
                    <img class="card-img-top" src="images/equipment/d11.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">TRADEMILL <br>2800</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=11&pnm=trademill&pr=2800&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=12">
                    <img class="card-img-top" src="images/equipment/d12.jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">CALF MACHINE <br>1100</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=12&pnm=calf machine&pr=1100&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                   <a href="description.jsp?pid=13">
                    <img class="card-img-top" src="images/equipment/d16.jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">CYCLE <br>1500</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=13&pnm=cycle&pr=1500&qty=1'"></i>ADD TO CART</button> <br><br>
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
