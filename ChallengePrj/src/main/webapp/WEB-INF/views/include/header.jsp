<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="X-UA-Compatible" content="ie=chrome">
    
    <title>작심백일</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/main_detail.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    

</head>
<body>

 <!-- Header Section Begin -->
    <header class="header-section">

    	<sec:authorize access="isAnonymous()">
	        <div class="header-top">
	            <div class="container">
	                <div class="ht-right">
	                    <span class="login-panel">
	                    <img src="img/백일블럭2.png"> <a href="loginform.do">로그인 </a>/ <a href="registerform.do">회원가입</a>
	                </div>
	            </div>
	        </div>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
	        <div class="header-top">
	            <div class="container">
	                <div class="ht-right">
	                    <span class="login-panel">
	                    <img src="img/백일블럭2.png"><a href="/mypage">마이페이지</a> / <a href="/logout">로그아웃</a>
	                </div>
	            </div>
	        </div>
        </sec:authorize>
        <%-- <sec:authorize access="hasRole(ROLE_ADMIN)">
	        <div class="header-top">
	            <div class="container">
	                <div class="ht-right">
	                    <span class="login-panel">
	                    <img src="img/백일블럭2.png"> <a href="">관리자페이지</a><a href="/logout">로그아웃</a>
	                </div>
	            </div>
	        </div>
        </sec:authorize> --%>

        <div class="container">
            <div class="inner-header">
                <div class="row">
                        <div class="logo">
                            <a href="home_main">
                                <img src="img/logo2.png">
                            </a>
                        </div>
                        <div class="advanced-search">
                        	<form action="detaillist_search" method="GET">
                            <div class="input-group">
                                <input type="text" name="keyword" placeholder="챌린지 검색">
                                <button type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                </svg>
                                </button>
                            </div>
                            </form>
                        </div>
                    </div>
                      
                    </div>
                </div>
            </div>

        <div class="nav-item">
            <div class="container">
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="home_main">Home</a></li>
                        <li class="top-menu"><a href="#">정보</a>
                            <ul class="dropdown">
                                <li><a href="#">소개</a></li>
                                <li><a href="#">공지사항</a></li>
                                <li><a href="#">가이드</a></li>
                                <li><a href="#">이벤트</a></li>
                            </ul>
                        </li>
                      	<li class="top-menu"><a href="detaillist">작심백일!</a>
                            <ul class="dropdown">
                                <li><a href="detaillist">신규</a></li>
                                <li><a href="detaillist_hot">인기</a></li>
                                <li><a href='detaillist_onofflist?onoffchoice=온라인'>온라인</a></li>
                                <li><a href='detaillist_onofflist?onoffchoice=오프라인'>오프라인</a></li>
                                <li><a href='detaillist_category?category=운동'>운동</a></li>
                                <li><a href='detaillist_category?category=공부'>공부</a></li>
                                <li><a href='detaillist_category?category=취미'>취미</a></li>
                                <li><a href='detaillist_category?category=규칙적인 생활'>규칙적인 생활</a></li>
                            </ul>
                        </li>
                        <li class="top-menu"><a href="#">MY 챌린지</a>
                            <ul class="dropdown">
                                <li><a href="makingChallengeStart">개설하기</a></li>
                                 <li><a href="uploadAjax">인증하기</a></li>
                                <li><a href="payment">포인트</a></li>
                            </ul>
                        </li>
                    </ul>
                   
                </nav>
            </div>
        </div>
        <div class="hr">
        <hr size="5" color="gray" padding-top="-10">
        </div>
        
        
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
        

    </header>
     <!-- Header End -->
