
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="include/header.jsp" %>
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
.mainsimg img{
	width: 400px;
    height: 400px;
    border-radius: 30px 30px 30px 30px;
    border: 1px solid #ebebeb;
}
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
							<div class="mainsimg">
								<img src="img/certification/X-3.jpg" alt="">

							</div>

						</div>
						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<span>챌린저스</span>
									<h3><c:out value="${challenge.challengetitle}"/></h3>
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

									<h4><c:out value="${challenge.deposit }"/></h4>
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
												<h5>소개글</h5>
												<p><c:out value="${challenge.challengeintro }"/></p>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-2" role="tabpanel">
									<div class="product-content">
										<div class="row">
											<div class="col-lg-7">
												<h5>주의사항</h5>
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
<!-- footer -->
<%@include file="./include/footer.jsp" %>
</html>