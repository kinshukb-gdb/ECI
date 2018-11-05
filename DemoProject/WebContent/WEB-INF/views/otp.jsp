<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>Election Commission of India - Verify Mobile Number </title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Mobile Specific Metas
        ================================================== -->
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Template CSS Files
        ================================================== -->
<!-- Font Awesome Css -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- template main css file -->
<link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="container before-login">
  <div class="grandParentContaninerforgotPass">
    <div class="parentContainer">
      <div class="login">
        <div class="panel panel-default">
          <div class="panel-heading">
            <div class="center-block head"> <i class="fa fa-check-circle-o"></i> Verification Code </div>
          </div>
          <hr class="colorgraph">
          <div class="panel-body">
					<form id="verifiyMobileNumber" role="form" autocomplete="off" class="form" method="post">	
						
					<div class="verification-code">
									<p class="text-center">Please enter the OTP code.  </p>
										<div class="form-group">
											<div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
												<input id="verificationCode" name="text" placeholder="Please enter the verification code" 
															 class="form-control"  type="text">
											</div>
										</div>
										<div class="form-group clear-both">
												<div class="row">
													<div class="col-md-6 col-xs-12 col-sm-5">
														<button type="submit" href="#" class="btn btn-primary btn-block"> 
																<i class="glyphicon glyphicon-log-in"></i> Verify 
														</button>
													</div>
													<div class="col-md-6 col-xs-12 col-sm-5">
														<button type="submit" href="#" class="btn btn-danger btn-block"> Resend </button>
													</div>									
												</div>
										</div>
						</div>	
						
						<!--Failed code block shows when verification failed-->
						<div class="verification-code hide">
									<p class="text-danger text-center">
											<i class="fa fa-exclamation-circle"></i> <strong>Failed</strong> 
									</p>
										<div class="form-group">
						</div>	
						
						<!--Alert to show error, warning, info and success-->
						<div class="alert alert-success fade in">
							<a href="#" class="close" data-dismiss="alert">&times;</a>
							<strong>Success!</strong> Your message has been sent successfully.
					</div>
						
						
						</form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
	<!-- Template Javascript Files
        ================================================== -->
<!-- modernizr js -->
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jquery -->
<script src="js/jquery.min.js"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>