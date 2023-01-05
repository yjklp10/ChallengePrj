<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<style type="text/css">
#result_card img{
width:300px;
height:300px;
}
.imgDeleteBtn{
background-color:#ef7d7d;
color:wheat;
font-weight:900;
width:30px;
height:30px;
border-radius:50%;

cursor:pointer;
}
.dbinsertbutton{
width:30px;
height:30px;
}
</style>
</head>
<body>
<div class="form_section">
    <div class="form_section_title">
        <label>인증 사진</label>
    </div>
    <div class="form_section_content">
        <input type="file" name="uploadFile">
       <div id="uploadResult">
   </div>
 </div>  
</div>

<script type="text/javascript">
$("input[type='file']").on("change",function(e) {
	
	if($(".imgDeleteBtn").length > 0){
		deleteFile();
	}
	let formData=new FormData();
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj=fileList[0];
	
	if(!fileCheck(fileObj.name,fileObj.size)){
		return false;
	}
	formData.append("uploadFile",fileObj);
	$.ajax({
		url:"uploadAjaxAction",
		processData:false,
		contentType:false,
		data:formData,
		type:'POST',
		dataType:'json',
		success:function(result){
			console.log(result);
			showUploadImage(result);
		},
		error: function(result){
			alert("이미지 파일이 아닙니다");
		}
	});
	
});

let regex=new RegExp("(.*?)\.(jpg|png)$");
let maxSize=1048576;

function fileCheck(fileName,fileSize){
	if(fileSize>=maxSize) {
		alert("파일 사이지 초과");
		return false;
	}
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드 불가능");
		return false;
	}
	return true;
}
function showUploadImage(uploadResultArr){
	

	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	let fileCallPath=encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
	
	
	str += "<div id='result_card'>";
	str += "<img src='/display?fileName=" + fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<form action='/dbinsert' method='post'>"
	str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
	str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
	str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
	str += "<input type='submit' value='작성'>"
	str += "</form>"
	str += "</div>";		
	
		uploadResult.append(str);   
}
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/admin/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.")
		}
	});
}



</script>
</body>
</html>