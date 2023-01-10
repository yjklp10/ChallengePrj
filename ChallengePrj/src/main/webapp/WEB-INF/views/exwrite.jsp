<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

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

<input name="uploadFiles" type="file" multiple>
<button class="uploadBtn">Upload</button>

<div class="uploadResult">

</div>

<label for="fir">인증 성공 예시<span>*</span></label>
<br>
<!-- <img src="/img/hero-1.jpg" class="rounded" style="width:250px;height:250px;" alt="..."> -->
<input name="uploadFiles1" id="success"type="file" multiple class="rounded" style="width:250px;height:250px;" alt="...">
<button class="uploadBtn1">Upload</button>

<div class="uploadResult1">
</div>
                    

   <label for="last">인증 실패 예시<span>*</span></label>
   <br>
<input name="uploadFiles2" id="fail" type="file" multiple class="rounded" style="width:250px;height:250px;" alt="...">
<button class="uploadBtn2">Upload</button>

<div class="uploadResult2">
                    </div>
                    

 <label for="fir">대표 사진 선택<span>*</span></label>
 <br>
<input name="uploadFiles3" id="thumbnail" type="file" multiple class="rounded" style="width:250px;height:250px;" alt="...">
<button class="uploadBtn3">Upload</button>

<div class="uploadResult3">
</div>
                            
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
            str += "<div>"
            str += "<img src='/display?fileName="+arr[i].thumbnailURL+"' class='rounded' style='width:auto;height:auto; max-width: 400px; max-height: 400px;'>";
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
/* ------------- 인증 성공 */


    $('.uploadBtn1').click(function( ) {

        var formData = new FormData();

        var inputFile = $("#success");

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
                showUploadedImages1(result);
            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log(textStatus);
            }

        }); //$.ajax
    }); //end click

    function showUploadedImages1(arr){

        console.log(arr);

        var divArea = $(".uploadResult1");

        var str = "";

        for(var i = 0; i < arr.length; i++){
            str += "<div>";
            str += "<img src='/display?fileName="+arr[i].thumbnailURL+"' class='rounded' style='width:auto;height:auto; max-width: 400px; max-height: 400px;'>";
            str += "<button class='removeBtn' data-name='"+arr[i].imageURL+"'>REMOVE</button>"
            str += "<div>"
        }
        divArea.append(str);

    }

    $(".uploadResult1").on("click", ".removeBtn", function(e){

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
/* ------------- */
/* ------------- 인증 실패 */


    $('.uploadBtn2').click(function( ) {

        var formData = new FormData();

        var inputFile = $("#fail");

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
                showUploadedImages2(result);
            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log(textStatus);
            }

        }); //$.ajax
    }); //end click

    function showUploadedImages2(arr){

        console.log(arr);

        var divArea = $(".uploadResult2");

        var str = "";

        for(var i = 0; i < arr.length; i++){
            str += "<div>";
            str += "<img src='/display?fileName="+arr[i].thumbnailURL+"' class='rounded' style='width:auto;height:auto; max-width: 400px; max-height: 400px;'>";
            str += "<button class='removeBtn' data-name='"+arr[i].imageURL+"'>REMOVE</button>"
            str += "<div>"
        }
        divArea.append(str);

    }

    $(".uploadResult2").on("click", ".removeBtn", function(e){

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
/* ------------- */
 /* ------------- 썸네일 */


    $('.uploadBtn3').click(function( ) {

        var formData = new FormData();

        var inputFile = $("#thumbnail");

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
                showUploadedImages3(result);
            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log(textStatus);
            }

        }); //$.ajax
    }); //end click

    function showUploadedImages3(arr){

        console.log(arr);

        var divArea = $(".uploadResult3");

        var str = "";

        for(var i = 0; i < arr.length; i++){
            str += "<div>";
            str += "<img src='/display?fileName="+arr[i].thumbnailURL+"' class='rounded' style='width:auto;height:auto; max-width: 400px; max-height: 400px;'>";
            str += "<button class='removeBtn' data-name='"+arr[i].imageURL+"'>REMOVE</button>"
            str += "<div>"
        }
        divArea.append(str);

    }

    $(".uploadResult3").on("click", ".removeBtn", function(e){

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
/* ------------- */

</script>


</body>
</html>