<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("1w1W1TfzsLpR_jUMM8rn", "http://localhost:8686/loginnaver");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	
    
    var id =naver_id_login.getProfileData('id');
    var gender = naver_id_login.getProfileData('gender');
    var email = naver_id_login.getProfileData('email');
    var name = naver_id_login.getProfileData('name');
  
    sessionStorage.setItem("id", id );
    sessionStorage.setItem("email", email );
    sessionStorage.setItem("gender", gender );
    sessionStorage.setItem("name", name );
    
    
    
    $.ajax({
    	data:{memberid:id},
    	url:'idchkkakao.do',
    	type:'post',
    	async:false,
		success:function(out){
			if(out == 0){
				
				$(location).attr('href','registerformnaver.do')
				
			}
			else if(out == 1){
				$.ajax({
					data:{memberid:id, memberpw:'네이버비밀번호'},
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
    
}

  
  
</script>
</body>
</html>