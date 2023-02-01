<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

    
<!DOCTYPE html>
<html lang="ko">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- 네이버 스크립트 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>

//2. 카카오 초기화
Kakao.init('9556a955d2ae033cd558c3f1ee140857');
console.log( Kakao.isInitialized() ); // 초기화 판단여부

// 3. 데모버전으로 들어가서 카카오로그인 코드를 확인.
function loginWithKakao() {
    Kakao.Auth.login({
        success: function (authObj) {
            console.log(authObj); // access토큰 값
            Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장

            getInfo();
        },
        fail: function (err) {
            console.log(err);
        }
    });
}

// 4. 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
function getInfo() {
    Kakao.API.request({
        url: '/v2/user/me',
        success: function (res) {
            console.log(res);
            // 이메일, 성별, 닉네임, 프로필이미지
            var id = res.id;
           // var kakao_account = result.kakao_account;
            var email = res.kakao_account.email;
            var gender = res.kakao_account.gender;
            sessionStorage.setItem("id", id );
            sessionStorage.setItem("email", email );
            sessionStorage.setItem("gender", gender );
           

            console.log(id, gender);
            
            $.ajax({
            	data:{memberid:id},
            	url:'idchkkakao.do',
            	type:'post',
            	async:false,
        		success:function(out){
        			if(out == 0){
        				
        				$(location).attr('href','registerformkakao.do')
        				
        			}
        			else if(out == 1){
        				$.ajax({
        					data:{memberid:id, memberpw:'카카오비밀번호'},
        					url:'login',
        					type:'post',
        					async:false,
        					success:function(res){
        					
        						$(location).attr('href','home_main')
        					}
        				})
        			}
        		}
            })
            
        },
        fail: function (error) {
            alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
        }
    });
   
    
}

    var naver_id_login = new naver_id_login("1w1W1TfzsLpR_jUMM8rn", "http://localhost:8686/loginnaver.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8686/loginform.do");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();

</script>
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
	
	

   <%@include file="./include/header.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <!-- <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Login</span>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Login</h2>
                        <form action="/login" method="post">
                            <div class="group-input">
                                <label for="username">Username or email address *</label>
                                <input type="text" id="membername" name="memberid">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="memberpw" name="memberpw">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    <label for="save-pass">
                                        Save Username or email address
                                        <input type="checkbox" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="forget.do" class="forget-pass">Forget your ID or Password</a>
                            </div>
                            <button type="submit" class="site-btn login-btn">로그인</button>
                        </form>
                            <div class="b_login_sync">
                            	<sction class="c_login_easy">
                            		<h2 class="title" style="margin-top:30px;font-size:18px;">간편 로그인</h2>
                            		<div>
                            			<a href="/oauth2/authorization/google">
                            				<img alt="구글" src="img/google.png" style="whid:215px;height:45px; float:center;">
                            			</a>
                            			<a id="custom-login-btn" href="javascript:loginWithKakao()">
                            				<img alt="카카오" src="img/kakao.png" style="whid:215px; ">
                            			</a>
                            			
                            			
                            			<!-- <a id="naver_id_login">
                            				<img alt="네이버" src="img/naver.png" style="whid:215px;height:45px; float:right; margin-right:20px;">
                            			</a> -->
                            			
                            		                            		<div id="naver_id_login"></div>
                            		
                            		</div>
                            	</sction>
                            </div>
                        
                        <div class="switch-login">
                            <a href="registerform.do" class="or-login">Or Create An Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

    <!-- Partner Logo Section Begin -->
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