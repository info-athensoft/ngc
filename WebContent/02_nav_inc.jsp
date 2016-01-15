<script src="js/local/payment/shopping_cart.js"></script>
<div class="navbar-collapse nav-main-collapse collapse">
	<div class="container">
	<!-- 
		<ul class="social-icons">
			<li class="facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook">Facebook</a></li>
			<li class="twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter">Twitter</a></li>
			<li class="linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin">Linkedin</a></li>
		</ul>
		 -->
		<nav class="nav-main mega-menu">
			<ul class="nav nav-pills nav-main" id="mainMenu">							
				<!-- mtl menu -->
					<li class="active">
						<a href="index.jsp">Home</a>
					</li>
					
					<li class="">
						<a href="gotoservice.do">Copy Center</a>
					</li>
					
					<li class="dropdown mega-menu-item mega-menu-fullwidth">
						<a class="dropdown-toggle" href="goshopping_family.do?familyClassId=3">
							Products
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li>
								<div class="mega-menu-content">
									<div class="row">
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<a href="goshopping_family.do?familyClassId=3"><span class="mega-menu-sub-title">Laptops</span></a>
													<ul class="sub-menu">
														<li><a href="goshopping.do?itemClassId=12">Apple</a></li>
														<li><a href="goshopping.do?itemClassId=13">Dell</a></li>
														<li><a href="goshopping.do?itemClassId=14">HP</a></li>
														<li><a href="goshopping.do?itemClassId=16">SAMSUNG</a></li>
														<li><a href="goshopping.do?itemClassId=17">Lenovo</a></li>
														<li><a href="goshopping.do?itemClassId=18">ASUS</a></li>
														<li><a href="goshopping.do?itemClassId=19">TOSHIBA</a></li>
														<li><a href="goshopping.do?itemClassId=20">Acer</a></li>
														<li><a href="goshopping.do?itemClassId=21">Sony Vaio</a></li>
														<li><a href="goshopping.do?itemClassId=23">LG</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<a href="goshopping_family.do?familyClassId=4" onclick=""><span class="mega-menu-sub-title">Desktops</span></a>
													<ul class="sub-menu">
														<li><a href="goshopping.do?itemClassId=26">All-in-one</a></li>
														<li><a href="goshopping.do?itemClassId=27">Small form factor</a></li>
														<li><a href="goshopping.do?itemClassId=28">Tower</a></li>
														<li><a href="goshopping.do?itemClassId=29">Business</a></li>
														<li><a href="goshopping.do?itemClassId=30">Gaming</a></li>
														<li><a href="goshopping.do?itemClassId=31">Mother case</a></li>
													</ul>
												</li>
											</ul>
										</div>
										
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<a href="goshopping_family.do?familyClassId=8" onclick=""><span class="mega-menu-sub-title">Monitors</span></a>
													<ul class="sub-menu">
														<li><a href="goshopping.do?itemClassId=45">LG</a></li>
														<li><a href="goshopping.do?itemClassId=46">Samsung</a></li>
														<li><a href="goshopping.do?itemClassId=47">BenQ</a></li>
														<li><a href="goshopping.do?itemClassId=48">Philips</a></li>
														<li><a href="goshopping.do?itemClassId=49">Dell</a></li>
														<li><a href="goshopping.do?itemClassId=50">ASUS</a></li>
														<li><a href="goshopping.do?itemClassId=51">Acer</a></li>
													</ul>
												</li>
											</ul>
										</div>
										
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<a href="goshopping_family.do?familyClassId=6" onclick=""><span class="mega-menu-sub-title">Computer Accessories</span></a>
													<ul class="sub-menu">
														<li><a href="goshopping.do?itemClassId=35">Adapter</a></li>
														<li><a href="goshopping.do?itemClassId=36">Battery</a></li>
														<li><a href="goshopping.do?itemClassId=37">Card Reader</a></li>
														<li><a href="goshopping.do?itemClassId=38">Router</a></li>
														<li><a href="goshopping.do?itemClassId=39">Switch</a></li>
														<li><a href="goshopping.do?itemClassId=40">Power Line</a></li>
														<li><a href="goshopping.do?itemClassId=41">Enclosure</a></li>
														<li><a href="goshopping.do?itemClassId=42">Laptop Bag</a></li>
													</ul>
												</li>
											</ul>
										</div>
										
									</div>
								</div>
							</li>
						</ul>
					</li>
					
					<li class="">
						<a href="about_us_basic.do">About us</a>
					</li>
					
					<li class="">
						<a href="contact_us.do">Contact us</a>
					</li>
					
					<li class="dropdown mega-menu-item mega-menu-shop">
						<a class="dropdown-toggle mobile-redirect" href="#">
							<i class="fa fa-shopping-cart"></i> Cart (
							<c:choose>
							    <c:when test="${orderQuantity>0}">
							        ${orderQuantity}
							    </c:when>
							    <c:otherwise>
							        0
							    </c:otherwise>
							</c:choose>
							
							)<!--  - $${doubleCartSubTotal} -->
							<i class="fa fa-angle-down"></i>
						</a>
						
						<c:if test="${orderQuantity>0}">
							<ul class="dropdown-menu">
								<li>
									<div class="mega-menu-content">
										<div class="row">
											<div class="col-md-12">
	
												<table cellspacing="0" class="cart">
													<tbody>
													  <c:forEach var="item" items="${mapProdInCart}">						  	
														<c:set var="amount" value="${item.value.price * item.value.qty}"></c:set>
														<tr>
														<!-- 	<td class="product-thumbnail">
																<a href="shop-product-sidebar.html">
																	<img width="100" height="100" alt="" class="img-responsive" src="img/products/product-1.jpg">
																</a>
															</td> -->
															<td class="product-name">
																<a href="viewitemdetail.do?itemId=${item.key}">${item.value.itemName}</a>
															</td>
															<td class="product-qty">
																<a href="viewitemdetail.do?itemId=${item.key}"><strong>${item.value.qty}</strong></a>
															</td>
															<td class="product-times">
																<a title="Remove this item" class="remove" href="javascript:void(0);" onclick="removeProd(${item.value.itemId})"><strong> X &nbsp;&nbsp;</strong></a>
															</td>
															<td class="product-price">
																<a href="shop-product-sidebar.html"><strong>${item.value.price}</strong></a>
															</td>
															<td class="product-equals">
																<a href="shop-product-sidebar.html"><strong>=</strong></a>
															</td>
															<td class="product-amount">
																<a href="shop-product-sidebar.html"><strong>${amount}</strong></a>
															</td>
															<td class="product-actions">
																<a title="Remove this item" class="remove" href="javascript:void(0);" onclick="removeProd(${item.value.itemId})">
																	<i class="fa fa-times"></i>
																</a>
															</td>
														</tr>
													  </c:forEach>
														<tr>
															<td class="actions" colspan="6">
																<div class="actions-continue">
																<input type="submit" value="View All" class="btn btn-default" onclick="nav_view_cart()">
																<input type="submit" value="Proceed to Checkout" name="proceed" class="btn pull-right btn-primary" onclick="proceed_checkout()">
																</div>
															</td>
														</tr>
													</tbody>
												</table>
	
											</div>
										</div>
									</div>
								</li>
							</ul>
						</c:if>
						
					</li>
					
				</ul>
			</nav>
		</div>
	</div>
	
	<!-- Athensoft scripts -->
	<script src="js/local/catalog/item.js"></script>
	<script>
		function proceed_checkout() {
			window.location="shop_checkout.do";
		}
	</script>