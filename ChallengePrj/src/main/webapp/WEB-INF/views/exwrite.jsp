<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>

<input name="uploadFiles" type="file" multiple>
<button class="uploadBtn">Upload</button>

<div class="uploadResult">

</div>

<form method="post" name="enrollform" enctype="multipart/form-data" action="admin_enroll_product">
	<div class="form-group">
		Main Picture <br>
		<input class="form-control form-control-user" type="file" 
		name="product_image" id="product_image" onchange="setThumbnail(event);">
	</div>
										
	<div class="form-group">
		Detail Picture <br>
		<input class="form-control form-control-user" type="file" multiple="multiple"
		name="product_detail_image" id="product_detail_image" onchange="setDetailImage(event);">
	</div>
</form>

<script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>

<script>

    $('.uploadBtn').click(function( ) {

        var formData = new FormData();

        var inputFile = $("input[type='file']");

        var files = inputFile[0].files;

        for (var i = 0; i < files.length; i++) {
            console.log(files[i]);
            formData.append("uploadFiles", files[i]);
        }

        //실제 업로드 부분
        //upload ajax
        $.ajax({
            url: '/uploadAjax',
            processData: false,
            contentType: false,
            data: formData,
            type: 'POST',
            dataType:'json',
            success: function(result){
                console.log(result);
                //나중에 화면 처리
                showUploadedImages(result);
            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log(textStatus);
            }

        }); //$.ajax
    }); //end click

    function showUploadedImages(arr){

        console.log(arr);

        var divArea = $(".uploadResult");

        var str = "";

        for(var i = 0; i < arr.length; i++){
            str += "<div>";
            str += "<img src='/display?fileName="+arr[i].thumbnailURL+"'>";
            str += "<button class='removeBtn' data-name='"+arr[i].imageURL+"'>REMOVE</button>"
            str += "<div>"
        }
        divArea.append(str);

    }

    $(".uploadResult").on("click", ".removeBtn", function(e){

        var target = $(this);
        var fileName = target.data("name");
        var targetDiv = $(this).closest("div");

        console.log(fileName);

        $.post('/removeFile', {fileName: fileName}, function(result){
            console.log(result);
            if(result === true){
                targetDiv.remove();
            }
        } )

    });




</script>


</body>
</html>