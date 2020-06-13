<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>REGISTER</title>
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
  <%@include file="header.jsp"%>
  <body>
 <br>
    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">New account / Sign in</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-6">
              <div class="box">
                <h1>New account</h1>
                <p class="lead">Not our registered customer yet?</p>
                <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>
                <hr>
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
            <div class="col-lg-6">
              <div class="box">
                <h1>Login</h1>
                <p class="lead">Already our customer?</p>
                
                <hr>
                <form action="login.jsp" method="post">
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input name="username" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input name="password" type="password" class="form-control">
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                  </div>
                </form>
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