<%@ page contentType="text/html; charset=utf-8" %>
<%@ page language="java"%>
<%@ page pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
	<head>

		<!-- Basic -->
		<meta charset="utf-8">
		<title>MicroTechLand</title>		
		<meta name="keywords" content="computer,repair,montreal" />
		<meta name="description" content="Micro Tech Land">
		<meta name="author" content="athensoft.com">

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
		 

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="vendor/rs-plugin/css/settings.css" media="screen">
		<link rel="stylesheet" href="vendor/circle-flip-slideshow/css/component.css" media="screen">

		<!-- Skin CSS -->
		<link rel="stylesheet" href="css/skins/default.css">
		<!--  <link rel="stylesheet" href="css/custom/theme-ngc.css">   -->
		
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
			<!-- header -->
			<header id="header">
			
				<!-- header banner -->
				<%@ include file="01_header_inc.jsp" %>
				<!-- header banner -->

				<!-- menu -->
				<%@ include file="02_nav_inc.html" %>
				<!-- menu -->
			</header>
			<!-- end of header -->


			<!-- main -->
			<div role="main" class="main">
				<!-- slider -->
				<%@ include file="11_slide_inc.html" %>
				<!-- slider -->
				
				<div class="home-intro">
					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<p>
									The flexible way to get your printing job done with <em>Net Guy Concordia Copy Center</em>
									<span>Check out our services and features included.</span>
								</p>
							</div>
							<div class="col-md-4">
								<div class="get-started">
									<a href="signup.do" class="btn btn-lg btn-primary">Register Now!</a>
									<div class="learn-more">or <a href="gotoservice.do">learn more.</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- test -->
				<!-- 
				<div class="container">
					<div class="row center">
						<div class="col-md-12">
							<h2 class="short word-rotator-title">
								test
							</h2>
							<p class="lead">
								User Name: ${accountName}
							</p>
						</div>
					</div>
				</div>
				 -->
				<!-- test -->
				
				<div class="container">
					<div class="row center">
						<div class="col-md-12">
							<h2 class="short word-rotator-title">
								Net Guy Concordia is the <strong>TOP</strong> Printing and Computer Services Provider
							</h2>
							<p class="lead">
								your slogan goes here.
							</p>
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row center">
						<div class="col-md-12">
							<img src="img/dark-and-light.jpg" class="img-responsive" data-appear-animation="fadeInUp" alt="dark and light" style="margin: 45px 0px -35px;">
						</div>
					</div>
				</div>
				
				<!-- feature list -->
				<section class="featured">
					<div class="container">

						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-4">
										<div class="feature-box secundary">
											<div class="feature-box-icon">
												<i class="fa fa-file"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="shorter">Document Printing</h4>
												<p class="tall">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
											</div>
										</div>
										
										<div class="feature-box secundary">
											<div class="feature-box-icon">
												<i class="fa fa-group"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="shorter">Customer Support</h4>
												<p class="tall">Lorem ipsum dolor sit amet, consectetur adipiscing <span class="alternative-font">metus.</span> elit. Quisque rutrum pellentesque imperdiet.</p>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="feature-box secundary">
											<div class="feature-box-icon">
												<i class="fa fa-film"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="shorter">Computer Repairing</h4>
												<p class="tall">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
											</div>
										</div>
										<div class="feature-box secundary">
											<div class="feature-box-icon">
												<i class="fa fa-check"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="shorter">Computer Sale</h4>
												<p class="tall">Lorem ipsum dolor sit amet, consectetur adipiscing <span class="alternative-font">metus.</span> elit. Quisque rutrum pellentesque imperdiet.</p>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="feature-box secundary">
											<div class="feature-box-icon">
												<i class="fa fa-bars"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="shorter">Office Supplies Sale</h4>
												<p class="tall">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
											</div>
										</div>
										<div class="feature-box secundary">
											<div class="feature-box-icon">
												<i class="fa fa-desktop"></i>
											</div>
											<div class="feature-box-info">
												<h4 class="shorter">Internet Service</h4>
												<p class="tall">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<div class="container">
					<div class="row push-top">
						<div class="col-md-4 push-top">
							<img class="img-responsive" src="img/layout-styles.png" alt="layout styles" data-appear-animation="fadeInLeft">
						</div>
						<div class="col-md-7 col-md-offset-1">
							<h2 class="push-top"><strong>Online</strong> printing order service</h2>
							<p class="lead">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci. 
							</p>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci.
							</p>
						</div>
					</div>

					<hr class="tall" />

					<div class="row">
						<div class="col-md-7">
							<h2 class="push-top"><strong>Professional</strong> Computer repairing</strong></h2>
							<p class="lead">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci.  
							</p>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci.
							</p>
						</div>
						<div class="col-md-4 col-md-offset-1 push-top">
							<img class="img-responsive" src="img/style-switcher.png" alt="style switcher" data-appear-animation="fadeInRight">
						</div>
					</div>
					
					<div class="row push-top">
						<div class="col-md-4 push-top">
							<img class="img-responsive" src="img/layout-styles.png" alt="layout styles" data-appear-animation="fadeInLeft">
						</div>
						<div class="col-md-7 col-md-offset-1">
							<h2 class="push-top">Office Supplies <strong>Always Good deals</h2>
							<p class="lead">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci. 
							</p>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur imperdiet hendrerit volutpat. Sed in nunc nec ligula consectetur mollis in vel justo. Vestibulum ante ipsum primis in faucibus orci.
							</p>
						</div>
					</div>

					<hr class="tall">
				</div>
				
				<!-- featured products -->
				<div class="container">
					<div class="row center">
						<div class="col-md-12">
							<h2 class="shorter word-rotator-title push-top">
								Our <strong>Featured Products</strong>
							</h2>
							<p class="lead push-bottom">
								Check out what we are selling
							</p>
						</div>
					</div>
				</div>

				<ul class="portfolio-list sort-destination full-width">
					<li class="isotope-item">
						<div class="portfolio-item img-thumbnail">
							<a href="#" class="thumb-info secundary">
								<img alt="" class="img-responsive" src="img/projects/5.jpg">
								<span class="thumb-info-title">
									<span class="thumb-info-inner">SEO</span>
									<span class="thumb-info-type">Website</span>
								</span>
								<span class="thumb-info-action">
									<span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item">
						<div class="portfolio-item img-thumbnail">
							<a href="#" class="thumb-info secundary">
								<img alt="" class="img-responsive" src="img/projects/1.jpg">
								<span class="thumb-info-title">
									<span class="thumb-info-inner">Okler</span>
									<span class="thumb-info-type">Brand</span>
								</span>
								<span class="thumb-info-action">
									<span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item">
						<div class="portfolio-item img-thumbnail">
							<a href="#" class="thumb-info secundary">
								<img alt="" class="img-responsive" src="img/projects/5.jpg">
								<span class="thumb-info-title">
									<span class="thumb-info-inner">The Code</span>
									<span class="thumb-info-type">Website</span>
								</span>
								<span class="thumb-info-action">
									<span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item">
						<div class="portfolio-item img-thumbnail">
							<a href="#" class="thumb-info secundary">
								<img alt="" class="img-responsive" src="img/projects/1.jpg">
								<span class="thumb-info-title">
									<span class="thumb-info-inner">The Code</span>
									<span class="thumb-info-type">Website</span>
								</span>
								<span class="thumb-info-action">
									<span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
								</span>
							</a>
						</div>
					</li>
					<li class="isotope-item">
						<div class="portfolio-item img-thumbnail">
							<a href="#" class="thumb-info secundary">
								<img alt="" class="img-responsive" src="img/projects/5.jpg">
								<span class="thumb-info-title">
									<span class="thumb-info-inner">SEO</span>
									<span class="thumb-info-type">Website</span>
								</span>
								<span class="thumb-info-action">
									<span title="Universal" class="thumb-info-action-icon"><i class="fa fa-link"></i></span>
								</span>
							</a>
						</div>
					</li>
				</ul>
				<!-- end of featured products -->
				
				<!-- testimonial -->
				<section class="parallax" data-stellar-background-ratio="0.5" style="background-image: url(img/parallax-image.jpg);">
					<div class="container">
						<div class="row center">
							<div class="col-md-12 center">
								<h2 class="white"><strong>What</strong> Clients Say</h2>
								<div class="row">
									<div class="owl-carousel testimonials" data-plugin-options='{"items": 1}'>
										<div>
											<div class="col-md-12">
												<img src="img/clients/client-1.jpg" class="img-responsive img-circle" alt="">
												<blockquote class="testimonial-carousel">
												<p>This theme is totally customizable, clean with all the options you could want. Don't want full screen layout? With one word added to the code the entire site becomes a boxed version.... The customer support is absolutely unsurpassed. Every question is answered with more help than anyone could expect for the price. Can not recommend this enough.</p>
												</blockquote>
												<p class="white"><strong>John Smith</strong><br><span>CEO & Founder - Okler</span></p>
											</div>
										</div>
										<div>
											<div class="col-md-12">
												<img src="img/clients/client-1.jpg" class="img-responsive img-circle" alt="">
												<blockquote class="testimonial-carousel">
												<p>Excellent customer support. I had a minor issue with getting the contact form to work and I was provided with a solution within 8 hours and over the weekend. </p>
												</blockquote>
												<p class="white"><strong>John Smith</strong><br><span>CEO & Founder - Okler</span></p>
											</div>
										</div>
										<div>
											<div class="col-md-12">
												<img src="img/clients/client-1.jpg" class="img-responsive img-circle" alt="">
												<blockquote class="testimonial-carousel">
												<p>Outstanding about everything : - Support is fast and perfect : I got answers to every questions I asked. - Code quality is up to date, modern, structured, clear, easy to understand. </p>
												</blockquote>
												<p class="white"><strong>John Smith</strong><br><span>CEO & Founder - Okler</span></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- testimonial -->


				<!-- partner -->
				<div class="container">
					<div class="row center">
						<div class="col-md-12">
							<h2 class="shorter word-rotator-title">
								We're not the only ones
								<strong>
									<span class="word-rotate" data-plugin-options='{"delay": 3500, "animDelay": 400}'>
										<span class="word-rotate-items">
											<span>excited</span>
											<span>happy</span>
										</span>
									</span>
								</strong>
								<br/>
								about Net Guy Concordia
							</h2>
							<!--
							<p class="lead">13,000+ customers in more than 100 countries use Porto Template.</p>
							-->
						</div>
					</div>
					<div class="row center push-top">
						<div class="owl-carousel" data-plugin-options='{"items": 6, "autoplay": true, "autoplayTimeout": 3000}'>
							<div>
								<img class="img-responsive" src="img/logos/logo-1.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-2.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-3.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-4.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-5.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-6.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-4.png" alt="">
							</div>
							<div>
								<img class="img-responsive" src="img/logos/logo-2.png" alt="">
							</div>
						</div>
					</div>
				</div>
				<!-- partner -->
				
				<!-- slogan -->
				<section class="call-to-action featured footer">
					<div class="container">
						<div class="row">
							<div class="center">
								<h3>Net Guy Concordia is <strong>always</strong> ready to listen to you! <a href="contact_us.do" target="_blank" class="btn btn-lg btn-primary" data-appear-animation="bounceIn">Contact us now!</a> <span class="arrow hlb hidden-xs hidden-sm hidden-md" data-appear-animation="rotateInUpLeft" style="top: -22px;"></span></h3>
							</div>
						</div>
					</div>
				</section>
				<!-- slogan -->
				
			</div>
			<!--  -->

			<!-- footer -->
			<%@ include file="04_footer_inc.html" %>
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
		
		<!-- Specific Page Vendor and Views -->
		<script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		<script src="vendor/circle-flip-slideshow/js/jquery.flipshow.js"></script>
		<script src="js/views/view.home.js"></script>
		
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

	</body>
</html>
