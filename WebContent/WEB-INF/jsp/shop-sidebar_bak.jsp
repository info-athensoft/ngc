<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java"%>
<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<title>NGC</title>		
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

			<div role="main" class="main shop">

				<div class="container">

					<hr class="tall">

					<div class="row">
						<div class="col-md-9">
							<div>
							<ul class="breadcrumb">
								<li>Products</li>
								<li class="active"><a href="#">Laptops</a></li>
							</ul>
							</div>
							
							<div class="row">
								<div class="col-md-6">									
									<h1 class="shorter"><strong>Laptops</strong></h1>
									<p>Showing 1 to 9 of 25 results.</p>
								</div>
							</div>

							<div class="row">
								<ul id="data" class="products product-thumb-info-list" data-plugin-masonry data-plugin-options='{"layoutMode": "fitRows"}'>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<a href="viewitemdetail.do">
											<span class="onsale">Sale!</span>
										</a>
										<span class="product-thumb-info">
											<!--
											<a href="shop-cart.html" class="add-to-cart-product">
												<span><i class="fa fa-shopping-cart"></i> Add to Cart</span>
											</a>
											-->
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-1.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Photo Camera</h4>
													<span class="price">
														<del><span class="amount">$325</span></del>
														<ins><span class="amount">$299</span></ins>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-2.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Golf Bag</h4>
													<span class="price">
														<span class="amount">$72</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-3.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Workout</h4>
													<span class="price">
														<span class="amount">$60</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-4.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Luxury bag</h4>
													<span class="price">
														<span class="amount">$199</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-5.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Ladies' handbag</h4>
													<span class="price">
														<span class="amount">$189</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<a href="viewitemdetail.do">
											<span class="onsale">Sale!</span>
										</a>
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-6.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Baseball Cap</h4>
													<span class="price">
														<del><span class="amount">$25</span></del>
														<ins><span class="amount">$22</span></ins>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-7.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Blue Ladies Handbag</h4>
													<span class="price">
														<span class="amount">$290</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-8.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Military Rucksack</h4>
													<span class="price">
														<span class="amount">$49</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-md-4 col-sm-6 col-xs-12 product">
										<a href="viewitemdetail.do">
											<span class="onsale">Sale!</span>
										</a>
										<span class="product-thumb-info">
											
											<a href="viewitemdetail.do">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-9.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="viewitemdetail.do">
													<h4>Baseball</h4>
													<span class="price">
														<del><span class="amount">$15</span></del>
														<ins><span class="amount">$12</span></ins>
													</span>
												</a>
											</span>
										</span>
									</li>
								</ul>
							</div>				

							<div class="row">
								<div class="col-md-12">
									<ul class="pagination pull-right">
										<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						
						
						<!-- side bar -->
						<div class="col-md-3">
							<aside class="sidebar">

								<form>
									<div class="input-group input-group-lg">
										<input class="form-control" placeholder="Search..." name="s" id="s" type="text">
										<span class="input-group-btn">
											<button type="submit" class="btn btn-primary btn-lg"><i class="fa fa-search"></i></button>
										</span>
									</div>
								</form>

								<hr />

								<h5>Tags</h5>

								<a href="#"><span class="label label-dark">Nike</span></a>
								<a href="#"><span class="label label-dark">Travel</span></a>
								<a href="#"><span class="label label-dark">Sport</span></a>
								<a href="#"><span class="label label-dark">TV</span></a>
								<a href="#"><span class="label label-dark">Books</span></a>

								<hr />

								<h5>Top Rated Products</h5>
								<ul class="simple-post-list">
									<li>
										<div class="post-image">
											<div class="img-thumbnail">
												<a href="viewitemdetail.do">
													<img alt="" width="60" height="60" class="img-responsive" src="photos/1.jpg">
												</a>
											</div>
										</div>
										<div class="post-info">
											<a href="viewitemdetail.do">Photo Camera</a>
											<div class="post-meta">
												$299
											</div>
										</div>
									</li>
									<li>
										<div class="post-image">
											<div class="img-thumbnail">
												<a href="viewitemdetail.do">
													<img alt="" width="60" height="60" class="img-responsive" src="photos/2.jpg">
												</a>
											</div>
										</div>
										<div class="post-info">
											<a href="viewitemdetail.do">Golf Bag</a>
											<div class="post-meta">
												$72
											</div>
										</div>
									</li>
									<li>
										<div class="post-image">
											<div class="img-thumbnail">
												<a href="viewitemdetail.do">
													<img alt="" width="60" height="60" class="img-responsive" src="photos/3.jpg">
												</a>
											</div>
										</div>
										<div class="post-info">
											<a href="viewitemdetail.do">Workout</a>
											<div class="post-meta">
												$60
											</div>
										</div>
									</li>
								</ul>

							</aside>
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
		
		<!-- Athensoft scripts -->
		<script src="js/local/catalog/item2.js"></script>
		
		<!-- Local scripts -->
		<script>
			$(function(){
				//alert("02");
				getItemByClassCode("01");
			});
		</script>
		
		
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
