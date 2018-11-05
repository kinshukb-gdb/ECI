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
				<title>Election Commission of India - Sign Up</title>
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

				<script>
					function validateLoginForm() {
						var email = $('#Email').val();
						if (email.length == 0) {
							$('#emailError').show();
							return false;
						}

					}
				</script>
			</head>

			<body>
				<div class="container before-login">
					<div class="grandParentContaniner">
						<div class="parentContainer">
							<div class="login">
								<div class="panel panel-default">
									<div class="panel-heading">
										<div class="center-block head">
											<i class="fa fa-sign-in"></i> Login
										</div>
									</div>
									<hr class="colorgraph">
									<div class="panel-body">
										<sf:form role="form" method="POST" id="loginForm" modelAttribute="user" onsubmit="return validateLoginForm()">
											<fieldset>
												<div class="row">
													<div class="col-sm-12 col-md-10  col-md-offset-1 ">
														<div class="form-group">
															<div class="input-group">
																<span class="input-group-addon"> <i
														class="glyphicon glyphicon-user"></i>
													</span>
																<sf:input class="form-control" placeholder="Username" id="Email" path="email" />
																<!-- <span  id="emailError" style="color: red;">please fill your email							     
														</span> -->
															</div>
														</div>
														<div class="form-group">
															<div class="input-group">
																<span class="input-group-addon"> <i
														class="glyphicon glyphicon-lock"></i>
													</span>
																<sf:input class="form-control" placeholder="Password" id="Password" type="password" path="password" />
															</div>
														</div>
														<div class="form-group">
															<div class="checkbox  remember pull-left">
																<label> <input type="checkbox"> Remember me
													</label>
															</div>
															<a href="forgot" class="btn btn-link pull-right forgot-link">Forgot
													Password?</a>
														</div>
														<div class="form-group clear-both">
															<!-- Button -->
															<div class="row">
																<div class="col-md-6 col-xs-12 col-sm-6">
																	<input type="submit" value="submit" class="btn btn-primary btn-block" />

																</div>
																<div class="col-md-6 col-xs-12 col-sm-6">
																	<button type="submit" class="btn  btn-block">
															Cancel</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</fieldset>
										</sf:form>
									</div>
									<div class="panel-footer ">
										Don't have an account! <a href="register"> Sign Up Here </a>
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