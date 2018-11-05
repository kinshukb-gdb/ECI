

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Election Commission of India- Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Voter's Services Admin</a>
            </div>
            <!-- /.navbar-header -->

            

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                   <ul class="nav" id="side-menu">
											<li class="sidebar-search">
												<div class="input-group custom-search-form">
													<input type="text" class="form-control" placeholder="Search...">
													<span class="input-group-btn">
													<button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
													</span> </div>
												<!-- /input-group --> 
											</li>
											<li> <a href="dashboard"><i class="fa fa-dashboard fa-fw"></i>Home</a> </li>
											<li> <a href="showList"><i class="fa fa-list fa-fw"></i>&nbsp; Users List</a> </li>
											<!-- /.nav-second-level --> 
										</ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">User List</h1>
												<div class="panel panel-default">
													<div class="panel-heading">
															DataTables Advanced Tables
													</div>
													<!-- /.panel-heading -->
													<div class="panel-body">
												 <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
																<thead>
																		<tr>
																				<th>User Image</th>
																				<th>User Name & uniqueId</th>
																				<th>Issue Status</th>
																				<th>Remove</th>
																		</tr>
																</thead>
																<tbody>
																    <c:forEach var="list" items="${requestScope.user_list}" varStatus="status" >
																		<tr>
																		
																				<td><img src="${requestScope.urllist[status.index]}" alt="User Name" title="User Name" class="img-responsive sm-user-icons" /></td>
																				<td>"${list.user.fname}"</br>"${list.uniqueId}"</td>
																				<c:choose>
																				    <c:when test="${list.vid_status}">
																				         <td class="text-warning">voter id exists</td>
																				     </c:when>
																				     <c:otherwise>
																				         <td class="text-warning">"${list.app_status}"</br><a href="vid?id=${list.app_id}">generate card</a></td>	
																				    </c:otherwise>
																				 </c:choose>																
																				<td class="remove"><a href="delete?id=${list.user.userId}"><i class="fa fa-remove"></i></a></td>
																		
																		</tr>
																   </c:forEach>		
																</tbody>
														</table>
													</div>
												</div>
										 </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

		<!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>
	
    <!-- Custom Theme JavaScript -->
    <script src="dist/js/admin.js"></script>
	
		<!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
	
</body>

</html>
