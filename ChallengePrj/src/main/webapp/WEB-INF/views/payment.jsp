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
                            <h2>????????????</h2>
                        </div>
                        <hr>
                        <div class="payment">
                        <input type="hidden" id="memberid" name="memberid" value="${payment.memberid }">
                        <div class="paymentimg">
                            <img src="${pageContext.request.contextPath }/static2/thumb/${payment.thumbnailname }">
                        </div>
                        <div class="payments">
                        <div class="payment-1">
                            <p>????????? ??????</p>
                            <a><c:out value="${payment.challengetitle }"/></a>
                        </div>
                        <br><br>
                        <div class="payment-1">
                        	<p>????????? ??????</p>
                        	<a><c:out value="${payment.challengestartdate }"/>~<c:out value="${payment.challengeenddate }"/></a>
                        </div>
                        </div>
                        </div>
                        <hr><br>
                        <div class="deposit">
                        	<h3>?????????</h3>
                        </div>
                        <br><br>
                        <div class="money">
                        	<textarea class="paydepoite" id="depoite" name="depoite" cols="100">10000???</textarea>
                        </div>
                        <hr>
                        <div class="moneys">
                        <div class="moneybut-1">
                        	<button class="pay" id="pay1">10000???</button>
                        </div>
                        <div class="moneybut-1">
                        	<button class="pay" id="pay2">30000???</button>
                        	</div>
                        	<div class="moneybut-1">
                        	<button class="pay" id="pay3">50000???</button>
                        	</div>
                        <div class="moneybut-1">
                        	<button class="pay" id="pay4">100000???</button>
                        </div>
                        </div>
                        <br><br>
                        <div class="guide">
                        	<h2>????????????</h2><br>
                        	<p>1.????????? ?????? ????????? 100% ??????<br>
                        		???????????? ???????????? ????????? ????????? ???????????? ???????????? ????????? ??? ????????????.<br><br>
                        		2.????????? ?????? ??? ?????? ??????<br>
                        		??????????????? ?????? ??????????????? ?????? ?????? ???????????????,<br> ????????? ??????????????? ????????? ??????????????????.
                        	</p>
                        </div>
                        
                        <br><br><br>
                        <div class="buy">
                        	<button type="button" id="buys" onclick="requestPay()">10,000??? ????????????</button>
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
    
    
    
    /** ?????? ??? ?????? ??? ????????? ??????**/
    $(document).ready(function () {
        $(".moneybut-1").each(function () {
            $(this).click(function () {
                $(this).attr('id','selected');                      //????????? ????????? ????????? ????????? CCS??? selected???????????? ??????
                $(this).siblings().removeAttr('id','selected');  //siblings:???????????????,    removeClass:????????? ???????????? ????????? ??????
            });
        });
    });

    
	$("#pay1").click(function(){
		$("#depoite").text("10000???");
		$("#buys").text("10000??? ????????????");
	});
	$("#pay2").click(function(){
		$("#depoite").text("30000???");
		$("#buys").text("30000??? ????????????");
	});
	$("#pay3").click(function(){
		$("#depoite").text("50000???");
		$("#buys").text("50000??? ????????????");
		
	});
	$("#pay4").click(function(){
		$("#depoite").text("100000???");
		$("#buys").text("100000??? ????????????");

	});
	
	</script>
	
	
   
    
    
    
    
    
    <script>
    /** ??????api **/
    // ????????????,  ????????? ??????, ????????? ??????
    
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
      merchant_uid: 'merchant_' + new Date().getTime(),   // ????????????
      buy_id: id,
      name: title,
      amount: money                        // ?????? ??????
      
    }, function (rsp) { // callback
      if (rsp.success) {
    	 console.log("????????? ?????? ??????", rsp)
        // ?????? ?????? ??? ??????
        alert("?????? ??????");
    	 location.href = "/home_main"
      } else {
        // ?????? ?????? ??? ??????
        var msg = "?????? ??????";
        msg += rsp.error_msg;
        alert(msg);
        location.href = "/payment?challengeno='${challenge.challengeno}'";
      }
    });
  }
  </script>
</body>
<!-- footer -->
<%@include file="./include/footer.jsp"%>
</html>