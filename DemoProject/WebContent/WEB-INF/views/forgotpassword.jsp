<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>Election Commission of India - Forgot Password </title>
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
            <div class="center-block head"> <i class="fa fa-lock"></i> Forgot Password? </div>
          </div>
          <hr class="colorgraph">
          <div class="panel-body">
            <p class="text-center">You can reset your password here.</p>
            <sf:form id="forgotpass-form" role="form" autocomplete="off" class="form" method="post">
              <div class="form-group">
                <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                  <input name="email" placeholder="email address" id="email" class="form-control"/>
                </div>
              </div>
              <div class="form-group">
                <input name="recover-submit" class="btn btn-primary btn-block" value="Reset Password" type="submit">
              </div>
            </sf:form>
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