 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Suppliments</title>
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
                  <li aria-current="page" class="breadcrumb-item active">Suppliments</li>
                </ol>
              </nav>
            </div>
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=26">
                    <img class="card-img-top" src= "images/suppliments/images(24).jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-titl text-primary">GAINER<br>1500</h3>
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=26&pnm=Gainer&pr=1500&qty=1'"></i> ADD TO CART 
                       </button> <br><br>
                       <button type="button" class="btn btn-info custom " onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                 <a href="description.jsp?pid=27">
                    <img class="card-img-top" src= "images/suppliments/images(25).jpg"> 
                    </a>
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">WEIGHT GAINER <br>1800</h3>
                        <div class="card-footer ">
                            <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=27&pnm=Gainer&pr=1800&qty=1'"></i>ADD TO CART</button> <br><br>
                            <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div>
                        </div> 
                </div> 
                
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=28">
                    <img class="card-img-top" src= "images/suppliments/images(26).jpg"> 
                    </a>
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">MULTIVITAMINS <br>849</h3>
                         <div class="ribbon sale">
                      <div class="theribbon">SALE</div>
                      <div class="ribbon-background"></div>
                    </div>
                        <div class="card-footer">
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                        </div>
                        </div> 
                </div> 
                
                  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=29">
                    <img class="card-img-top" src= "images/suppliments/images(27).jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">WHEY.<br>2500</h3>
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=30">
                    <img class="card-img-top" src= "images/suppliments/images(28).jpg"> 
                    </a> 
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">CORTISOL<br>1800</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOWT</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=31">
                    <img class="card-img-top" src= "images/suppliments/images(29).jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">PEPTIDES<br>1499</h3> 
                       <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=32">
                    <img class="card-img-top" src= "images/suppliments/images(30).jpg"> 
                    </a>
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">ANABOLIC<br>2900</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=33">
                    <img class="card-img-top" src= "images/suppliments/images(32).jpg"> 
                    </a>
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">WHEY-PROTEIN<br>3000</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=35">
                    <img class="card-img-top" src= "images/suppliments/images(37).jpg"> 
                    </a> 
  
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">CREATINE<br>999</h3> 
                      <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
  
                <div class="card col-md-3"> 
                    <a href="description.jsp?pid=36">
                    <img class="card-img-top" src= "images/suppliments/images(39).jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">FATBURNER<br>1500</h3>
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button> 
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=37">
                    <img class="card-img-top" src= "images/suppliments/images(42).jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">CREATINE <br>1200</h3> 
                        <button type="button" class="btn btn-info custom"><i class="fa fa-cart-plus" aria-hidden="true" onclick="window.location.href='cart.jsp?pid=25&pnm=hoodie&pr=984&qty=1'"></i>ADD TO CART</button> <br><br>
                        <button type="button" class="btn btn-info custom" onclick="window.location.href='payment.jsp'">BUY NOW</button>
                    </div> 
                </div> 
                 <div class="card col-md-3"> 
                    <a href="description.jsp?pid=38">
                    <img class="card-img-top" src= "images/suppliments/images(49).jpg"> 
                    </a> 
                      
                    <div class="card-body"> 
                        <h3 class="card-title text-primary">AMMINO ACID<br>1600</h3> 
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
