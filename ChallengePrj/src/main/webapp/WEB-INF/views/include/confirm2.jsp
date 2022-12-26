<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="form" method="post" action="http://localhost:8080/board" enctype="multipart/form-data">
<input type="file" name="files" multiple="multiple">
<input type="submit" id="submit" value="전송">
</form>
</body>
</html>