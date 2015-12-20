<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java"%>
<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<title>Print Service</title>		
		<meta name="keywords" content="HTML5 Template" />
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="vendor/bootstrap/bootstrap.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css">
		<link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css" media="screen">
		<link rel="stylesheet" href="vendor/owlcarousel/owl.theme.default.min.css" media="screen">
		<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css" media="screen">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css">
		<link rel="stylesheet" href="css/theme-elements.css">
		<link rel="stylesheet" href="css/theme-blog.css">
		<link rel="stylesheet" href="css/theme-shop.css">
		<link rel="stylesheet" href="css/theme-animate.css">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/default.css">

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/custom.css">

		<!-- Head Libs -->
		<script src="vendor/modernizr/modernizr.js"></script>

		<!--[if IE]>
			<link rel="stylesheet" href="css/ie.css">
		<![endif]-->

		<!--[if lte IE 8]>
			<script src="vendor/respond/respond.js"></script>
			<script src="vendor/excanvas/excanvas.js"></script>
		<![endif]-->

	</head>
	<body>
		<div class="body">
			<header id="header">
				<!-- header banner -->
				<%@ include file="../../01_header_inc.jsp" %>
				<!-- header banner -->

				<!-- menu -->
				<%@ include file="../../02_nav_inc.html" %>
				<!-- menu -->
			</header>

			<div role="main" class="main">
				<section class="page-top">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<ul class="breadcrumb">
									<li><a href="gotoservice.do">Copy Center</a></li>
									<li class="active">Printing Service</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<h1>Printing Job List</h1>
							</div>
						</div>
					</div>
				</section>
			

				<div class="container">
					<div class="row">
						<div class="col-md-12">

							<div class="row featured-boxes login">
								
								<div class="col-md-12">
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Printing Job List<input type="button" value="Add a new printing job" class="btn btn-primary pull-right" onclick="gotoCreateJob();"></h4>
											<table class="table table-striped">
												<caption></caption>
												<tr>
													<th>JOB ID</th>
													<th>File Name</th>
													<th>COLOR</th>
													<th>NUM. OF PAGE/COPY</th>
													<th>NUM. OF COPY</th>
													<th>UNIT PRICE</th>
													<th>AMOUNT</th>
													<th></th>
												</tr>
												
												<tr>
													<td>JP15-08251323-1</td>
													<td>my-file.docx</td>
													<td>Black & White</td>
													<td>10</td>
													<td>1</td>
													<td>0.05</td>
													<td>0.5</td>													
													<td><input type="button" class="btn pull-righ" value="Cancel" onclick="cancelJob('JP15-08251323-1');"/></td>													
												</tr>
												
												<tr>
													<td>JP15-08251323-2</td>
													<td>my-file.docx</td>
													<td>Black & White</td>
													<td>100</td>
													<td>1</td>
													<td>0.05</td>
													<td>5.00</td>													
													<td><input type="button" class="btn pull-righ" value="Cancel" onclick="cancelJob('JP15-08251323-2');"/></td>													
												</tr>
												
												<tr>
													<td>JP15-08251323-3</td>
													<td>my-file.docx</td>
													<td>Color</td>
													<td>3</td>
													<td>1</td>
													<td>1.00</td>
													<td>3.0</td>													
													<td><input type="button" class="btn pull-righ" value="Cancel" onclick="cancelJob('JP15-08251323-3');"/></td>													
												</tr>
											</table>											
											
										</div>
									</div>
									
									<div>
										<a href="shop_cart.do" class="btn btn-primary btn-lg pull-right">Proceed to cart</a>
									</div>
							
								</div>
							</div>

						</div>
					</div>

				</div>

			</div>

			<!-- footer -->
			<%@ include file="../../04_footer_inc.html" %>
			<!-- footer -->
		</div>

		<!-- Vendor -->
		<script src="vendor/jquery/jquery.js"></script>
		<script src="vendor/jquery.appear/jquery.appear.js"></script>
		<script src="vendor/jquery.easing/jquery.easing.js"></script>
		<script src="vendor/jquery-cookie/jquery-cookie.js"></script>
		<script src="vendor/bootstrap/bootstrap.js"></script>
		<script src="vendor/common/common.js"></script>
		<script src="vendor/jquery.validation/jquery.validation.js"></script>
		<script src="vendor/jquery.stellar/jquery.stellar.js"></script>
		<script src="vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.js"></script>
		<script src="vendor/jquery.gmap/jquery.gmap.js"></script>
		<script src="vendor/isotope/jquery.isotope.js"></script>
		<script src="vendor/owlcarousel/owl.carousel.js"></script>
		<script src="vendor/jflickrfeed/jflickrfeed.js"></script>
		<script src="vendor/magnific-popup/jquery.magnific-popup.js"></script>
		<script src="vendor/vide/vide.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		
		<!-- Athensoft local js -->
		<script src="js/local/copycenter/print-create-job.js"></script>
		<script src="js/local/copycenter/print-job-list.js"></script>
		
		<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.
		<script type="text/javascript">
		
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-12345678-1']);
			_gaq.push(['_trackPageview']);
		
			(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		
		</script>
		 -->

	</body>
</html>
