
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="include/header.jsp"%>
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
/* 댓글 css*/
.CommentWriter {
	margin-top: 10px;
}

.CommentWriter {
	margin: 12px 0 29px;
	padding: 16px 10px 45px 18px;
	border: 2px solid #e9ecef;
	border-radius: 6px;
	box-sizing: border-box;
	background: var(- -skinCommentWriterBg);
}

.CommentWriter .comment_inbox {
	position: relative;
	margin-bottom: 10px;
}

.CommentWriter .comment_inbox_name {
	display: block;
	margin-bottom: 12px;
	font-weight: 700;
	font-size: 13px;
}

textarea.comment_inbox_text {
	max-height: 500px;
}

.CommentWriter .comment_inbox_text {
	overflow-x: hidden;
	overflow-y: auto;
	display: block;
	width: 100%;
	min-height: 17px;
	padding-right: 1px;
	border: 0;
	font-size: 14px;
	-webkit-appearance: none;
	resize: none;
	box-sizing: border-box;
	background: transparent;
	color: var(- -skinTextColor);
	outline: 0;
}

.CommentWriter .comment_attach {
	position: relative;
}

.CommentWriter .register_box .replyWriteBtn {
	display: inline-block;
	min-width: 46px;
	height: 34px;
	line-height: 36px;
	font-size: 13px;
	color: #adb5bd;
	border-radius: 6px;
	box-sizing: border-box;
	font-weight: 900;
	text-align: center;
	vertical-align: top;
	background: white;
	border: 0;
}

.CommentWriter .register_box {
	float: right;
}

/*별점*/

.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio+label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 30px;
    height: 30px;
    background-image: url(img/certification/star.png);
    background-repeat: no-repeat;
    background-size: 30px 30px;
    cursor: pointer;
    background-color: #f0f0f0;
}

.rating .rate_radio:checked+label {
	background-color: #ffd400;
}

.site-btn-2 {
	color: #ffffff;
	background: #e7ab3c;
	border: 1px solid #e7ab3c;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	padding: 11px 30px 11px;
	margin: 0 350px;
	cursor: pointer;
}

.mainsimg img {
	width: 400px;
	height: 400px;
	border-radius: 30px 30px 30px 30px;
	border: 1px solid #ebebeb;
}

.tgrid-image {
	display: flex;
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

.grid-image p {
	width: 249px;
	background-color: green;
	color: white;
	top: 249px;
	position: absolute;
	right: 1px;
	text-align: center;
	border-radius: 0 0 30px 30px; @import
	url('https://fonts.googleapis.com/icon?family=Material+Icons') ;
	.dropdown-label {
	font-size: 12px;
	margin: 10px;
	font-weight: bold;
	color: rgb(50, 50, 50);
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropbtn_icon {
	font-family: 'Material Icons';
}

.dropbtn {
	display: block;
	border: 2px solid rgb(94, 94, 94);
	border-radius: 4px;
	background-color: #fcfcfc;
	font-weight: 400;
	color: rgb(124, 124, 124);
	padding: 12px;
	width: 240px;
	text-align: left;
	cursor: pointer;
	font-size: 12px;
	z-index: 1;
	position: relative;
}

.dropdown-content {
	display: none;
	font-weight: 400;
	background-color: #fcfcfc;
	min-width: 240px;
	border-radius: 8px;
	height: 160px;
	overflow: scroll;
	box-shadow: 0px 0px 10px 3px rgba(190, 190, 190, 0.6);
}

.dropdown-content::-webkit-scrollbar {
	width: 5px;
	height: 10px;
}

.dropdown-content::-webkit-scrollbar-thumb {
	border-radius: 2px;
	background-color: rgb(194, 194, 194)
}

.dropdown-content div {
	display: block;
	text-decoration: none;
	color: rgb(37, 37, 37);
	font-size: 12px;
	padding: 12px 20px;
}

.dropdown-content div:hover {
	background-color: rgb(226, 226, 226);
}

.dropdown-content.show {
	display: block;
	input: focus, select:focus, button:focus, textarea:focus{ 
	outline: none;
}

a:hover, a:focus {
	text-decoration: none;
	outline: none;
	color: #fff;
}

ul, ol {
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
						<a href="/home_main"><i class="fa fa-home"></i>Main</a> 
						<a href="./shop.html">Categories</a> <span>Detail</span>
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
									<h3>
										<c:out value="${challenge.challengetitle}" />
									</h3>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i> <span>(5)</span>
								</div>
								<hr>

								<div class="dropdown">
									<button class="dropbtn">
										 <span
											class="dropbtn_content" style="font-size: 15px;"><c:out value="${challenge.challengetitle}" /></span> <span
											class="dropbtn_click"
											style="font-family: Material Icons; font-size: 16px; color: #3b3b3b; float: right;"
											onclick="dropdown()">▼</span>
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
								<br>
								<br>
								<div class="pd-desc">

									<h4>
										<c:out value="${challenge.deposit }" />원
									</h4>
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
												<h3 style="margin-bottom: 23px;">소개글</h3>
												
												
												<p>
													<c:out value="${challenge.challengeintro }" />
												</p>
											</div>
											<div class="maps">
											<input type="hidden" name="onoffchoice" id="onoff" value="${challenge.onoffchoice }">
											<div id="map" style="width:350px;height:300px;right:105px;"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-2" role="tabpanel">
									<div class="product-content">
										<div class="row">
											<div class="col-lg-7">
												<h3 style="margin-bottom: 23px;">주의사항</h3>
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
											<div class="grid-image">
												<img src="img/certification/X-2.jpg">
												<p style="background-color: red;">X</p>
											</div>
										</div>
									</div>

								</div>

								<div class="tab-pane fade" id="tab-4" role="tabpanel">
									<div class="customer-review-option">
										<h4>후기</h4>
										<div class="comment-option">
										 <c:forEach items="${comment}" var="comment">
											<div class="co-item">
												<div class="avatar-pic">
													<img src="img/product-single/avatar-1.png" alt="">
												</div>
												<div class="avatar-text">
												
													<div class="at-rating">
														<c:if test="${comment.rating eq 1 }">
														<i style="font-size: 20px;">★</i>
														</c:if>
														<c:if test="${comment.rating eq 2 }">
														<i style="font-size: 20px;">★★</i>
														</c:if>
														<c:if test="${comment.rating eq 3 }">
														<i style="font-size: 20px;">★★★</i>
														</c:if>
														<c:if test="${comment.rating eq 4 }">
														<i style="font-size: 20px;">★★★★</i>
														</c:if>
														<c:if test="${comment.rating eq 5 }">
														<i style="font-size: 20px;">★★★★★</i>
														</c:if>
													</div>
													
													<h5>
														<c:out value="${comment.memberid }"/> <span><fmt:formatDate value="${comment.reg_date }"  pattern="yyyy-MM-dd"/></span>
													</h5>
													<div class="at-reply"><c:out value="${comment.content }"/></div>
												</div>
											</div>
											</c:forEach>
										</div>
										<hr>
										<button type="submit" class="site-btn-2">후기 더보기</button>
										<br>
										<br>
										<div class="CommentWriter">
										<form name="reviewform" class="reviewform" method="post">
										<input type="hidden" id="challengeno" name="challengeno" value="${challenge.challengeno }"/>
											<div class="comment_inbox">
												<em class="comment_inbox_name"><c:out value="${challenge.memberid}"/><input type="hidden" id="memberid" name="memberid" value="${challenge.memberid }"></em>
											</div>
											
											<div class="rating" style="position: relative; height: 20px; bottom: 36px; left: 60px;">
													<!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
													<input type="hidden" name="rating" id="ratings" value=""> 
													<input type="checkbox"  id="rating1" value="1" class="rate_radio" title="1점">
														 <label for="rating1"></label> 
												 	<input type="checkbox"  id="rating2" value="2" class="rate_radio" title="2점">
														<label for="rating2"></label> 
													<input type="checkbox"  id="rating3" value="3" class="rate_radio" title="3점"> 
														<label for="rating3"></label> 
													<input type="checkbox"  id="rating4" value="4" class="rate_radio" title="4점"> 
														<label for="rating4"></label> 
													<input type="checkbox"  id="rating5" value="5" class="rate_radio" title="5점"> 
														<label for="rating5"></label>
											</div>
							
											<div class="comment_text">
											<textarea placeholder="후기를 남겨보세요" rows="1"
												class="comment_inbox_text" name="content"
												style="overflow: hidden; overflow-wrap: break-word; height: 20px;"></textarea>
											</div>
											<div class="comment_attach">
											<div class="register_box">
												<button type="button" class="replyWriteBtn" >등록</button>
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
	
	
<!-- 등록버튼 --> 
<script>

/*댓글 등록, 별점 */
$(".replyWriteBtn").on("click", function(e){
	
	var formObj = $("form[name='reviewform']");

	  formObj.attr("action", "/replyWrite");
	  formObj.submit();
	});
    
$(".rate_radio").on("click",function(){
	let ratingEle = $(this).val(); 
	$("#ratings").val(ratingEle);
	});
 
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=617c64aeafcfa7bd484ea2b0d79f230b"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

</script>


<script type="text/javascript">
//온라인 지도 안보이게 , 오프라인 지도 보이게 하기



if($("#onoff").val() == "OFF" ){
	$("#map").hide();
}else{
	$("#map").show();
}


</script>

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
	<script src="js/reply.js"></script>
</body>
<!-- footer -->
<%@include file="./include/footer.jsp"%>
</html>