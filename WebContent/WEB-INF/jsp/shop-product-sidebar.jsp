<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- image path base -->
<c:set var="imagePathBase" value="/images/photos"></c:set>

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

							<div class="row">
								<div class="col-md-6">

									<div class="owl-carousel" data-plugin-options='{"items": 1}'>
										<div>
											<div class="thumbnail">
												<img alt="" class="img-responsive img-rounded" src="${imagePathBase}/${item.itemClassId}/${item.itemPicName}">
											</div>
										</div>
										<div>
											<div class="thumbnail">
												<img alt="" class="img-responsive img-rounded" src="${imagePathBase}/${item.itemClassId}/${item.itemPicName}">
											</div>
										</div>
										<div>
											<div class="thumbnail">
												<img alt="" class="img-responsive img-rounded" src="${imagePathBase}/${item.itemClassId}/${item.itemPicName}">
											</div>
										</div>
									</div>

								</div>

								<div class="col-md-6">

									<div class="summary entry-summary">

										<h1 class="shorter"><strong>${item.itemName}</strong></h1>

										<div class="review_num">
											<span class="count" itemprop="ratingCount">2</span> reviews
										</div>

										<div title="Rated 5.00 out of 5" class="star-rating">											 
											<span id="test_rate"><strong class="rating">5.00</strong> out of 5</span>
										</div>

										<p class="price">
											<span class="amount">$22</span>
										</p>

										<p class="taller">${item.itemDesc}</p>
										
										<!-- add to cart -->   
										<form enctype="multipart/form-data" method="post" class="cart">
											
											<div class="quantity">
												<input type="button" class="minus" value="-">
												<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
												<input type="button" class="plus" value="+">
											</div>
											
											<button href="#" class="btn btn-primary btn-icon">Add to Cart</button>
											
										</form>
										<!--
										<button href="#" class="btn btn-primary btn-icon">Add to wishlist</button>
										<a href="contact_us.do" class="btn btn-primary btn-icon">Contact now</a>
										  -->
										 
										<div class="product_meta">
											<br/>
											<span class="posted_in">Categories: <a rel="tag" href="goshopping.do?itemClassId=${item.itemClassId}">${item.itemClassName}</a></span>
										</div>

									</div>


								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="tabs tabs-product">
										<ul class="nav nav-tabs">
											<li><a href="#productDescription" data-toggle="tab">Description</a></li>
											<li class="active"><a href="#productInfo" data-toggle="tab">Specification</a></li>
											<!--  
											<li><a href="#productReviews" data-toggle="tab">Reviews (2)</a></li>
											-->
										</ul>
										<div class="tab-content">
											<!-- description review -->
											<div class="tab-pane" id="productDescription">
												<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sagittis, massa fringilla consequat blandit, mauris ligula porta nisi, non tristique enim sapien vel nisl. Suspendisse vestibulum lobortis dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent nec tempus nibh. Donec mollis commodo metus et fringilla. Etiam venenatis, diam id adipiscing convallis, nisi eros lobortis tellus, feugiat adipiscing ante ante sit amet dolor. Vestibulum vehicula scelerisque facilisis. Sed faucibus placerat bibendum. Maecenas sollicitudin commodo justo, quis hendrerit leo consequat ac. Proin sit amet risus sapien, eget interdum dui. Proin justo sapien, varius sit amet hendrerit id, egestas quis mauris.</p>
											</div>
											
											<!-- spec review -->
											<div class="tab-pane active" id="productInfo">
												<table class="table table-striped push-top">
													<tbody>
													
														<c:forEach var="itemSpec" items="${item.itemSpecList}">
															<tr>
																<th>${itemSpec.propertyName}</th>
																<td>${itemSpec.propertyValue}</td>
															</tr>
														</c:forEach>														
													</tbody>
												</table>
											</div>
											
											<!-- tab review -->
											<!-- 
											<div class="tab-pane" id="productReviews">
												<ul class="comments">
													<li>
														<div class="comment">
															<div class="img-thumbnail">
																<img class="avatar" alt="" src="img/avatar-2.jpg">
															</div>
															<div class="comment-block">
																<div class="comment-arrow"></div>
																<span class="comment-by">
																	<strong>John Doe</strong>
																	<span class="pull-right">
																		<div title="Rated 5.00 out of 5" class="star-rating">
																			<span style="width:100%"><strong class="rating">5.00</strong> out of 5</span>
																		</div>
																	</span>
																</span>
																<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae, gravida pellentesque urna varius vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim ornare nisi, vitae mattis nulla ante id dui.</p>
															</div>
														</div>
													</li>
												</ul>
												<hr class="tall">
												<h4>Add a review</h4>
												<div class="row">
													<div class="col-md-12">

														<form action="" id="submitReview" method="post">
															<div class="row">
																<div class="form-group">
																	<div class="col-md-6">
																		<label>Your name *</label>
																		<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" id="name">
																	</div>
																	<div class="col-md-6">
																		<label>Your email address *</label>
																		<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" id="email">
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="form-group">
																	<div class="col-md-12">
																		<label>Review *</label>
																		<textarea maxlength="5000" data-msg-required="Please enter your message." rows="10" class="form-control" name="message" id="message"></textarea>
																	</div>
																</div>
															</div>
															<div class="row">
																<div class="col-md-12">
																	<input type="submit" value="Submit Review" class="btn btn-primary" data-loading-text="Loading...">
																</div>
															</div>
														</form>
													</div>

												</div>
											</div>
											 -->											 
											<!-- end of tab review -->
											
										</div><!-- end of tab pane wrapper -->
									</div>
								</div>
							</div>
							
							<!-- 
							<hr class="tall" />
							 -->
							
							<!-- related products
							<div class="row">

								<div class="col-md-12">
									<h2>Related <strong>Products</strong></h2>
								</div>

								<ul class="products product-thumb-info-list">
									<li class="col-sm-3 col-xs-12 product">
										<a href="shop-product-sidebar.html">
											<span class="onsale">Sale!</span>
										</a>
										<span class="product-thumb-info">
											<a href="shop-cart.html" class="add-to-cart-product">
												<span><i class="fa fa-shopping-cart"></i> Add to Cart</span>
											</a>
											<a href="shop-product-sidebar.html">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-1.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="shop-product-sidebar.html">
													<h4>Photo Camera</h4>
													<span class="price">
														<del><span class="amount">$325</span></del>
														<ins><span class="amount">$299</span></ins>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-sm-3 col-xs-12 product">
										<span class="product-thumb-info">
											<a href="shop-cart.html" class="add-to-cart-product">
												<span><i class="fa fa-shopping-cart"></i> Add to Cart</span>
											</a>
											<a href="shop-product-sidebar.html">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-2.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="shop-product-sidebar.html">
													<h4>Golf Bag</h4>
													<span class="price">
														<span class="amount">$72</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-sm-3 col-xs-12 product">
										<span class="product-thumb-info">
											<a href="shop-cart.html" class="add-to-cart-product">
												<span><i class="fa fa-shopping-cart"></i> Add to Cart</span>
											</a>
											<a href="shop-product-sidebar.html">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-3.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="shop-product-sidebar.html">
													<h4>Workout</h4>
													<span class="price">
														<span class="amount">$60</span>
													</span>
												</a>
											</span>
										</span>
									</li>
									<li class="col-sm-3 col-xs-12 product">
										<span class="product-thumb-info">
											<a href="shop-cart.html" class="add-to-cart-product">
												<span><i class="fa fa-shopping-cart"></i> Add to Cart</span>
											</a>
											<a href="shop-product-sidebar.html">
												<span class="product-thumb-info-image">
													<span class="product-thumb-info-act">
														<span class="product-thumb-info-act-left"><em>View</em></span>
														<span class="product-thumb-info-act-right"><em><i class="fa fa-plus"></i> Details</em></span>
													</span>
													<img alt="" class="img-responsive" src="img/products/product-4.jpg">
												</span>
											</a>
											<span class="product-thumb-info-content">
												<a href="shop-product-sidebar.html">
													<h4>Luxury bag</h4>
													<span class="price">
														<span class="amount">$199</span>
													</span>
												</a>
											</span>
										</span>
									</li>
								</ul>

							</div>
							 -->

						</div>
						
						
						
						<div class="col-md-3">
							<aside class="sidebar">

								<!-- <form>  -->
									<div class="input-group input-group-lg">
										<input class="form-control" placeholder="Search a product" name="s" id="s" type="text">
										<span class="input-group-btn">
											<button type="submit" class="btn btn-primary btn-lg" onclick="searchProd(document.getElementById('s'));"><i class="fa fa-search"></i></button>
										</span>
									</div>
								<!-- </form> -->

								<hr />

								<h5>Tags</h5>
								<a href="goshopping_family.do?familyClassId=5"><span class="label label-dark">Tablet</span></a>
								<a href="goshopping_family.do?familyClassId=6"><span class="label label-dark">Computer Accessories</span></a>
								<a href="goshopping_family.do?familyClassId=7"><span class="label label-dark">Printer Accessories</span></a>
								<a href="goshopping_family.do?familyClassId=3"><span class="label label-dark">Laptop</span></a>
								<a href="goshopping_family.do?familyClassId=2"><span class="label label-dark">Security System</span></a>
								<a href="goshopping_family.do?familyClassId=4"><span class="label label-dark">Desktop</span></a>
								<a href="goshopping_family.do?familyClassId=9"><span class="label label-dark">TV</span></a>
								<a href="goshopping_family.do?familyClassId=8"><span class="label label-dark">Monitor</span></a>
								<hr />

								<h5>Top Rated Products</h5>
								<ul class="simple-post-list">
									<c:forEach var="featuredItem" items="${featuredItemList}">
										<li>
											<div class="post-image">
												<div class="img-thumbnail">
													<a href="viewitemdetail.do?itemId=${featuredItem.itemId}">
														<img alt="" width="60" height="60" class="img-responsive" src="${imagePathBase}/${featuredItem.itemClassId}/${featuredItem.itemPicName}">
													</a>
												</div>
											</div>
											<div class="post-info">
												<a href="viewitemdetail.do?itemId=${featuredItem.itemId}">${featuredItem.itemName}</a>
												<div class="post-meta">
													${featuredItem.currentPrice}
												</div>
											</div>
										</li>
									</c:forEach>
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
		<script src="js/local/catalog/item.js"></script>

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
		 
		 <script>
		 
		 	//test for item review rate
			$(function(){
				$("#test_rate").css("width",setRate('${item.itemId+50}'));				
			});	
			
			function setRate(rate){
				return rate+'%';
			}
		 
		</script>
		
		<c:set var="rate" value="70"/>

	</body>
</html>
