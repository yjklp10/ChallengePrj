<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@include file="include/header.jsp"%>
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
    .payment{
	display:flex;
}
.paymentimg{
	margin: 10px 160px;
    position: relative;
}
.paymentimg img {
	width: 300px;
    height: 300px;
    border-radius: 30px 30px 30px 30px;
    border: 1px solid #ebebeb; 
}
.payments{
	margin: 20px 10px;
	padding: 20px 10px;
	text-align: center;
    line-height: 10px; 
}
.payment-1 p{
	width: 300px;
    height: 50px;
    border-radius: 30px 30px 30px 30px;
    border: 1px solid #ebebeb;
    text-align: center;
    line-height: 50px; 
    background-color: #8B00FF;
    color: white;
}
.payment-1 a{
	text-align: center;
	line-height: 50px;
	font-size: 20px;
}

.money p{
	text-align:center;
	font-size: 30px;
}
.moneys{
	display:flex;
}
.moneybut-1{
	margin: 10px 70px;
    position: relative;
}
.moneybut-1 button{
	width: 150px;
	height: 50px;
	border-radius: 30px 30px 30px 30px
}
.guide{
	margin: 10px 150px
}
.guide p{
	width:900px;
	height:400px;
	border:1px solid black;
	font-size: 25px;
	text-align: center;
	line-height: 70px;
}
#selected button{ background:red }

.buy #buys{
background:black; 
color:white;
margin: 0 70px;
position: relative;
left: 400px;
width: 300px;
height: 50px;
}

    
    </style>
</head>

<body>
   

    

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog-details-inner">
                        <div class="blog-detail-title">
                            <h2>참가하기</h2>
                        </div>
                        <hr>
                        <div class="payment">
                        <div class="paymentimg">
                            <img src="img/certification/X-3.jpg" alt="">
                        </div>
                        <div class="payments">
                        <div class="payment-1">
                            <p>챌린지 이름</p>
                            <a><c:out value="${payment.challengetitle }"/></a>
                        </div>
                        <br><br>
                        <div class="payment-1">
                        	<p>챌린지 기간</p>
                        	<a>12-22(월)~12-26(월)</a>
                        </div>
                        </div>
                        </div>
                        <hr><br>
                        <div class="deposit">
                        	<h3>예치금</h3>
                        </div>
                        <br><br>
                        <div class="money">
                        	<p class="payname"><c:out value="${payment.deposit }"/>원</p>
                        </div>
                        <hr>
                        <div class="moneys">
                        <div class="moneybut-1">
                        	<button id="pay1">10,000원</button>
                        </div>
                        <div class="moneybut-1">
                        	<button id="pay2">20,000원</button>
                        	</div>
                        	<div class="moneybut-1">
                        	<button id="pay3">30,000원</button>
                        	</div>
                        <div class="moneybut-1">
                        	<button id="pay4">40,000원</button>
                        </div>
                        </div>
                        <br><br>
                        <div class="guide">
                        	<p>주의사항</p>
                        	
                        </div>
                        <br><br><br>
                        <div class="buy">
                        	<button id="buys"><c:out value="${payment.deposit }"/>충전하기</button>
                        </div>
                   </div>     
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    

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
    
    <script>
    $(document).ready(function () {
        $(".moneybut-1").each(function () {
            $(this).click(function () {
                $(this).attr('id','selected');                      //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
                $(this).siblings().removeAttr('id','selected');  //siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
            });
        });
    });

	$("#pay1").click(function(){
		$(".payname").text("10000원");
		$("#buys").text("10000원 충전하기");
	});
	$("#pay2").click(function(){
		$(".payname").text("20000원");
		$("#buys").text("20000원 충전하기");
	});
	$("#pay3").click(function(){
		$(".payname").text("30000원");
		$("#buys").text("30000원 충전하기");
	});
	$("#pay4").click(function(){
		$(".payname").text("40000원");
		$("#buys").text("40000원 충전하기");
	});
   
    	
    </script>
</body>
<!-- footer -->
<%@include file="./include/footer.jsp"%>
</html>