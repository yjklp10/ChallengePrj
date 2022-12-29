<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
</head>
	
<body><h2>파일 업로드</h2>
	
        <form action="/upload" method="post" enctype="multipart/form-data">
     	  
           <h4>단일 파일 업로드</h4>
           <input type="file" name="file">
                   	
           <h4>다중 파일 업로드</h4>
           <input type="file" multiple="multiple" name="files">
			
	   <input type="submit"/>
	</form>
</body>
</html>