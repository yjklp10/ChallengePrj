<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="ko">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script type="text/javascript">


	
$(function(){
	$('#memberpwnew').keyup(function(){
		$('#pwchk').text('');
	}); 
	$('#memberpwchk').keyup(function(){
		if($('#memberpwnew').val()!=$('#memberpwchk').val()){
			$('#pwchk').html("비밀번호가 일치하지 않습니다.").css("display","flex").css("color","#f23c3c").attr("title","nchk");
		}else{
			 $('#pwchk').html("비밀번호가 일치합니다.").css("display","flex").css("color","#008000").attr("title","ychk");
		}
	}); 
	         
});

function overlap_chk(){
	
	let pwchk = document.getElementById("pwchk").title;
	
	
	if(pwchk == "nchk"){
		alert("비밀번호가 일치하지 않습니다");
		document.getElementById("memberpwchk").focus();
		return false;
	}
	
	
}
	

</script>
<style>
	#pwchk{
		display:none;
		color: red;
		float: right;
		font-size: 18px;
	}
	.id_use_chk,
	.nick_use_chk{
		display:none;
		color:#008000;
		font-size: 18px;
	}
</style>

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
                        <span>Register</span>
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
                        <h2>회원가입</h2>
                        <form method="post" onsubmit="return overlap_chk()" action="updatepw">
                        <sec:authentication property="principal.username" var="memberid"/>
                        	<input type="hidden" id="memberid" name="memberid" value="${memberid }">
                        	
                            
                             <div class="group-input">
                                <label for="nick">현재 비밀번호</label>
                                <input type="password" name="memberpw" id="memberpw"  required="required">
                             
                              
                            </div>
                              <div class="group-input">
                                <label for="pass">새 비밀번호 </label>
                                <input type="password" class="form-control" name="memberpwnew" id="memberpwnew" required="required">
                            </div>
                            <div class="group-input">
                                <label for="passch">새 비밀번호 확인 *</label>
                                <input type="password" class="form-control" name="memberpwchk" id="memberpwchk" required="required">
                                <span id="pwchk"></span>
                            </div>
                             
                            <button type="submit" onclick="overlap_chk()" class="site-btn register-btn">비밀번호 변경</button>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
    <%@include file="./include/footer.jsp" %>
    <!-- Partner Logo Section Begin -->
    
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