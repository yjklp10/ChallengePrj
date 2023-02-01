<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script type="text/javascript">


	
	    
$(function(){
	$('#memberpw').keyup(function(){
		$('#pwchk').text('');
	}); 
	$('#memberpwchk').keyup(function(){
		if($('#memberpw').val()!=$('#memberpwchk').val()){
			$('#pwchk').html("비밀번호가 일치하지 않습니다.").css("display","flex").css("color","#f23c3c");
		}else{
			 $('#pwchk').html("비밀번호가 일치합니다.").css("display","flex").css("color","#008000");
		}
	}); 
	
	var id = sessionStorage.getItem('id');
	var email = sessionStorage.getItem('email');
	var gender = sessionStorage.getItem('gender');
	
	$("#memberid").attr('value',id);
	$("#memberemail").attr('value',email);
	$("#membergender").attr('value',gender);
	
	
	         
});

function id_overlap_chk(){
	let memberid = $("#memberid").val();
	$.ajax({
		data:{memberid:memberid},
		url:'idchk.do',
		type:'post',
		async:false,
		success:function(res){
			if(res == 0){
				$(".id_use_chk").css("display","flex");
				$(".id_use_chk").html("사용가능한 아이디입니다.")
				$("#memberid").attr("title","yid");
				
			}
			else if(res == 1){
				$(".id_use_chk").css("display","flex");
				$(".id_use_chk").html("이미 사용중인 아이디입니다.").css("color","#f23c3c");
				$("#memberid").attr("title","nid");
			}
		}
	})
}
	function nick_overlap_chk(){
	let membernick = $("#membernick").val();
	$.ajax({
		data:{membernick:membernick},
		url:'nickchk.do',
		type:'post',
		async:false,
		success:function(res){
			if(res == 0){
				$(".nick_use_chk").css("display","flex");
				$(".nick_use_chk").html("사용가능한 닉네임입니다.")
				$("#membernick").attr("title","ynick");
				
			}
			else if(res == 1){
				$(".nick_use_chk").css("display","flex");
				$(".nick_use_chk").html("이미 사용중인 닉네임입니다.").css("color","#f23c3c");
				$("#membernick").attr("title","nnick");
			}
		}
	})
}
	
	function overlap_chk(){
		let nickchk = document.getElementById("membernick").title;
		let idchk = document.getElementById("memberid").title;
		
		if(idchk == 'nid'){
			alert("아이디 중복체크를 해주세요");
			document.getElementById("memberid").focus();
			return false;
		}else if(idchk == 'yid' && nickchk == 'nnick'){
			alert("닉네임 중복체크를 해주세요");
			document.getElementById("membernick").focus();
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
                        <form method="post" onsubmit="return overlap_chk()" action="registerkakao.do">
                        	<input type="hidden" id="memberid" name="memberid" value="">
                        	<input type="hidden" id="memberpw" name="memberpw" value="카카오비밀번호">
                        	<input type="hidden" id="memberemail" name="memberemail" value="">
                        	<input type="hidden" id="membergender" name="membergender" value="">
                        	<input type="hidden" id="provider" name="provider" value="kakao">
                        	
                            
                             <div class="group-input">
                                <label for="nick">닉네임 *</label>
                                <input type="text" name="membernick" id="membernick" title="nnick" required="required">
                                <span class="nick_use_chk">사용가능한 닉네임입니다.</span>
                                
                                <input type="button" value="중복확인" onclick="nick_overlap_chk()" style="width: 100px;float: right;">
                            </div>
                             <div class="group-input">
                                <label for="name">이름 *</label>
                                <input type="text" class="form-control" name="membername" id="name" required="required">
                            </div>
                           
                             <div class="group-input">
                                <label for="tel">전화번호 *</label>
                                <input type="tel" name="memberphone" id="memberphone" required="required">
                            </div>
                             
                            <button type="submit" onclick="overlap_chk()" class="site-btn register-btn">회원가입</button>
                        </form>
                        <div class="switch-login">
                            <a href="loginform.do" class="or-login">로그인</a>
                        </div>
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