<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs  ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" pageEncoding="UTF-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>Election Commission of India- Home </title>
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
          <li> <a href="dashboard" class="active">Home</a></li>
          <li><a href="showList">showList</a></li>
<!--           <li><a href="status.jsp">Status</a></li>
 -->          <!-- <li><a href="apply.jsp">Apply</a></li> -->
          <li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Profile <span class="caret"></span></a>
            <div class="dropdown-menu">
              <ul>
                <li><a href="settings.jsp">Settings</a></li>
                <li><a href="login">Logout</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- /main nav -->
  </div>
</header>
<!-- #EndLibraryItem --><!--
        ==================================================
        Slider Section Start
        ================================================== -->
<section id="hero-area" >
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <div class="block wow fadeInUp" data-wow-delay=".3s"> 
          
          <!-- Slider -->
          <section class="cd-intro">
            <h1 class="wow fadeInUp animated cd-headline slide" data-wow-delay=".4s" > <span>Voter's Services Online Portal</span><br>
            
            <h3> Hello  Admin  ${sessionScope.validUser.fname}</h3></br>
            <h3>${requestScope.msg}</h3>
            
              <span class="cd-words-wrapper"> <b class="is-visible">Election</b> <b>People's Rights</b> <b>Remarks</b> </span> </h1>
          </section>
          <!-- cd-intro --> 
          <!-- /.slider -->
          <h2 class="wow fadeInUp animated" data-wow-delay=".6s" > Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</h2>
        </div>
      </div>
    </div>
  </div>
</section>
<!--/#main-slider--> 
<!--
            ==================================================
            Slider Section Start
            ================================================== -->
<section id="about">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <div class="block wow fadeInLeft" data-wow-delay=".3s" data-wow-duration="500ms">
          <h2> Welcomg to Voter's Services Online Portal </h2>
          <p> India is a Socialist, Secular, Democratic Republic and the largest democracy in the World. The modern Indian nation state came into existence on 15th of August 1947. Since then free and fair elections have been held at regular intervals as per the principles enshrined in the Constitution, Electoral Laws and System.</p>
          <p>The Constitution of India has vested in the Election Commission of India the superintendence, direction and control of the entire process for conduct of elections to Parliament and Legislature of every State and to the offices of President and Vice-President of India.</p>
          <p>Election Commission of India is a permanent Constitutional Body. The Election Commission was established in accordance with the Constitution on 25th January 1950. The Commission celebrated its Golden Jubilee in 2001.</p>
        </div>
      </div>
      <div class="col-md-6 col-sm-6">
        <div class="block wow fadeInRight" data-wow-delay=".3s" data-wow-duration="500ms"> <img src="images/about/about.png" alt=""> </div>
      </div>
    </div>
  </div>
</section>

<!--
            ==================================================
            Portfolio Section Start
            ================================================== -->
<section id="feature">
  <div class="container">
    <div class="section-heading">
      <h1 class="title wow fadeInDown" data-wow-delay=".3s">Our Services</h1>
      <p class="wow fadeInDown" data-wow-delay=".5s"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed,<br>
        quasi dolores numquam dolor vero ex, tempora commodi repellendus quod laborum. </p>
    </div>
    <div class="row">
      <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="media wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
          <div class="media-left">
            <div class="icon"> <i class="ion-ios-flask-outline"></i> </div>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Registrations</h4>
            <p>Online for registration of new voter/due to shifting from AC</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="media wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="600ms">
          <div class="media-left">
            <div class="icon"> <i class="ion-ios-lightbulb-outline"></i> </div>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Overseas voter</h4>
            <p>Apply online for registration of overseas voter</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="media wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="900ms">
          <div class="media-left">
            <div class="icon"> <i class="ion-ios-lightbulb-outline"></i> </div>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Electroal Roll</h4>
            <p>Deletion or objection in electoral roll.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="media wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="1200ms">
          <div class="media-left">
            <div class="icon"> <i class="ion-ios-americanfootball-outline"></i> </div>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Track Application Status</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, sint.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="media wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="1500ms">
          <div class="media-left">
            <div class="icon"> <i class="ion-ios-keypad-outline"></i> </div>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Solid Support</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, sint.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="media wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="1800ms">
          <div class="media-left">
            <div class="icon"> <i class="ion-ios-barcode-outline"></i> </div>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Simple Installation</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, sint.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /#feature --> 

<!--
            ==================================================
            Call To Action Section Start
            ================================================== -->
<section id="call-to-action">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="block">
          <h2 class="title wow fadeInDown" data-wow-delay=".3s" data-wow-duration="500ms">
          SO WHAT YOU THINK ?
          </h1>
          <p class="wow fadeInDown" data-wow-delay=".5s" data-wow-duration="500ms">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis,<br>
            possimus commodi, fugiat magnam temporibus vero magni recusandae? Dolore, maxime praesentium.</p>
          <a href="contact.html" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".7s" data-wow-duration="500ms">Contact With Us</a> </div>
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
      <p class="copyright">Copyright: <span>2018</span> . Design and Developed by CDAC</p>
    </div>
    <div class="col-md-4">
      <p class="footer-links"> <a href="home.jsp">Home</a> | <a href="complaints.jsp">Complaints</a> | <a href="faq.jsp">FAQ'S</a> | <a href="contact.jsp">Contact</a></p>
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