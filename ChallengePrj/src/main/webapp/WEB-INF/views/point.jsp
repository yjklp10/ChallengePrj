<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
				<!--<form action="#">  -->
						<div class="group-input">
							<label for="deposit">예치금</label> 
							<input id="deposit" type="text" disabled><br>
							<button class="cancel-btn">환급신청</button>
							<div class="cancel-div">
							 <label class="checkbox">
							 <input type="checkbox" name="color" value="blue"> 
							 현대카드 
							 50,000원 
							 2022.10.21
							</label><br>
								<button class="ok-btn">환급신청</button>
								<button class="no-btn">취소</button>
							</div>
						</div>
						<div class="group-input">
							<label for="point">포인트</label> 
							<input id="point" type="text" disabled><br>
							<P>포인트는 3000원 이상부터 출금 가능해요.</P>
							<button class="cancel-btn2">출금신청</button>
							<div class="cancel-div2">
								<label for="withdraw">출금포인트</label> 
								<input id="withdraw" type="text"><br>						
								<label for="deposit">은행명</label> 
								<input id="deposit" type="text"><br>
								<label for="deposit">예금주</label> 
								<input id="deposit" type="text"><br>
								<label for="deposit">계좌번호</label> 
								<input id="deposit" type="text"><br>
								<button class="ok-btn2">출금신청</button>
								<button class="no-btn2">취소</button>
							</div>
						</div>
				<!--</form>-->
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