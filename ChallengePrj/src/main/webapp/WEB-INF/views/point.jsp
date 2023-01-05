<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
.blog-sidebar .blog-catagory .blog-btn {

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
.blog-sidebar .blog-catagory .group-input p{
	margin-left: 150px;
	font-size: 13px;
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
	$(".cancel-btn").click(function (){
  	$(".cancel-div").toggle();
  	$(".cancel-btn").toggle();
  });
});

$(function (){
	$(".cancel-btn2").click(function (){
  	$(".cancel-div2").toggle();
  	$(".cancel-btn2").toggle();
  	$(".group-input p").toggle();
  });
});

$(function (){
	$(".no-btn").click(function (){
  	$(".cancel-div").toggle();
  	$(".cancel-btn").toggle();
  });
});

$(function (){
	$(".no-btn2").click(function (){
  	$(".cancel-div2").toggle();
  	$(".cancel-btn2").toggle();
  	$(".group-input p").toggle();
  });
});


</script>

</head>

<body>
    <!-- Page Preloder -->

    <!-- Header Section Begin -->
    
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->

    <!-- Breadcrumb Section Begin -->

    <!-- Blog Section Begin -->
	<section class="blog-section spad">
		<div class="container">
			<div class="blog-sidebar">
				<div class="blog-catagory">
					<h4>예치금 및 포인트</h4>
					<form action="#">
						<div class="group-input">
							<label for="deposit">예치금</label> 
							<input id="deposit" type="text" disabled><br>
							<button type="button" class="cancel-btn">환급신청</button>
							<div class="cancel-div">
								<c:choose>
									<c:when test="${empty list }">
									------ 예치금이 없습니다. ------ <br>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list }" var="dto">
											<label class="checkbox"> 
											<input type="checkbox" name="color" value="blue">
												 현대카드 50,000 날짜 <br>
											</label>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<button type="submit" class="ok-btn">환급신청</button>
								<button type="button" class="no-btn">취소</button>
							</div>
						</div>
					</form>
					<form action="/point.do" method="post">
  					 <input type="hidden" name="memberid" value="${dto.memberid }">
    				 <input type="hidden" name="point" value="${dto.point}" >
						<div class="group-input">
							<label for="point">포인트</label> <input id="point" type="text" disabled><br>								
							<P>포인트는 3000원 이상부터 출금 가능해요.</P>
							<button type="button" class="cancel-btn2">출금신청</button>
							<div class="cancel-div2">
								<label for="withdrawpoint">출금포인트</label> 
								<input id="withdrawpoint" type="text" name="withdrawpoint"><br> 
								
								<label for="bankname">은행명</label>									
								<input id="bankname" type="text" name="bankname"><br> 
								
								<label for="accountHolder">예금주</label>
								<input id="accountHolder" type="text" name="accountholder"><br>
									
								<label for="accountNumber">계좌번호</label> 
								<input id="accountNumber" type="text" name="accountnumber"><br>
								
								<button type="submit" class="ok-btn2">출금신청</button>
								<button type="button" class="no-btn2">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- Blog Section End -->

				<!-- Partner Logo Section Begin -->

				<!-- Partner Logo Section End -->

				<!-- Footer Section Begin -->

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