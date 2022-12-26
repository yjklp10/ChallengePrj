<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 클라이언트 소스 로드 -->
<script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body>
<div class="dropzone"></div>
 
 
<script>
	Dropzone.autoDiscover = false;  // deprecated 된 옵션. false로 해놓는걸 공식문서에서 명시
    const dropzone = new Dropzone("div.dropzone", { 
        url: "https://httpbin.org/post",
        method: 'post',
        // ... 옵션
    });
</script>
 
<script>
    // 제이쿼리도 지원
    $("div.dropzone").dropzone({ 
        url: "https://httpbin.org/post",
        method: 'post',
    });
</script>
</body>
</html>