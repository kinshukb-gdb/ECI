<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs  ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>Voter's Services Online Portal - Voter ID Card</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Mobile Specific Metas
        ================================================== -->
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Ionicons Fonts Css -->
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- animate css -->
<link rel="stylesheet" href="css/animate.css">
<!-- template main css file -->
<link rel="stylesheet" href="css/main.css">
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css">

<!-- Template Javascript Files
        ================================================== -->
<!-- modernizr js -->
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
<!-- jquery -->
<script src="js/jquery.min.js"></script>
<!-- bootstrap js -->

<script src="js/bootstrap.min.js"></script>
<!-- wow js -->
<script src="js/wow.min.js"></script>
<!-- template main js -->
<script src="js/main.js"></script>
</head>
<body>
<!-- #BeginLibraryItem "/templates/header.lbi" -->
<!--
        ==================================================
        Header Section Start
        ================================================== -->
<header id="top-bar" class="navbar-fixed-top animated-header">
  <div class="container">
    <div class="navbar-header">
      <!-- responsive nav button -->
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
      <!-- /responsive nav button -->
      <!-- logo -->
      <div class="navbar-brand"> <a href="home.html" > <img src="images/logo.jpg" alt="" class="img-responsive"></a></div>
      <!-- /logo -->
    </div>
    <!-- main menu -->
    <nav class="collapse navbar-collapse navbar-right" role="navigation">
      <div class="main-menu">
        <ul class="nav navbar-nav navbar-right">
          <li> <a href="home.html" class="active">Home</a></li>
          <li><a href="about">About</a></li>
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="${url}" class="img-responsive profile-img" title="Name of User" alt="Name of User"/> My Profile <span class="caret"></span> </a>
            <div class="dropdown-menu">
              <ul>
                <li><a href="logout">Logout</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- /main nav -->
  </div>
</header>
<!-- #EndLibraryItem -->
	<!-- 
        ================================================== 
            Contact Section Start
        ================================================== -->
<section id="contact-section">
  <div class="container">
    <div class="row">
      <div class="center-block pull-none text-center">
        <div class="block">
          	
					<!--ID card-->
						<h2>Voter ID Card</h2>
						<div class="v-card">
								<div class="id-card-hook"></div>
								<div class="id-card-holder">
									<div class="id-card">

										<div class="panel-default">
											<div class="panel-heading">
														<div class="voterid-logo"> 
															<img src="images/bharat-sarkar.png" class="img-responsive"> 
													</div>
													<div class='voder-card-head"'>Election Commission of India</div>
											</div>

											<div class="panel-body">
												<div class="left-side col-sm-7">
														<form class="form-horizontal">
																<div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">Voter Id :</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${requestScope.vid}</p>
																	</div>
																</div>
																	<div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">Elector's Name:</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${sessionScope.validUser.fname}</p>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">Father's Name:</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${sessionScope.validUser.appl.fatherName}</p>
																	</div>
																</div>
																<div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">Sex:</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${sessionScope.validUser.gender}</p>
																	</div>
																</div>
																
															<div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">Date of Birth:</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${sessionScope.validUser.dob}</p>
																	</div>
																</div>
																
																<%-- <div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">Age:</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${requestScope.age}</p>
																	</div>
																</div> --%>
																
															<div class="form-group">
																	<label for="inputEmail3" class="col-sm-6 control-label">City:</label>
																	<div class="col-sm-6">
																		<p class="labeltext">${sessionScope.validUser.city}</p>
																	</div>
																</div>
													</form>

												</div>


												<div class="right-side col-sm-5">
													<div class="photo"> 
															<img src="${url}" class="img-responsive">  
															<span class="stamp"></span>
													</div>
													<h2>${sessionScope.validUser.fname} ${sessionScope.validUser.lname}</h2>
													<div class="dob"></div>
												</div>
											<hr>
											</div>
											<div class="panel-footer">Voter ID Card</div>
										</div>
									</div>
								</div>
						</div>
						<!--//ID card-->
						
						
          </div>
        </div>
      </div>
    </div>
</section>

<!-- #BeginLibraryItem "/templates/footer.lbi" -->
<!--
            ==================================================
            Footer Section Start
            ================================================== -->
<footer id="footer">
  <div class="container">
    <div class="col-md-8">
      <p class="copyright">Copyright: <span>2018</span>Design and Developed by ""SUNBEAM KARAD"</p>
    </div>
    <div class="col-md-4">
      <!-- Social Media -->
      <!--<ul class="social">
        <li> <a href="http://wwww.fb.com/themefisher" class="Facebook"> <i class="ion-social-facebook"></i> </a> </li>
        <li> <a href="http://wwww.twitter.com/themefisher" class="Twitter"> <i class="ion-social-twitter"></i> </a> </li>
        <li> <a href="#" class="Linkedin"> <i class="ion-social-linkedin"></i> </a> </li>
        <li> <a href="http://wwww.fb.com/themefisher" class="Google Plus"> <i class="ion-social-googleplus"></i> </a> </li>
      </ul>-->
    </div>
  </div>
</footer>
<!-- /#footer -->
<!-- #EndLibraryItem -->
</body>
</html>
