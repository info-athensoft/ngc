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
				<%@ include file="../../02_nav_inc.jsp" %>
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
								<h1>Create a print job</h1>
							</div>
						</div>
					</div>
				</section>
			

				<div class="container">
					<div class="row">
						<div class="col-md-12">

							<div class="row featured-boxes login">
								<div class="col-md-6">
									
									<!-- step 1. upload file -->
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Step 1. Upload your file</h4>
											
											<div class="row">
												<div class="form-group">
												<form action="#">
													<table>
														<tr>
															<td width="420"><input type="file" class="form-control" name="fileToUpload" value=""/></td>
															<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" name="doUpload" value="Upload"/></td>
														</tr>
													</table>
													<p></p>
													<table>
														<tr>
															<td width="120">File Name:</td>
															<td width="420"><input type="text" value="No file uploaded." class="form-control" name="fileName" disabled="disabled"></td>
														</tr>
													</table>
												</form>
												</div>
											</div>
										</div>
									</div>
								
									<!-- step 2. printing job spec -->
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Step 2. How would you like to print?</h4>
											
											<!-- form -->
											<form action="print_upload_file.do" id="" method="post">
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<table>
																<tr>
																	<td width="180">Document Type</td>
																	<td>
																		<input type="radio" class="" name="docType" value="" >General Document &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<input type="radio" class="" name="docType" value="">Picture/Poster &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	</td>
																</tr>
																<tr><td><br/></td></tr>
																
																<tr>
																	<td width="180">Color</td>
																	<td>
																		<input type="radio" class="" name="printColor" value="" >Black & White &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<input type="radio" class="" name="printColor" value="">Color &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	</td>
																</tr>
																<tr><td><br/></td></tr>
																
																<tr>
																	<td>Print Method</td>
																	<td>
																		<input type="radio" class="" name="printMethod" value="" >Single-side &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<input type="radio" class="" name="printMethod" value="">Double-side &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	</td>
																</tr>
																<tr><td><br/></td></tr>
																
																<tr>
																	<td>Sheet Orientation</td>
																	<td>
																		<input type="radio" class="" name="printOrientation" value="" >Portrait &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<input type="radio" class="" name="printOrientation" value="">Landscape &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	</td>
																</tr>
																<tr><td><br/></td></tr>
																
																<tr>
																	<td>Paper Size</td>
																	<td>
																		<select class="form-control" id="paper_size">
																			<option value="letter">Letter -- 8.5"x11" / 215.9mm x 279.4mm</option>
																			<option value="A4">A4</option>
																			<option value="A5">A5</option>
																			<option value="B5">B5</option>
																		</select>
																	</td>
																</tr>																
																<tr><td><br/></td></tr>
																
																<tr>
																	<td>Paper Volume</td>
																	<td>
																		<select class="form-control" id="paper_size">
																			<option value="letter">24lb/70g</option>
																			<option value="A4">26lb/80g</option>
																		</select>
																	</td>
																</tr>																
																<tr><td><br/></td></tr>
																
																<tr>
																	<td>Total Number of Page</td>
																	<td>
																		<input type="text" value="" class="form-control" name="numOfPage">
																	</td>
																</tr>
																<tr><td><br/></td></tr>
																
																<tr>
																	<td>Number of copies</td>
																	<td>
																		<input type="text" value="1" class="form-control" name="numOfCopy">
																	</td>
																</tr>
																<tr><td><br/></td></tr>
																
																
															</table>
															
															
														</div>
														
													</div>
												</div>
											</form>
											
										</div>
									</div>
									
									
									<!-- step 3. binding service -->
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Step 3. Need binding service?</h4>
											
											<div class="row">
												<div class="form-group">
													<div class="col-md-12">
													<table>
														<tr>
															<td width="180">Need binding service?</td>
															<td>
																<input type="radio" class="" name="binding" value="">Yes, I need. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<input type="radio" class="" name="binding" value="">No, I don't need. 
															</td>
														</tr>
														<tr><td><br/></td></tr>
													</table>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<!-- step 4. create a print job -->
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Step 4. Estimate your price</h4>
											
											<div class="row">
												<div class="form-group">
													<div class="col-md-12">
													<table>
														<tr>
															<td width="180">Printing Price </td>
															<td>
																<input type="text" value="CAD $" class="form-control" name="amountBeforeTax_print" id="amountBeforeTax_print" disabled="disabled"/>
															</td>
														</tr>
														<tr><td><br/></td></tr>
														
														<tr>
															<td>Binding Fee </td>
															<td>
																<input type="text" value="CAD $" class="form-control" name="amountBeforeTax_binding" id="amountBeforeTax_binding" disabled="disabled"/>
															</td>
														</tr>
														<tr><td><br/></td></tr>
														
														<tr>
															<td>Leave your notes </td>
															<td>
																<textarea class="form-control" name="job_comment" id="job_comment" cols="30" rows="5"></textarea>
															</td>
														</tr>
														<tr><td><br/></td></tr>
													</table>
													
													<input type="button" value="Calculate Price before Tax" class="btn" onclick="calculatePrice();">
													<a href="#paper_size" class="btn btn-primary pull-right" onclick="createPrintJob();">Add to Job List</a>
													
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- end of step 4 -->
									
									
									
									
								</div>
								<div class="col-md-6">					
								
									<!-- price list bw -->
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Price List - Black &amp; White</h4>
											<table class="table table-striped">
												<caption></caption>
												<tr>
													<th>DOC TYPE</th>
													<th>COLOR</th>
													<th>NUM. OF PAGE</th>
													<th>PRICE</th>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Black & White</td>
													<td>1-200</td>
													<td>0.05</td>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Black & White</td>
													<td>201-500</td>
													<td>0.04</td>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Color</td>
													<td>1-200</td>
													<td>0.10</td>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Color</td>
													<td>201-500</td>
													<td>0.09</td>
												</tr>
												
												<tr>
													<td>Picture</td>
													<td>Color</td>
													<td>1-100</td>
													<td>1.00</td>
												</tr>
												<tr>
													<td>Picture</td>
													<td>Color</td>
													<td>101-200</td>
													<td>0.95</td>
												</tr>
											
											</table>											
										</div>
									</div>
									<!-- end of price list bw -->
									
									<!-- price list color -->
									<div class="featured-box featured-box-secundary default">
										<div class="box-content">
											<h4>Price List - Color</h4>
											<table class="table table-striped">
												<caption></caption>
												<tr>
													<th>DOC TYPE</th>
													<th>COLOR</th>
													<th>NUM. OF PAGE</th>
													<th>PRICE</th>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Black & White</td>
													<td>1-200</td>
													<td>0.05</td>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Black & White</td>
													<td>201-500</td>
													<td>0.04</td>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Color</td>
													<td>1-200</td>
													<td>0.10</td>
												</tr>
												
												<tr>
													<td>Document</td>
													<td>Color</td>
													<td>201-500</td>
													<td>0.09</td>
												</tr>
												
												<tr>
													<td>Picture</td>
													<td>Color</td>
													<td>1-100</td>
													<td>1.00</td>
												</tr>
												<tr>
													<td>Picture</td>
													<td>Color</td>
													<td>101-200</td>
													<td>0.95</td>
												</tr>
											
											</table>											
										</div>
									</div>
									<!-- end of price list color -->
									
								</div>
							</div>

						</div>
						
						<!-- job list -->
						<!-- 
						<div class="col-md-12">
									<div class="featured-box featured-box-secundary default">
										<div class="box-content" id="joblist_cart">
											<h4>Printing Job List</h4>
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
													<th colspan="2">OPERATION</th>
													
												</tr>
												
												<tr>
													<td>JP15-08251323-1</td>
													<td>my-file.docx</td>
													<td>Black & White</td>
													<td>10</td>
													<td>1</td>
													<td>0.05</td>
													<td>0.5</td>													
													<td><input type="button" class="btn  pull-righ" value="Edit" onclick="editPrintJob('JP15-08251323-1');"></td>													
													<td><input type="button" class="btn  pull-righ" value="Cancel" onclick="cancelPrintJob('JP15-08251323-1');"></td>													
												</tr>
												
												<tr>
													<td>JP15-08251323-2</td>
													<td>my-file.docx</td>
													<td>Black &amp; White</td>
													<td>100</td>
													<td>1</td>
													<td>0.05</td>
													<td>5.00</td>
													<td><input type="button" class="btn  pull-righ" value="Edit" onclick="editPrintJob('JP15-08251323-2');"></td>													
													<td><input type="button" class="btn  pull-righ" value="Cancel" onclick="cancelPrintJob('JP15-08251323-2');"></td>													
												</tr>
												
												<tr>
													<td>JP15-08251323-3</td>
													<td>my-file.docx</td>
													<td>Color</td>
													<td>3</td>
													<td>1</td>
													<td>1.00</td>
													<td>3.0</td>
													<td><input type="button" class="btn  pull-righ" value="Edit" onclick="editPrintJob('JP15-08251323-3');"></td>													
													<td><input type="button" class="btn  pull-righ" value="Cancel" onclick="cancelPrintJob('JP15-08251323-3');"></td>													
												</tr>
											</table>											
										</div>
									</div>
									
									<div>
										<a href="shop_cart.do" class="btn btn-primary  pull-right">Proceed to cart</a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="#" class="btn btn-primary  pull-right">Create another print job</a>
									</div>
						</div>
						 -->
						<!-- end of job list -->
						
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
