<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="./include/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">

<script src="https://www.google.com/recaptcha/api.js"></script>
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
		let emailchk = document.getElementById("memberemail").title;
		
		if(idchk == 'nid'){
			alert("아이디 중복체크를 해주세요");
			document.getElementById("memberid").focus();
			return false;
		}else if(idchk == 'yid' && nickchk == 'nnick'){
			alert("닉네임 중복체크를 해주세요");
			document.getElementById("membernick").focus();
			return false;
		}else if(emailchk == 'nemail' ){
			alert("인증코드를 확인해 주세요");
			document.getElementById("memberemail").focus();
			return false;
		}
		
	}
	
	// 이메일 인증번호
	function eamil_code(){
		let email = $("#memberemail").val();
	   $.ajax({
	      type : "POST",
	      url : "login/mailConfirm",
	      data : {email:email},
	      success : function(data){
	         alert("해당 이메일로 인증번호 발송이 완료되었습니다. \n 확인부탁드립니다.");
	         console.log("data : "+data);
	         $("#emailcode").attr('value',data);
	      }
	   });
	}
	function chkEmailConfirm(){
		if($("#emailcode").val() != $("#memberemailconfirm").val()){
			$("#memberemailconfirmTxt").html("인증코드가 일치하지 않습니다.").css("display","flex").css("color","#f23c3c");
			$("#memberemail").attr('title','nemail');
		}else if($("#emailcode").val() == $("#memberemailconfirm").val()){
			$("#memberemailconfirmTxt").html("인증코드가 일치합니다.").css("display","flex").css("color","#008000");
			$("#memberemail").attr('title','yemail');
		}
	}
		
	
	$(function() {
		$('#add_member_form').submit(function() {
				var captcha = 1;
				$.ajax({
		            url: '/pro/VerifyRecaptcha',
		            type: 'post',
		            data: {
		                recaptcha: $("#g-recaptcha-response").val()
		            },
		            success: function(data) {
		                switch (data) {
		                    case 0:
		                        console.log("자동 가입 방지 봇 통과");
		                        captcha = 0;
		                		break;
		                    case 1:
		                        alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");
		                        break;
		                    default:
		                        alert("자동 가입 방지 봇을 실행 하던 중 오류가 발생 했습니다. [Error bot Code : " + Number(data) + "]");
		                   		break;
		                }
		            }
		        });
				if(captcha != 0) {
					return false;
				} 
		});
		});
</script>
<style>
	#memberemailconfirmTxt,
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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   
    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>회원가입</h2>
                        <form method="post" onsubmit="return overlap_chk()" action="register.do">
                            <div class="group-input">
                                <label for="membername">아이디*</label>
                                <input type="text" class="form-control" id="memberid" name="memberid" title="nid" required="required" >
                                <input type="button" value="중복확인" onclick="id_overlap_chk();" style="width: 100px;float: right;">
                                <span class="id_use_chk">사용가능한 아이디입니다.</span>
                                
                                
                            </div>
                            <div class="group-input">
                                <label for="pass">비밀번호 *</label>
                                <input type="password" class="form-control" name="memberpw" id="memberpw" required="required">
                            </div>
                            <div class="group-input">
                                <label for="passch">비밀번호 확인 *</label>
                                <input type="password" class="form-control" name="memberpwchk" id="memberpwchk" required="required">
                                <span id="pwchk"></span>
                            </div>
                             <div class="group-input">
                             	<input type="hidden" id="emailcode">
                                <label for="email">이메일 *</label>
                                <input type="button" value="인증번호 발급" id="checkEmail" onclick="eamil_code();" style="width: 140px;float: right;">
                                <input type="email" class="form-control" name="memberemail" id="memberemail" title="nemail" required="required" style="width:75%;"> <br>
                                <input type="button" value="인증번호 확인" id="checkEmail" onclick="chkEmailConfirm();" style="width: 140px;float: right;">
								<input type="text" class="form-control" id="memberemailconfirm" placeholder="인증번호를 입력해 주세요" style="width:75%;" >
								
								<span id="memberemailconfirmTxt"></span>
                                
                                
                            </div>
                             <div class="group-input">
                                <label for="nick">닉네임 *</label>
                                <input type="text" class="form-control" name="membernick" id="membernick" title="nnick" required="required">
                                <span class="nick_use_chk">사용가능한 닉네임입니다.</span>
                                
                                <input type="button" value="중복확인" onclick="nick_overlap_chk()" style="width: 100px;float: right;">
                            </div>
                             <div class="group-input">
                                <label for="name">이름 *</label>
                                <input type="text" class="form-control" name="membername" id="name">
                            </div>
                           
                             <div class="group-input">
                                <label for="tel">전화번호 *</label>
                                <input type="tel" class="form-control" name="memberphone" id="memberphone">
                            </div>
                             <div class="group-input-radio" style="margin-bottom: 25px;">
                            	<label for="gender" style="display: block;font-size: 18px;color: #252525;margin-bottom: 13px;">성별 *</label>
                            	<input type="radio" name="membergender" value="m" required="required">
                            	남성
                            	&nbsp;&nbsp;
                            	<input type="radio" name="membergender" value="w" required="required">
                            	여성
                            </div>
                            <div class="g-recaptcha" data-sitekey='6LcmDiokAAAAAGrPpnCPDUA12ENnLMo0DMeKdXX7'></div>
                            <button type="submit" onclick="overlap_chk()" class="site-btn register-btn">회원가입</button>
                        </form>
                        <div class="switch-login">
                            <a href="login.do" class="or-login">로그인</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->
    
   
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

    <%@include file="./include/footer.jsp" %>

</html>