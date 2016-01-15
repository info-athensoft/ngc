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
				<%@ include file="../../02_nav_inc.jsp" %>
				<!-- menu -->
			</header>

			<div role="main" class="main shop">

				<div class="container">

					<hr class="tall">

					<div class="row">
						<div class="col-md-12">
							<h2 class="shorter"><strong>Checkout</strong></h2>
							<p>Returning customer? <a href="shop-login.html">Click here to login.</a></p>
						</div>
					</div>

					<div class="row">
						<div class="col-md-9">

							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
												Billing Address
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="accordion-body collapse in">
										<div class="panel-body">
											<form action="" id="" method="post">
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Country</label>
															<select class="form-control">
																<option value="">Select a country</option>
															</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-6">
															<label>First Name</label>
															<input type="text" value="" class="form-control">
														</div>
														<div class="col-md-6">
															<label>Last Name</label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Company Name</label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Address </label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>City </label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<input type="submit" value="Continue" class="btn btn-primary pull-right push-bottom" data-loading-text="Loading...">
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
												Shipping Address
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="accordion-body collapse">
										<div class="panel-body">
											<form action="" id="" method="post">
												<div class="row">
													<div class="col-md-12">
														<span class="remember-box checkbox">
															<label>
																<input type="checkbox" checked="checked">Ship to billing address?
															</label>
														</span>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Country</label>
															<select class="form-control">
																<option value="">Select a country</option>
															</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-6">
															<label>First Name</label>
															<input type="text" value="" class="form-control">
														</div>
														<div class="col-md-6">
															<label>Last Name</label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Company Name</label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>Address </label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="form-group">
														<div class="col-md-12">
															<label>City </label>
															<input type="text" value="" class="form-control">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<input type="submit" value="Continue" class="btn btn-primary pull-right push-bottom" data-loading-text="Loading...">
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
												Review & Payment
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="accordion-body collapse">
										<div class="panel-body">
											<table cellspacing="0" class="shop_table cart">
												<thead>
													<tr>
														<th class="product-thumbnail">
															&nbsp;
														</th>
														<th class="product-name">
															Product
														</th>
														<th class="product-price">
															Price
														</th>
														<th class="product-quantity">
															Quantity
														</th>
														<th class="product-subtotal">
															Total
														</th>
													</tr>
												</thead>
												<tbody>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<a href="shop-product-sidebar.html">
																<img width="100" height="100" alt="" class="img-responsive" src="img/products/product-1.jpg">
															</a>
														</td>
														<td class="product-name">
															<a href="shop-product-sidebar.html">Photo Camera</a>
														</td>
														<td class="product-price">
															<span class="amount">$299</span>
														</td>
														<td class="product-quantity">
															1
														</td>
														<td class="product-subtotal">
															<span class="amount">$299</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<a href="shop-product-sidebar.html">
																<img width="100" height="100" alt="" class="img-responsive" src="img/products/product-2.jpg">
															</a>
														</td>
														<td class="product-name">
															<a href="shop-product-sidebar.html">Golf Bag</a>
														</td>
														<td class="product-price">
															<span class="amount">$72</span>
														</td>
														<td class="product-quantity">
															1
														</td>
														<td class="product-subtotal">
															<span class="amount">$72</span>
														</td>
													</tr>
													<tr class="cart_table_item">
														<td class="product-thumbnail">
															<a href="shop-product-sidebar.html">
																<img width="100" height="100" alt="" class="img-responsive" src="img/products/product-3.jpg">
															</a>
														</td>
														<td class="product-name">
															<a href="shop-product-sidebar.html">Workout</a>
														</td>
														<td class="product-price">
															<span class="amount">$60</span>
														</td>
														<td class="product-quantity">
															1
														</td>
														<td class="product-subtotal">
															<span class="amount">$60</span>
														</td>
													</tr>
												</tbody>
											</table>

											<hr class="tall">

											<h4>Cart Totals</h4>
											<table cellspacing="0" class="cart-totals">
												<tbody>
													<tr class="cart-subtotal">
														<th>
															<strong>Cart Subtotal</strong>
														</th>
														<td>
															<strong><span class="amount">$${orderTotal}</span></strong>
														</td>
													</tr>
													<tr class="shipping">
														<th>
															Shipping
														</th>
														<td>
															Free Shipping<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
														</td>
													</tr>
													<tr class="total">
														<th>
															<strong>Order Total</strong>
														</th>
														<td>
															<strong><span class="amount">$${orderTotal}</span></strong>
														</td>
													</tr>
												</tbody>
											</table>

											<hr class="tall">

											<h4>Payment Method</h4>

											<form action="" id="" method="post">
												<div class="row">
													<div class="col-md-12">
														<span class="remember-box checkbox">
															<label>
																<input type="checkbox" checked="checked">Credit Card
															</label>
														</span>
													</div>
												</div>
												
												<div class="row">
													<div class="col-md-12">
														<span class="remember-box checkbox">
															<label>
																<input type="checkbox">Paypal
															</label>
														</span>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="actions-continue">
								<input type="submit" value="Place Order" name="proceed" class="btn btn-lg btn-primary push-top">
							</div>

						</div>
						<div class="col-md-3">
							<h4>Cart Totals</h4>
							<table cellspacing="0" class="cart-totals">
								<tbody>
									<tr class="cart-subtotal">
										<th>
											<strong>Cart Subtotal</strong>
										</th>
										<td>
											<strong><span class="amount">$${orderTotal}</span></strong>
										</td>
									</tr>
									<tr class="shipping">
										<th>
											Shipping
										</th>
										<td>
											Free Shipping<input type="hidden" value="free_shipping" id="shipping_method" name="shipping_method">
										</td>
									</tr>
									<tr class="total">
										<th>
											<strong>Order Total</strong>
										</th>
										<td>
											<strong><span class="amount">$${orderTotal}</span></strong>
										</td>
									</tr>
								</tbody>
							</table>
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
