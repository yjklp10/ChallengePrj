
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zxx">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Fashi | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<style>
.tgrid-image{
	display:flex;
}


.grid-image {
    margin: 10px 80px;
    position: relative;
}
.grid-image img {
    width: 250px;
    height: 250px;
    border-radius: 30px 30px 0 0;
    border: 1px solid #ebebeb; 
}
.grid-image p{
   width: 249px;
    background-color: green;
    color: white;
    top: 249px;
    position: absolute;  
    right: 1px;
    text-align: center;
    border-radius: 0 0 30px 30px;
    
    @import url('https://fonts.googleapis.com/icon?family=Material+Icons');

.dropdown-label{
  font-size : 12px;
  margin : 10px;
  font-weight : bold;
  color : rgb(50, 50, 50);
}

.dropdown{
  position : relative;
  display : inline-block;
}

.dropbtn_icon{
  font-family : 'Material Icons';
}
.dropbtn{
  display : block;
  border : 2px solid rgb(94, 94, 94);
  border-radius : 4px;
  background-color: #fcfcfc;
  font-weight: 400;
  color : rgb(124, 124, 124);
  padding : 12px;
  width :240px;
  text-align: left;
  cursor : pointer;
  font-size : 12px;
  z-index :1;
  position : relative;
}
.dropdown-content{
  display : none;
  font-weight: 400;
  background-color: #fcfcfc;
  min-width : 240px;
  border-radius: 8px;
  height : 160px;
  overflow : scroll;
  box-shadow: 0px 0px 10px 3px rgba(190, 190, 190, 0.6);
}
.dropdown-content::-webkit-scrollbar{
  width : 5px;
  height : 10px;
}
.dropdown-content::-webkit-scrollbar-thumb{
  border-radius : 2px;
  background-color :rgb(194, 194, 194)
}

.dropdown-content div{
  display : block;
  text-decoration : none;
  color : rgb(37, 37, 37);
  font-size: 12px;
  padding : 12px 20px;
}
.dropdown-content div:hover{
  background-color: rgb(226, 226, 226);
}

.dropdown-content.show{
  display : block;

input:focus,
select:focus,
button:focus,
textarea:focus {
	outline: none;
}

a:hover,
a:focus {
	text-decoration: none;
	outline: none;
	color: #fff;
}

ul,
ol {
	padding: 0;
	margin: 0;
}

}
</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="ht-left">
					<div class="mail-service">
						<i class=" fa fa-envelope"></i> hello.colorlib@gmail.com
					</div>
					<div class="phone-service">
						<i class=" fa fa-phone"></i> +65 11.188.888
					</div>
				</div>
				<div class="ht-right">
					<a href="#" class="login-panel"><i class="fa fa-user"></i>Login</a>
					<div class="lan-selector">
						<select class="language_drop" name="countries" id="countries"
							style="width: 300px;">
							<option value='yt' data-image="img/flag-1.jpg"
								data-imagecss="flag yt" data-title="English">English</option>
							<option value='yu' data-image="img/flag-2.jpg"
								data-imagecss="flag yu" data-title="Bangladesh">German
							</option>
						</select>
					</div>
					<div class="top-social">
						<a href="#"><i class="ti-facebook"></i></a> <a href="#"><i
							class="ti-twitter-alt"></i></a> <a href="#"><i
							class="ti-linkedin"></i></a> <a href="#"><i class="ti-pinterest"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="./index.html"> <img src="img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<button type="button" class="category-btn">All
								Categories</button>
							<form action="#" class="input-group">
								<input type="text" placeholder="What do you need?">
								<button type="button">
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-lg-3 text-right col-md-3">
						<ul class="nav-right">
							<li class="heart-icon"><a href="#"> <i
									class="icon_heart_alt"></i> <span>1</span>
							</a></li>
							<li class="cart-icon"><a href="#"> <i
									class="icon_bag_alt"></i> <span>3</span>
							</a>
								<div class="cart-hover">
									<div class="select-items">
										<table>
											<tbody>
												<tr>
													<td class="si-pic"><img src="img/select-product-1.jpg"
														alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$60.00 x 1</p>
															<h6>Kabino Bedside Table</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
												<tr>
													<td class="si-pic"><img src="img/select-product-2.jpg"
														alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$60.00 x 1</p>
															<h6>Kabino Bedside Table</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="select-total">
										<span>total:</span>
										<h5>$120.00</h5>
									</div>
									<div class="select-button">
										<a href="#" class="primary-btn view-card">VIEW CARD</a> <a
											href="#" class="primary-btn checkout-btn">CHECK OUT</a>
									</div>
								</div></li>
							<li class="cart-price">$150.00</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>All departments</span>
						<ul class="depart-hover">
							<li class="active"><a href="#">Womenâs Clothing</a></li>
							<li><a href="#">Menâs Clothing</a></li>
							<li><a href="#">Underwear</a></li>
							<li><a href="#">Kid's Clothing</a></li>
							<li><a href="#">Brand Fashion</a></li>
							<li><a href="#">Accessories/Shoes</a></li>
							<li><a href="#">Luxury Brands</a></li>
							<li><a href="#">Brand Outdoor Apparel</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="./index.html">Home</a></li>
						<li><a href="./shop.html">Shop</a></li>
						<li><a href="#">Collection</a>
							<ul class="dropdown">
								<li><a href="#">Men's</a></li>
								<li><a href="#">Women's</a></li>
								<li><a href="#">Kid's</a></li>
							</ul></li>
						<li><a href="./blog.html">Blog</a></li>
						<li><a href="./contact.html">Contact</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<li><a href="./blog-details.html">Blog Details</a></li>
								<li><a href="./shopping-cart.html">Shopping Cart</a></li>
								<li><a href="./check-out.html">Checkout</a></li>
								<li><a href="./faq.html">Faq</a></li>
								<li><a href="./register.html">Register</a></li>
								<li><a href="./login.html">Login</a></li>
							</ul></li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text product-more">
						<a href="./home.html"><i class="fa fa-home"></i> Home</a> <a
							href="./shop.html">Shop</a> <span>Detail</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad page-details">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="filter-widget">
						<h4 class="fw-title">Categories</h4>
						<ul class="filter-catagories">
							<li><a href="#">운동</a></li>
							<li><a href="#">기상</a></li>
							<li><a href="#">취미</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-6">
							<div class="product-pic-zoom">
								<img class="product-big-img"
									src="img/certification/X-3.jpg" alt="">

							</div>

						</div>
						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<span>챌린저스</span>
									<h3>30분 운동하기</h3>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i> <span>(5)</span>
								</div>
								<hr>

								<div class="dropdown">
									<button class="dropbtn">
										<span class="dropbtn_icon">more_horiz</span> <span
											class="dropbtn_content">Select a menu...</span> <span
											class="dropbtn_click"
											style="font-family: Material Icons; font-size: 16px; color: #3b3b3b; float: right;"
											onclick="dropdown()">arrow_drop_down</span>
									</button>
									<div class="dropdown-content">
										<div class="fastfood" onclick="showMenu(this.innerText)">Burgerking</div>
										<div class="fastfood" onclick="showMenu(this.innerText)">Mcdonals</div>
										<div class="fastfood" onclick="showMenu(this.innerText)">Lotteria</div>
										<div class="fastfood" onclick="showMenu(this.innerText)">Mom's
											touch</div>
										<div class="fastfood" onclick="showMenu(this.innerText)">In
											n out</div>
										<div class="fastfood" onclick="showMenu(this.innerText)">Subway</div>
										<div class="fastfood" onclick="showMenu(this.innerText)">Shake
											shack</div>
									</div>
								</div>
								<br><br>
								<div class="pd-desc">

									<h4>10,000원</h4>
								</div>
								<div class="quantity">

									<a href="#" class="primary-btn pd-cart">신청하기</a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-tab">
						<div class="tab-item">
							<ul class="nav" role="tablist">
								<li><a class="active" data-toggle="tab" href="#tab-1"
									role="tab">챌린지 소개글</a></li>
								<li><a data-toggle="tab" href="#tab-2" role="tab">주의사항</a></li>
								<li><a data-toggle="tab" href="#tab-3" role="tab">인증방법</a></li>
								<li><a data-toggle="tab" href="#tab-4" role="tab">후기</a></li>
							</ul>
						</div>
						<div class="tab-item-content">
							<div class="tab-content">
								<div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
									<div class="product-content">
										<div class="row">
											<div class="col-lg-7">
												<h5>Introduction</h5>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit, sed do eiusmod tempor incididunt ut labore et dolore
													magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in</p>
												<h5>Features</h5>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit, sed do eiusmod tempor incididunt ut labore et dolore
													magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in</p>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-2" role="tabpanel">
									<div class="product-content">
										<div class="row">
											<div class="col-lg-7">
												<h5>Introduction</h5>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit, sed do eiusmod tempor incididunt ut labore et dolore
													magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in</p>
												<h5>Features</h5>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit, sed do eiusmod tempor incididunt ut labore et dolore
													magna aliqua. Ut enim ad minim veniam, quis nostrud
													exercitation ullamco laboris nisi ut aliquip ex ea commodo
													consequat. Duis aute irure dolor in</p>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-3" role="tabpanel">
									<div class="specification-table">
										<table>
											<tr>
												<td class="p-catagory">인증법</td>
											</tr>
										</table>
										<br>
										<div class="tgrid-image">
										<div class="grid-image">
											<img src="img/certification/X-2.jpg">
											<p>O</p>
										</div>
										<div  class="grid-image">
											<img src="img/certification/X-2.jpg">
											<p style=background-color:red;>X</p>
										</div>
										</div>
									</div>
									
									</div>
								
								<div class="tab-pane fade" id="tab-4" role="tabpanel">
									<div class="customer-review-option">
										<h4>후기</h4>
										<div class="comment-option">
											<div class="co-item">
												<div class="avatar-pic">
													<img src="img/product-single/avatar-1.png" alt="">
												</div>
												<div class="avatar-text">
													<div class="at-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Brandon Kelley <span>27 Aug 2019</span>
													</h5>
													<div class="at-reply">Nice !</div>
												</div>
											</div>
											<div class="co-item">
												<div class="avatar-pic">
													<img src="img/product-single/avatar-2.png" alt="">
												</div>
												<div class="avatar-text">
													<div class="at-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Roy Banks <span>27 Aug 2019</span>
													</h5>
													<div class="at-reply">Nice !</div>
												</div>
											</div>
										</div>
										<button type="submit" class="site-btn-2">후기 더보기</button>
										<br><br>
										<div class="leave-comment">
											<h4>Leave A Comment</h4>
											<form action="#" class="comment-form">
												<div class="row">
													<div class="col-lg-6">
														<input type="text" placeholder="Name">
													</div>
													<div class="col-lg-6">
														<input type="text" placeholder="Email">
													</div>
													<div class="col-lg-12">
														<textarea placeholder="Messages"></textarea>
														<button type="submit" class="site-btn">Send
															message</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		
	</section>
	<!-- Product Shop Section End -->



	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer-left">
						<div class="footer-logo">
							<a href="#"><img src="img/footer-logo.png" alt=""></a>
						</div>
						<ul>
							<li>Address: 60-49 Road 11378 New York</li>
							<li>Phone: +65 11.188.888</li>
							<li>Email: hello.colorlib@gmail.com</li>
						</ul>
						<div class="footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1">
					<div class="footer-widget">
						<h5>Information</h5>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Checkout</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Serivius</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="footer-widget">
						<h5>My Account</h5>
						<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Shopping Cart</a></li>
							<li><a href="#">Shop</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="newslatter-item">
						<h5>Join Our Newsletter Now</h5>
						<p>Get E-mail updates about our latest shop and special
							offers.</p>
						<form action="#" class="subscribe-form">
							<input type="text" placeholder="Enter Your Mail">
							<button type="button">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-reserved">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="copyright-text">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</div>
						<div class="payment-pic">
							<img src="img/payment-method.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>

	<script src="js/jquery.dd.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/drop.js"></script>
</body>

</html>