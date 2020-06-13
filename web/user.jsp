<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MANAGE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
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
      <%@include file="header.jsp"%>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">My account</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
             
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">Customer section</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column"><a href="customer-orders.html" class="nav-link active"><i class="fa fa-list"></i> My orders</a>
                     
                      <a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> My account</a>
                      <a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></ul>
                </div>
              </div>
              
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>My account</h1>
                <p class="lead">Change your personal details or your password here.</p>
                
                <h3>Change password</h3>
                <form>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_old">Old password</label>
                        <input id="password_old" type="password" class="form-control">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_1">New password</label>
                        <input id="password_1" type="password" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_2">Retype new password</label>
                        <input id="password_2" type="password" class="form-control">
                      </div>
                    </div>
                  </div>
                 
                  <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save new password</button>
                  </div>
                </form>
                <h3 class="mt-5">Personal details</h3>
              <form action="registration.jsp" method="post">
                  <div class="form-group">
                    <label for="name">Name</label>
                    <input name="name" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input name="email" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input name="password" type="password" class="form-control">
                  </div>
                    <div class="form-group">
                    <label for="email">Address</label>
                    <input name="address" type="text" class="form-control">
                  </div>
                    <div class="form-group">
                    <label for="email">Mobile</label>
                    <input name="number" type="text" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <%@include file="footer.jsp" %>%>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>