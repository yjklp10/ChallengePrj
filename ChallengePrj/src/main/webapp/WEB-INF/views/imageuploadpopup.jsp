<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style type="text/css">
#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
.dbinsertbutton{
width:30px;
height:30px;
}
.popup-wrap{
  background-color:rgba(0,0,0,.3);  
  justify-content:center; 
  align-items:center;     
  position:fixed;        
  top:0;
  left:0;
  right:0;
  bottom:0;               
  display:flex; 
  padding:15px; 
}
.popup{
  width:100%;             
  max-width:400px;         
  border-radius:10px;       
  overflow:hidden;        
  background-color:#264db5; 
  box-shadow: 5px 10px 10px 1px rgba(0,0,0,.3); 
}
.popup-head{
  width:100%;
  height:50px;  
  display:flex;
  align-items:center;
  justify-content:center;
}
.popup-body{               
  width:100%;
  background-color:#ffffff; 
}
.body-content{             
  width:100%;
  padding:30px;             
}
.body-titlebox{             
  text-align:center;      
  width:100%;
  height:40px;
  margin-bottom:10px;      
}
.body-contentbox{         
  word-break:break-word; 
  overflow-y:auto;        
  min-height:100px;         
  max-height:200px;        
}
.popup-foot{                    
  width:100%;
  height:50px;
}
.pop-btn{ 
  display:inline-flex;           
  width:50%;                    
  height:100%;                  
  justify-content:center;       
  align-items:center;             
  float:left;                   
  color:#ffffff;                 
  cursor:pointer;                
}

</style>
</head>
<body>
<div class="container"> 
        <div class="popup-wrap" id="popup"> 
          <div class="popup">	
            <div class="popup-head">	
                <span class="head-title">인증 사진 올리기</span>
            </div>
            <div class="popup-body">	
              <div class="body-content">
                <div class="body-titlebox">
                  <h1>파일 입력</h1>
                </div>
                <div class="body-contentbox">
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
                </div>
              </div>
            </div>
            <div class="popup-foot"> 
              <span class="pop-btn" id="confirm">확인</span>
              <span class="pop-btn" id="close">창 닫기</span>
            </div>
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
	
	let fileCallPath=encodeURIComponent(obj.uploadFilePath+"/s_"+obj.uuid+"_"+obj.fileName);
	
	
	str += "<div id='result_card'>";
	str += "<img src='/display?fileName=" +fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<form action='/dbinsert' method='post'>"
	str += "<input type='hidden' name='uploadFilePath' value='"+ obj.uploadFilePath +"'>";
	str += "<input type='hidden' name='uuid' value='"+ obj.uuid +"'>";
	str += "<input type='hidden' name='fileName' value='"+ obj.fileName +"'>";
	str += "<input type='submit' value='작성' onclick='timecheck();'>"
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
		url: '/deleteFile',
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
function timecheck(){
	 const date1= new Date(2023,1,7,01,00,00);
	    console.log(date1.getHours());
	    const date2= new Date(2023,1,7,07,00,00);
	    console.log(date2.getHours());
	    const date3= new Date(2023,1,7,05,00,00);
	    console.log(date3.getHours());
	    if(date1<date2<date3){
	        alert("인증 사진 등록가능 시간입니다");
	    }else{
	        alert("인증 시간 등록시간이 아닙니다");
	        popUrl.close();
	        
	    }
}
$(function(){
	  $("#confirm").click(function(){
	      modalClose(); 
	  });
	  $("#modal-open").click(function(){        
	      $("#popup").css('display','flex').hide().fadeIn();
	     
	  });
	  $("#close").click(function(){
	      modalClose(); 
	  });
	  function modalClose(){
	      $("#popup").fadeOut(); 
	  }
	});
</script>
</body>
</html>