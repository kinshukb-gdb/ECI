<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="images/favicon.png">
<title>Election Commission of India- Sign Up</title>
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
		<div class="grandParentContaninerSignup centered-form">
			<div class="parentContainer">
				<div class="signup">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="center-block head">
								<i class="fa fa-user-circle-o"></i> Voter Id Application
							</div>
						</div>
						<hr class="colorgraph">
						<div class="panel-body">


							<sf:form role="form" method="post" modelAttribute="application"
								id="applicationForm" enctype="multipart/form-data">
								<div class="form-horizontal">
									<div class="row">
										<div class="col-md-6 col-sm-6 col-xs-12">

											<div class="form-group">
												<label class="col-sm-4 control-label">Father Name:<span
													class="astric">*</span></label>

												<div class="col-sm-5">
													<sf:input path="fatherName" class="form-control" id="fname"
														placeholder="Enter Father's Name" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label">Mother Name:<span
													class="astric">*</span></label>
												<div class="col-sm-5">
													<sf:input path="motherName" class="form-control" id="mname"
														placeholder="Enter Mother's Name" />
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-5">
													<sf:textarea class="form-control" path="address"
														placeholder="Enter Address" id="address" />
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">

									<div class="form-group">
										<label class="col-sm-4 control-label">Unique Id:<span
											class="astric">*</span></label>
										<div class="col-sm-5">
											<sf:input path="uniqueId" class="form-control" id="uid"
												placeholder="Enter Unique ID" />
										</div>
									</div>

								<!-- 	<div class="form-group">
										<label class="col-sm-4 control-label">User Image:<span
											class="astric">*</span></label>
										<div class="col-sm-5">
											<input type="file" class="form-control" id="userimage"
												placeholder="upload image" name="imageUpload" multiple="multiple" />
										</div>
									</div> -->

									 
	                  <div  class="form-group">
	                      <label  class="col-sm-4 control-label">Document Image:<span class="astric">*</span></label>
	                        <input type="file" name="imageUpload" id="imageUpload" placeholder="upload doc"  />
	                    </div>

								</div>
								<div class="form-group clear-both">
									<div class="col-md-6 col-xs-12 col-sm-5">
										<button type="submit" href="#"
											class="btn btn-primary btn-block">
											<i class="glyphicon glyphicon-log-in"></i> Submit
										</button>
									</div>
									<div class="col-md-6 col-xs-12 col-sm-5">
										<button type="submit" class="btn  btn-block">Reset</button>
									</div>
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
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
/* 	$.validator.setDefaults( {
			submitHandler: function () {
				//When all fields Valid here...
				alert( "submitted!" );
			}
		} );
	 */
	$(document).ready( function () {
		$( "#applicationForm" ).validate( {
					rules: {
						fatherName: "required",
						motherName: "required",
						address:"required",
						uniqueId:"required",
					},
					errorElement: "em",
					errorPlacement: function ( error, element ) {
						// Add the `help-block` class to the error element
						error.addClass( "help-block" );

						// Add `has-feedback` class to the parent div.form-group
						// in order to add icons to inputs
						element.parents( ".form-group" ).addClass( "has-feedback" );

						if ( element.prop( "type" ) === "checkbox" ) {
							error.insertAfter( element.parent( "label" ) );
						} else {
							error.insertAfter( element );
						}

						// Add the span element, if doesn't exists, and apply the icon classes to it.
						if ( !element.next( "span" )[ 0 ] ) {
							$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
						}
					},
					success: function ( label, element ) {
						// Add the span element, if doesn't exists, and apply the icon classes to it.
						if ( !$( element ).next( "span" )[ 0 ] ) {
							$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
						}
					},
					highlight: function ( element, errorClass, validClass ) {
						$( element ).parents( ".form-group" ).addClass( "has-error" ).removeClass( "has-success" );
						$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
					},
					unhighlight: function ( element, errorClass, validClass ) {
						$( element ).parents( ".form-group" ).addClass( "has-success" ).removeClass( "has-error" );
						$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
					}
				});
});		
</script>
</body>
</html>