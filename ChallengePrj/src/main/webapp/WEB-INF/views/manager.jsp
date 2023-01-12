<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
table {
	border-collapse: collapse;
	border-spacing: 0;
	text-align: center;
}

.list-table {
	font-size: 14px;
	margin-left: 50px;
	margin-top: 50px;
	width: 90%;
	border-top: 3px solid lightgray;
	border-bottom: 3px solid lightgray;
}

.list-table .th-num{
	width: 100px;
}

.list-table th {
	width: 250px;
}

.list-table th, .list-table td {
	padding: 12px 0;
}

.list-table tbody td {
	padding-left: 20px;
	padding-right: 12px;
	border-top: 2px solid lightgray;
}
</style>
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
				<div class="recent-post">
					<h4>환급요청 목록</h4>
					<table class="list-table">
						<thead>
							<tr>
								<th scope="col" class="th-num"></th>
								<th scope="col">이 메 일</th>
								<th scope="col">은 행 명</th>
								<th scope="col">예 금 주</th>
								<th scope="col">계좌번호</th>
								<th scope="col">금 액</th>
								<th scope="col">신청날짜</th>
								<th scope="col">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty list }">
									<tr>
										<td colspan="7" align="center">------ 요청 목록이 없습니다. ------</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list }" var="dto">
										<tr>
											<td>${dto.pointno }</td>
											<td>${dto.memberid }</td>
											<td>${dto.bankname }</td>
											<td>${dto.accountholder }</td>
											<td>${dto.accountnumber }</td>
											<td>${dto.withdrawpoint }</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${dto.pointdate }"/></td>
											<td>${dto.status }</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
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