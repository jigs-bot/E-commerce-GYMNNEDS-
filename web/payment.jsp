

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Payment</title>
        <style>
    body {
  background: #f5f5f5;
}

.rounded-lg {
  border-radius: 1rem;
}

.nav-pills .nav-link {
  color: #555;
}

.nav-pills .nav-link.active {
  color: #fff;
}

</style>
<script>
    $(function() {
  $('[data-toggle="tooltip"]').tooltip()
}
        )

</script>

    </head>
    <%@include file="header.jsp" %>
    <body>
      <% String amount= request.getParameter("amnt"); %>
        
        <div class="container py-5">

  <div class="row">
    <div class="col-lg-7 mx-auto">
      <div class="bg-white rounded-lg shadow-sm p-5">
        
        <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-card" class="nav-link active rounded-pill">
                                <i class="fa fa-credit-card"></i>
                                Credit Card
                            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-paypal" class="nav-link rounded-pill">
                                <i class="fa fa-paypal"></i>
                                Paypal
                            </a>
          </li>
         
        </ul>

        <div class="tab-content">

          
          <div id="nav-tab-card" class="tab-pane fade show active">
            
            <form role="form" action="receipt.jsp" method="post">
              <div class="form-group">
                <label for="username">Full name (on the card)</label>
                <input type="text" name="username" placeholder="Jason Doe" required class="form-control">
              </div>
                 <div class="form-group">
                <label for="price">Amount</label>
                <input type="text" name="price" value="<%=amount%>" required class="form-control" readonly >
              </div>
              <div class="form-group">
                <label for="cardNumber">Card number</label>
                <div class="input-group">
                  <input type="text" name="cardnumber" placeholder="Your card number" class="form-control" required>
                  <div class="input-group-append">
                    <span class="input-group-text text-muted">
                                                <i class="fa fa-cc-visa mx-1"></i>
                                                <i class="fa fa-cc-amex mx-1"></i>
                                                <i class="fa fa-cc-mastercard mx-1"></i>
                                            </span>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-8">
                  <div class="form-group">
                    <label><span class="hidden-xs">Expiration</span></label>
                    <div class="input-group">
                      <input type="text" placeholder="MM" name="month" class="form-control" required>
                      <input type="text" placeholder="YY" name="year" class="form-control" required>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="form-group mb-4">
                    <label data-toggle="tooltip" title="Three-digits code on the back of your card">CVV
                                                <i class="fa fa-question-circle"></i>
                                            </label>
                    <input type="password" name="cvv" required class="form-control">
                  </div>
                </div>



              </div>
              <button type="submit" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm"> Confirm  </button>
            </form>
          </div>
          
          <div id="nav-tab-paypal" class="tab-pane fade">
            <p>Paypal is easiest way to pay online</p>
            <p>
              <button type="button" class="btn btn-primary rounded-pill"><i class="fa fa-paypal mr-2"></i> Log into my Paypal</button>
            </p>
          </div>
       
        </div>
      
      </div>
    </div>
  </div>
</div>
        <%@include file="footer.jsp"%>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
