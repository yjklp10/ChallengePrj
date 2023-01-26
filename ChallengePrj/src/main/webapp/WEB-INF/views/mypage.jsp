<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

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
.blog-sidebar .blog-catagory .group-input label {
	width: 150px;
	font-size: 16px;
	color: #636363;
	margin-bottom: 13px;
}
.blog-sidebar .blog-catagory .group-input input {
	border: 1px solid #ebebeb;
	height: 40px;
	width: 300px;
	padding-left: 20px;
	padding-right: 15px;
}
.blog-sidebar .blog-catagory .group-input .checkbox {
	font-size: 16px;
	width: 400px;
}
.blog-sidebar .blog-catagory .group-input .checkbox input{
	height: 20px;
	width: 20px;
	margin-top :5px;
	margin-right :5px;
}
.blog-sidebar .blog-catagory .blog-btn, .blog-btn1{

	letter-spacing: 2px;
	margin-top: 15px;
	color: #ffffff;
	background: #e7ab3c;
	border: 1px solid #e7ab3c;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	padding: 11px 30px 11px;
	cursor: pointer;
}
.blog-sidebar .managerpage .blog-btn {

	letter-spacing: 2px;
	margin-top: 15px;
	color: #ffffff;
	background: #e7ab3c;
	border: 1px solid #e7ab3c;
	font-size: 14px;
	font-weight: 700;
	text-transform: uppercase;
	padding: 11px 30px 11px;
	cursor: pointer;
}


.blog-sidebar .blog-catagory .group-input .cancel-btn,
.blog-sidebar .blog-catagory .group-input .cancel-btn2,
.blog-sidebar .blog-catagory .group-input .ok-btn2,
.blog-sidebar .blog-catagory .group-input .no-btn2,
.blog-sidebar .blog-catagory .group-input .ok-btn,
.blog-sidebar .blog-catagory .group-input .no-btn   {
	letter-spacing: 2px;
	margin-top: 10px;
	margin-bottom: 10px;
	color: #ffffff;
	background: #e7ab3c;
	border: 1px solid #e7ab3c;
	font-size: 13px;
	font-weight: 500;
	text-transform: uppercase;
	padding: 10px 20px 10px;
	cursor: pointer;
}
.blog-sidebar .blog-catagory .group-input .cancel-div,
.blog-sidebar .blog-catagory .group-input .cancel-div2{
	display: none;
}

</style>
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

$(function (){
	$(".blog-btn1").click(function (){
		alert("수정완료.");
	});
});
</script>

</head>

<body>
    <!-- Page Preloder -->

    <!-- Header Section Begin -->
    <%@include file="./include/header.jsp" %>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->

    <!-- Breadcrumb Section Begin -->

    <!-- Blog Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="blog-sidebar">
				<div class="blog-catagory">
					<h4>회원정보</h4>
						<form action="update" method="post">
						<input type="hidden" id="memberid" name="memberid" value="${dto.memberid }">
						<div class="group-input">
							<label for="membername">이름</label> 
							<input id="membername" name="membername" type="text" value="${dto.membername  }" disabled>
						</div>
						<div class="group-input">
							<label for="memberid">아이디</label> 
							<input id="memberid" name="memberid" type="text" value="${dto.memberid }" disabled>
						</div>
						<div class="group-input">
							<label for="membernick">닉네임</label> 
							<input id="membernick" name="membernick" type="text" value="${dto.membernick }">
						</div>
						<div class="group-input">
							<label for="membereail">이메일</label> 
							<input id="memberemail" name="memberemail" type="text" value="${dto.memberemail }">
						</div>
						<div class="group-input">
							<label for="memberphone">전화번호</label> 
							<input id="memberphone" name="memberphone" type="text" value="${dto.memberphone  }">
						</div>
						<div class="group-input">
							<label for="deposit">예치금</label> 
							<input id="deposit" name="deposit" type="text" value="${dto.mydeposit }" disabled>
						</div>
						<div class="group-input">
							<label for="point">포인트</label> 
							<input id="point" name="point" type="text" value="${dto.mypoint }" disabled>
						</div>
						<button type="submit" class="blog-btn1" >수정하기</button>
						<button type="button" class="blog-btn" onclick="location.href='/point?memberid=${dto.memberid }'">환급신청</button>
					</form>
				</div>
				<div class="recent-post">
					<h4>챌린지 현황</h4>
					<div class="recent-blog">
						<c:choose>
							<c:when test="${empty chlist }">
								------참여한 챌린지가 없습니다. ------ <br>
							</c:when>
							<c:otherwise>
								<a href="#" class="rb-item">
								<div class="rb-pic">
								<img src="img/blog/recent-1.jpg" alt="">
								</div>
								<div class="rb-text">
								<h6>${dto.challengeintro }</h6>								
								<p>
									참여중 <span>${dto.challengstartdate}</span>
								</p>
								</div>
								</a> 
							</c:otherwise>	
						</c:choose>		
						 
						<a href="#" class="rb-item">
							<div class="rb-pic">
								<img src="img/blog/recent-2.jpg" alt="">
							</div>
							<div class="rb-text">
								<h6>1시간 독서하기</h6>
								<p>
								
									참여완료 <span>11.28-12.05</span>
								</p>
							</div>
						</a> 
					</div>
				</div>
				<div class="managerpage">
				<button type="button" class="blog-btn" onclick="location.href='/manager?memberrole=${dto.memberrole }'">관리자 페이지</button>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

    <!-- Partner Logo Section Begin -->
   
    <!-- Partner Logo Section End -->

    <!-- Footer Section Begin -->
	<%@include file="./include/footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>