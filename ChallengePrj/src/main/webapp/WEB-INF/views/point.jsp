<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

function pointChk(){
	
	var a = document.withdraw.withdrawpoint.value
	
	if(isNaN(a)){
		alert("?????????????????? ????????? ??????????????????.")
		return false;
	}else if(a<"3000"){
		alert("3000????????? ?????????????????????.")
		return false;
	}else if(a>'${dto.mypoint}'){
		alert("?????????????????? ??????????????????.")
		return false;
	}else if(document.withdraw.bankname.value==""){
		alert("???????????? ??????????????????.")
		return false;
	}else if(document.withdraw.accountHolder.value==""){
		alert("???????????? ??????????????????.")
		return false;
	}else if(document.withdraw.accountNumber.value==""){
		alert("??????????????? ??????????????????.")
		return false;		
	}else{
		alert("???????????? ??????!!")
		return true;
	}
};



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
					<h4>????????? ??? ?????????</h4>
					<form action="/deposit.do" method="post">
  					 <input type="hidden" id="memberid" name="memberid" value="${dto.memberid }">
    				 <input type="hidden" name="mydeposit" value="${dto.mydeposit}" >
						<div class="group-input">
							<label for="deposit">?????????</label> 
							<input id="mydeposit" name="mydeposit" type="text" value="${dto.mydeposit}" disabled><br>
						<!--	<button type="button" class="cancel-btn">????????????</button>
						  	<div class="cancel-div">
								<c:choose>
									<c:when test="${0 eq dto.mydeposit}">
									------?????? ?????? ????????? ???????????? ????????????. ------ <br>
									</c:when>
									<c:otherwise>
											<label class="checkbox"> 
											<input type="checkbox" name="color" value="blue">
												 ???????????? 50,000 ?????? <br>
											</label>
									</c:otherwise>
								</c:choose>
								<button type="submit" class="ok-btn">????????????</button>
								<button type="button" class="no-btn">??????</button>
							</div>-->
						</div>
					</form>
					<form action="/point.do" method="post" name="withdraw" onsubmit="return pointChk()">
  					 <input type="hidden" id="memberid" name="memberid" value="${dto.memberid }">
    				 <input type="hidden" name="mypoint" value="${dto.mypoint}" >
						<div class="group-input">
							<label for="point">?????????</label> <input id="mypoint" name="mypoint" type="text" value="${dto.mypoint}" disabled><br>								
							<P>???????????? 3000??? ???????????? ?????? ????????????.</P>
							<button type="button" class="cancel-btn2">????????????</button>
							<div class="cancel-div2">
								<label for="withdrawpoint">???????????????</label> 
								<input id="withdrawpoint" type="text" name="withdrawpoint"><br> 
								
								<label for="bankname">?????????</label>									
								<input id="bankname" type="text" name="bankname"><br> 
								
								<label for="accountHolder">?????????</label>
								<input id="accountHolder" type="text" name="accountholder"><br>
									
								<label for="accountNumber">????????????</label> 
								<input id="accountNumber" type="text" name="accountnumber"><br>
								
								<button type="submit" class="ok-btn2">????????????</button>
								<button type="button" class="no-btn2">??????</button>
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