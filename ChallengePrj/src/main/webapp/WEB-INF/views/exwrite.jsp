<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
</head>
	
<body><h2>파일 업로드</h2>
	
        <form name="form" method="post" action="/ex" enctype="multipart/form-data">
    <input type="file" name="files" multiple="multiple"/>
    <input type="submit" id="submit" value="전송"/>
</form>
</body>
</html>