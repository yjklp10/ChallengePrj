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
	height:420px;
	border:1px solid black;
	font-size: 25px;
	text-align: center;
	line-height: 70px;
}

.guide h2{
     text-align: center
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
.money {
	position: relative;
	margin-bottom: 10px;
}
.paydepoite{
overflow-x: hidden;
    overflow-y: auto;
    display: block;
    width: 150px;
    min-height: 17px;
    padding-right: 1px;
    border: white;
    font-size: 25px;
    -webkit-appearance: none;
    resize: none;
    box-sizing: border-box;
    background: transparent;
    color: var(- -skinTextColor);
    outline: 0;
    margin: 0 550px -30px;
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
                        <input type="hidden" id="memberid" name="memberid" value="${payment.memberid }">
                        <div class="paymentimg">
                            <img src="${pageContext.request.contextPath }/static2/thumb/${payment.thumbnailname }">
                        </div>
                        <div class="payments">
                        <div class="payment-1">
                            <p>챌린지 이름</p>
                            <a><c:out value="${payment.challengetitle }"/></a>
                        </div>
                        <br><br>
                        <div class="payment-1">
                        	<p>챌린지 기간</p>
                        	<a><c:out value="${payment.challengestartdate }"/>~<c:out value="${payment.challengeenddate }"/></a>
                        </div>
                        </div>
                        </div>
                        <hr><br>
                        <div class="deposit">
                        	<h3>예치금</h3>
                        </div>
                        <br><br>
                        <div class="money">
                        	<textarea class="paydepoite" id="depoite" name="depoite" cols="100">10000원</textarea>
                        </div>
                        <hr>
                        <div class="moneys">
                        <div class="moneybut-1">
                        	<button class="pay" id="pay1">10000원</button>
                        </div>
                        <div class="moneybut-1">
                        	<button class="pay" id="pay2">30000원</button>
                        	</div>
                        	<div class="moneybut-1">
                        	<button class="pay" id="pay3">50000원</button>
                        	</div>
                        <div class="moneybut-1">
                        	<button class="pay" id="pay4">100000원</button>
                        </div>
                        </div>
                        <br><br>
                        <div class="guide">
                        	<h2>환불정책</h2><br>
                        	<p>1.챌린지 시작 전까지 100% 환불<br>
                        		챌린지가 시작되기 전까지 신청한 챌린지를 자유롭게 취소할 수 있습니다.<br><br>
                        		2.챌린지 시작 후 취소 불가<br>
                        		챌린지에는 여러 회원님들이 함께 하는 대회인만큼,<br> 챌린지 시작후에는 환불이 불가능합니다.
                        	</p>
                        </div>
                        
                        <br><br><br>
                        <div class="buy">
                        	<button type="button" id="buys" onclick="requestPay()">10,000원 충전하기</button>
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
 <!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    
    <script>
    
    
    
    /** 버튼 색 변경 및 텍스트 변경**/
    $(document).ready(function () {
        $(".moneybut-1").each(function () {
            $(this).click(function () {
                $(this).attr('id','selected');                      //클릭된 부분을 상단에 정의된 CCS인 selected클래스로 적용
                $(this).siblings().removeAttr('id','selected');  //siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
            });
        });
    });

    
	$("#pay1").click(function(){
		$("#depoite").text("10000원");
		$("#buys").text("10000원 충전하기");
	});
	$("#pay2").click(function(){
		$("#depoite").text("30000원");
		$("#buys").text("30000원 충전하기");
	});
	$("#pay3").click(function(){
		$("#depoite").text("50000원");
		$("#buys").text("50000원 충전하기");
		
	});
	$("#pay4").click(function(){
		$("#depoite").text("100000원");
		$("#buys").text("100000원 충전하기");

	});
	
	
	
	
   
    
    
    
    
    
    
    /** 결제api **/
    // 결제금액,  구매자 이름, 챌린지 이름
    
    	var money = $("#depoite").val();
    	
        var title = "${payment.challengetitle }";
        var  id = $("#memberid").val();
        
        console.log(money);
        console.log(title);
        console.log(id);
    
    var IMP = window.IMP; 
    IMP.init("imp56247621"); 
    
  function requestPay() {
    IMP.request_pay({
      pg: "kakaopay",
      pay_method: "card",
      merchant_uid: 'merchant_' + new Date().getTime(),   // 주문번호
      buy_id: id,
      name: title,
      amount: money                        // 숫자 타입
      
    }, function (rsp) { // callback
      if (rsp.success) {
    	 console.log("발령키 발급 성공", rsp)
        // 결제 성공 시 로직
        alert("결제 성공");
    	 location.href = "/mypage"
      } else {
        // 결제 실패 시 로직
        var msg = "결제 실패";
        msg += rsp.error_msg;
        alert(msg);
        return false;
      }
    });
  }
  </script>
</body>
<!-- footer -->
<%@include file="./include/footer.jsp"%>
</html>