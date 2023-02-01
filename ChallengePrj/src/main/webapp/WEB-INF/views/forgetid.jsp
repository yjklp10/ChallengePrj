<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">


<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script type="text/javascript">
	function forgetID(){
		$("#forget").attr("name","name").attr("placeholder","이름")
		$("#inputID").attr("class","active")
		$("#inputPW").attr("class","")
	}
	function forgetPW(){
		$("#forget").attr("name","userid").attr("placeholder","아이디")
		$("#inputID").attr("class","")
		$("#inputPW").attr("class","active")
	}
</script>
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
	<link rel="stylesheet" href="css/mystyle.css" type="text/css">
</head>

<body>
   <%@include file="./include/header.jsp" %>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>아이디/비밀번호 찾기</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>아이디/비밀번호 찾기</h2>
                        <form action="#">
                            <div class="con">
                            	<div class="tab-cont">
                            	<br><br>
                            		<strong class="cont-txt" style="margin-left:105px ;font-size:25px;">회원님의 아이디는 ${memberid }입니다</strong>
                            		<br><br><br>
                            		 <a type="button" class="site-btn register-btn" href="forget.do" style="width:48%; text-align:center;">비밀번호 찾기</a>
                            		 <a type="button" class="site-btn register-btn" href="loginform.do" style="width:48%; text-align:center;" >로그인하기</a>
                            	</div>
                            </div>
                        </form>
                        <div class="switch-login">
                            <a href="login.do" class="or-login">Or Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
<%@include file="./include/footer.jsp" %>

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