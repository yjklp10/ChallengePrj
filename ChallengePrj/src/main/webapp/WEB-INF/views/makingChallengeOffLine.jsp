<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>챌린지 만들기</title>

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
    

 <style>
 #preview-image1:hover{
        content:url(/img/추가이미지.png);
    }
    #preview-image2:hover{
        content:url(/img/추가이미지.png);
    }
    #preview-image3:hover{
        content:url(/img/추가이미지.png);
    }
    #in
    #ingeungDiv{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .onemoreclickDiv1{
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .onemoreclickDiv{
        padding-bottom: 50px;
       
    }
 .onemoreclick{
 	color: #AAAAAA;
     
 }
 #ingeung{
 padding-top: 50px;
 }
 #make_btn{
        padding-top: 50px;
    }
    .image-container2{
        display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
    }
     .image-container{
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding-right: 50px;
  object-fit: cover;
  border-radius: 30px;
  
 }
 #ingeung{
    display: flex;
 }
 .selected_pic{
    display: flex;
    justify-content: center;
    align-items: center;
 	background-color: #AAAAAA;
 }
 #enddayChk{
	display: hidden; 
 }
#search_wrap{
padding-top: 8px;
}
 .map_wrap{
 display:flex;
 }
  .scrollMenu {
  
  overflow: auto;
  white-space: nowrap;
}
.scrollMenu input {
  display: inline-block;
  
  text-align: center;
  text-decoration: none;
  padding: 14px;
}       
 
    .choices {
    padding: 15px 10px;
    }
    .choices input[type=radio]{
        display: none;
    }
    #address_btn,
    .choices input[type=radio]+label{
        display: inline-block;
        cursor: pointer;
        height: 24px;
        width: 90px;
        border: 1px solid #333;
        line-height: 24px;
        text-align: center;
        font-weight:bold;
        font-size:13px;
    }
    #makeChallenge,
    #address_btn,
    .choices input[type=radio]+label{
        background-color: #fff;
        color: #333;
    }
    #makeChallenge:hover,
    #address_btn:hover,
    .choices input[type=radio]:checked+label{
        background-color: #333;
        color: #fff;
    }
    #address_btn{
        height: 47.3px;
    }
    #searchDiv{
        display: flex;
        align-items: center;
        justify-content: center;
    }
    #certification_method{
        height: 150px;
    }
    #ifOffLine{
        background-color: #AAAAAA;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }
    
    #challenge_explain,
    #certification_method{
    resize:none;
    }
    </style>
    <script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
        crossorigin="anonymous"></script>

     <script>
    function reportSend() {
        if ($("input[name=challengetitle]").val() == "") {
            alert("챌린지 제목이 입력되지 않았습니다!");
            $("input[name=challengetitle]").focus();
            return false;
        }
         if ($("input[name=offlineaddress]").val() == "") {
            alert("모임 장소가 입력되지 않았습니다!");
            $("input[name=offlineaddress]").focus();
            return false;
        }
         /* if ($("#offline_spot_detail]").val() == "") {
            alert("모임 장소 상세 위치를 설명해주세요!");
            $("#offline_spot_detail]").focus();
            return false;
        } */
         if ($("input[name=offlinestarttime]").val() == "") {
            alert("모임 시작 시간을 입력해주세요!");
            $("input[name=offlinestarttime]").focus();
            return false;
        }
         if (!$("input[name=challengefrequency]").is(':checked')) {
            alert("인증 빈도를 입력해주세요!");
            $("#frequency").attr("tabindex",-1).focus();
            return false;
        }
         if (!$("input[name=challengestartdate]").is(':checked')) {
            alert("시작일을 설정해주세요!");
            $("#startdate").attr("tabindex",-1).focus();
            return false;
        }
         if (!$("input[name=challengeperiod]").is(':checked')) {
            alert("챌린지 기간을 설정해주세요!");
            $("#period").attr("tabindex",-1).focus();
            return false;
        }
         if ($("input[name=certificationstarttime]").val() == "") {
            alert("인증 가능 시간을 설정해주세요!");
            $("input[name=certificationstarttime]").focus();
            return false;
        }
         if ($("input[name=certificationendtime]").val() == "") {
            alert("인증 종료 시간을 설정해주세요!");
            $("input[name=certificationendtime]").focus();
            return false;
        }
          if ($("input[name=success]").val() == "") {
             alert("인증 성공 예시 사진을 넣어주세요!");
             $("#preview-image1").attr("tabindex",-1).focus();
             return false;
         }
          if ($("input[name=fail]").val() == "") {
             alert("인증 실패 예시 사진을 넣어주세요!");
             $("#preview-image2").attr("tabindex",-1).focus();
             return false;
         } 
        /*  if ($("input[name=certificationway]").val() == "") {
            alert("인증 방법을 입력해주세요!");
            $("input[name=certificationway]").focus();
            return false;
        } */
         if ($("input[name=challengeperiod]").val() == "") {
            alert("챌린지 기간을 설정해주세요!");
            $("input[name=challengeperiod]").focus();
            return false;
        }
        /*  if ($("input[name=challengeintro]").val() == "") {
            alert("챌린지 소개란을 입력해주세요!");
            $("input[name=challengeintro]").focus();
            return false;
        } */
         if ($("input[name=deposit]").val() == "") {
            alert("예치금을 설정해주세요!");
            $("input[name=deposit]").focus();
            return false;
        }
         if ($("input[name=maxchallenger]").val() == "") {
            alert("최대 모집 인원을 지정 해주세요!");
            $("input[name=maxchallenger]").focus();
            return false;
        }
         if (!$("input[name=category]").is(':checked')) {
            alert("카테고리를 설정해주세요!");
            $("#categories").attr("tabindex",-1).focus();
            return false;
        }
         if ($("input[name=thumbnail]").val() == "") {
            alert("대표사진을 설정해주세요!");
            $("#preview-image3").attr("tabindex",-1).focus();
            return false;
        }
        
        
    }
  
</script> 
  <!--   
    <script>
        function offline_select(){
            const offline_select = document.getElementById("offline_select");
            if(offline_select.style.display = "none"){
                offline_select.style.display = "block";
            }
        }
        function online_select(){
            const offline_select = document.getElementById("offline_select");
            if(offline_select.style.display = "block"){
                offline_select.style.display = "none";
            }
        }
     
    </script>
     -->
     <script>

     $(document).ready(function() {
    	 $("input[name='challengefrequency']").click(function () {
    		 var obj_length = document.getElementsByName("challengefrequency").length;
    		 
    		 
    		 
    		 var checkVal = $("input[name='challengefrequency']:checked").val();
    		 console.log(checkVal);
    		   
    	 })
     })
     
     </script>
   <script>
$(document).ready(function() {
    
    	   $("input[name='challengestartdate']").click(function () {
    		   var obj_length = document.getElementsByName("challengestartdate").length;
    		   
    	        for (var i=0; i<obj_length; i++) {
    	        	
    	            if (document.getElementsByName("challengestartdate")[i].checked == true) {

                        let now = new Date();


                        var today_m = now.getTime();
                        var tmr_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after2_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after3_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after4_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after5_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after6_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after7_m = new Date(now.setDate(now.getDate()+1)).getTime();

                        

                        
                        $('#start_date_today').val(today_m);
                        $('#start_date_tomorrow').val(tmr_m);
                        $('#start_date_after2').val(after2_m);
                        $('#start_date_after3').val(after3_m);
                        $('#start_date_after4').val(after4_m);
                        $('#start_date_after5').val(after5_m);
                        $('#start_date_after6').val(after6_m);
                        $('#start_date_after7').val(after7_m);

             		   var checkVal = parseInt($("input[name='challengestartdate']:checked").val());
                        var checkDate = new Date(checkVal);
                        
                        var startDay = checkDate.getFullYear()+"-"+(checkDate.getMonth()+1)+"-"+checkDate.getDate();

                        $("input[name='challengestartdate']:checked").val(startDay);

             		   console.log("시작일: " + startDay);
                        if($("input[name=challengeperiod]").is(':checked')){
                            var obj_length = document.getElementsByName("challengeperiod").length;
    		   
    	        for (var i=0; i<obj_length; i++) {
    	        	
    	            if (document.getElementsByName("challengeperiod")[i].checked == true) {

                        let now = new Date();


                        var today_m = now.getTime();
                        var tmr_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after2_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after3_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after4_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after5_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after6_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after7_m = new Date(now.setDate(now.getDate()+1)).getTime();

                        

                        
                        $('#start_date_today').val(today_m);
                        $('#start_date_tomorrow').val(tmr_m);
                        $('#start_date_after2').val(after2_m);
                        $('#start_date_after3').val(after3_m);
                        $('#start_date_after4').val(after4_m);
                        $('#start_date_after5').val(after5_m);
                        $('#start_date_after6').val(after6_m);
                        $('#start_date_after7').val(after7_m);

                                    
                        var week1 = 604800000;
                        var week2 = 1209600000;
                        var week3 = 1814400000;
                        var week4 = 2419200000;
                        
                        $('#duration_week1').val(week1);
                        $('#duration_week2').val(week2);
                        $('#duration_week3').val(week3);
                        $('#duration_week4').val(week4);

                       

             		   var checkVal = parseInt($("input[name='challengestartdate']:checked").val());
             		   
             		  var durationVal = parseInt($("input[name='challengeperiod']:checked").val());
                       console.log("기존 기간 밸류 값(밀리 초) : "+durationVal);
                      var endDate = new Date(checkVal+durationVal);
                    
                      var checkVal2 = parseInt($("input[name='challengestartdate']:checked").val());
                      var checkDate2 = new Date(checkVal2);
                      
                      var startDay2 = checkDate2.getFullYear()+"-"+("0" + (checkDate2.getMonth() + 1)).slice(-2)+"-"+("0" + checkDate2.getDate()).slice(-2);
                      
                      var endDayYear = endDate.getFullYear();
                      var endDayMonth = ("0" + (endDate.getMonth() + 1)).slice(-2);
                      var endDay = endDate.getFullYear()+"-"+("0" + (endDate.getMonth() + 1)).slice(-2)+"-"+("0" + endDate.getDate()).slice(-2);
                      var durationDate = (durationVal/1000/60/60/24);
                      
                      var endday = document.getElementById("endday");
                      
                      $("input[name='challengeperiod']:checked").attr('value',durationDate);
                      var newDurationVal = parseInt($("input[name='challengeperiod']:checked").val());
                      console.log("챌린지 기간: "+durationDate);
                        console.log("수정된 기간 밸류 값(밀리 초 -> 일로 변경): " + newDurationVal);
                      console.log("마감일: "+endDay);
                      $('#endday').val(endDay);
                      $("input[name='challengestartdate']:checked").val(startDay2);
                      
                      if (!$("input[name=challengestartdate]").is(':checked')) {
          	            alert("시작일을 먼저 설정해주세요!");
          	            $("#startdate").attr("tabindex",-1).focus();
          	            $("input[name=challengeperiod]").prop('checked',false);
          	            
          	        }else{
          	          $('#enddayChk').html("챌린지 기간은 "+startDay2 +" ~ "+endDay+" 입니다. ").css("display","flex").css("color","#008000");	
          	        	
          	        }
                       
                    
                      
    	            }
    	        }
                        }
        	  
                    
    	            }
    	        }
             
    		  });

              $("input[name='challengeperiod']").click(function () {
    		   var obj_length = document.getElementsByName("challengeperiod").length;
    		   
    	        for (var i=0; i<obj_length; i++) {
    	        	
    	            if (document.getElementsByName("challengeperiod")[i].checked == true) {

                        let now = new Date();


                        var today_m = now.getTime();
                        var tmr_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after2_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after3_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after4_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after5_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after6_m = new Date(now.setDate(now.getDate()+1)).getTime();
                        var after7_m = new Date(now.setDate(now.getDate()+1)).getTime();

                        

                        
                        $('#start_date_today').val(today_m);
                        $('#start_date_tomorrow').val(tmr_m);
                        $('#start_date_after2').val(after2_m);
                        $('#start_date_after3').val(after3_m);
                        $('#start_date_after4').val(after4_m);
                        $('#start_date_after5').val(after5_m);
                        $('#start_date_after6').val(after6_m);
                        $('#start_date_after7').val(after7_m);

                                    
                        var week1 = 604800000;
                        var week2 = 1209600000;
                        var week3 = 1814400000;
                        var week4 = 2419200000;
                        
                        $('#duration_week1').val(week1);
                        $('#duration_week2').val(week2);
                        $('#duration_week3').val(week3);
                        $('#duration_week4').val(week4);

                       

             		   var checkVal = parseInt($("input[name='challengestartdate']:checked").val());
             		   
             		  var durationVal = parseInt($("input[name='challengeperiod']:checked").val());
                       console.log("기존 기간 밸류 값(밀리 초) : "+durationVal);
                      var endDate = new Date(checkVal+durationVal);
                    
                      var checkVal2 = parseInt($("input[name='challengestartdate']:checked").val());
                      var checkDate2 = new Date(checkVal2);
                      
                      var startDay2 = checkDate2.getFullYear()+"-"+("0" + (checkDate2.getMonth() + 1)).slice(-2)+"-"+("0" + checkDate2.getDate()).slice(-2);
                      
                      var endDayYear = endDate.getFullYear();
                      var endDayMonth = ("0" + (endDate.getMonth() + 1)).slice(-2);
                      var endDay = endDate.getFullYear()+"-"+("0" + (endDate.getMonth() + 1)).slice(-2)+"-"+("0" + endDate.getDate()).slice(-2);
                      var durationDate = (durationVal/1000/60/60/24);
                      
                      var endday = document.getElementById("endday");
                      
                      $("input[name='challengeperiod']:checked").attr('value',durationDate);
                      var newDurationVal = parseInt($("input[name='challengeperiod']:checked").val());
                      console.log("챌린지 기간: "+durationDate);
                        console.log("수정된 기간 밸류 값(밀리 초 -> 일로 변경): " + newDurationVal);
                      console.log("마감일: "+endDay);
                      $('#endday').val(endDay);
                      $("input[name='challengestartdate']:checked").val(startDay2);
                      
                      if (!$("input[name=challengestartdate]").is(':checked')) {
          	            alert("시작일을 먼저 설정해주세요!");
          	            $("#startdate").attr("tabindex",-1).focus();
          	            $("input[name=challengeperiod]").prop('checked',false);
          	            
          	        }else{
          	          $('#enddayChk').html("챌린지 기간은 "+startDay2 +" ~ "+endDay+" 입니다. ").css("display","flex").css("color","#008000");	
          	        	
          	        }
                       
                    
                      
    	            }
    	        }
             
    		  });
    	   

            });

    </script>
  
</head>

<body>
    <%@include file="./include/header.jsp" %>

    <!-- Shopping Cart Section Begin -->
    <section class="checkout-section spad">
        <div class="container">
            <form name="challForm" action="/registOfflineChallenge" id="write-form" class="checkout-form" method="post" enctype="multipart/form-data" onsubmit="return reportSend();">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <h4>오프라인 챌린지 만들기</h4>
                        <div class="row">
                            <div class="col-lg-4">
                                <label for="town">챌린지 제목<span>*</span></label>
                                <input  type="text" id="challenge_title" name="challengetitle" >
                            </div>
                            
                            <div class="col-lg-12" id="offline_select">
                                <label for="fir">오프라인 모임 장소 지정<span>*</span></label>
                                <br>
                                <div id="ifOffLine" >
                                    
   										 <div id="map" style="width:500px;height:350px;"></div>
   										 <div id="search_wrap">
   										 <label for="town">주소 검색<span>*</span></label>
                                        <br>
                                        <div id="searchDiv">
                                        <input  type="text"  id="offline_address" style="width: 300px;" placeholder="주소를 검색해주세요.">
										<input type="button" value="검색" id="address_btn"onclick="search_location();">
                                        </div>
                                        <label for="town">지번 주소<span>*</span></label>
                                        <br>
                                        <input  type="text"  name="offlineaddress"  style="width: 300px;height:50px"   placeholder="지도를 클릭하시면 위치가 표시됩니다.">
                                        <br>
                                        <label for="town">모임 장소 상세 설명<span>*</span></label>
                                        <br>
                                        <br>
                                        <textarea required  style="width: 300px;height:75px" id="offline_spot_detail" name="offlineaddressdetail" placeholder="구체적인 모임 장소를 입력해주세요.  &#13;&#10;&#13;&#10; ex)여의나루 3번 출구에서 만나요~!"></textarea>
                                        <br>
                                        <label for="town">모임 시작 시간 설정<span>*</span></label>
                                        <br>
                                        <br>
                                        <!-- <input  type="time" id="offline_start_time" step="1800"  name="offline_start_time"> -->
                                       <input id="offline_start_time" list="times" type="time"  name="offlinestarttime" value="18:00" step="1800">

<datalist id="times">
    <option value="01:00:00">
    <option value="01:30:00">
    <option value="02:00:00">
    <option value="02:30:00">
    <option value="03:00:00">
    <option value="03:30:00">
    <option value="04:00:00">
    <option value="04:30:00">
    <option value="05:00:00">
    <option value="05:30:00">
    <option value="06:00:00">
    <option value="06:30:00">
    <option value="07:00:00">
    <option value="07:30:00">
    <option value="08:00:00">
    <option value="08:30:00">
    <option value="09:00:00">
    <option value="09:30:00">
    <option value="10:00:00">
    <option value="10:30:00">
    <option value="11:00:00">
    <option value="11:30:00">
    <option value="12:00:00">
    <option value="12:30:00">
    <option value="13:00:00">
    <option value="13:30:00">
    <option value="14:00:00">
    <option value="14:30:00">
    <option value="15:00:00">
    <option value="15:30:00">
    <option value="16:00:00">
    <option value="16:30:00">
    <option value="17:00:00">
    <option value="17:30:00">
    <option value="18:00:00">
    <option value="18:30:00">
    <option value="19:00:00">
    <option value="19:30:00">
    <option value="20:00:00">
    <option value="20:30:00">
    <option value="21:00:00">
    <option value="21:30:00">
    <option value="22:00:00">
    <option value="22:30:00">
    <option value="23:00:00">
    <option value="23:30:00">
    <option value="00:00:00">
</datalist>
                                         </div>
                                       
                                </div>
                            </div>
                            <div class="col-lg-12 scrollMenu choices" id="frequency">
                                <label  for="fir">인증빈도<span>*</span></label>
                                <br>
                                <input  type="radio"  id="frequency_everyday" name="challengefrequency" value="everyday"><label for="frequency_everyday">매일</label>
                                <input  type="radio"  id="frequency_everyweek" name="challengefrequency" value="everyweek"><label for="frequency_everyweek">평일만</label>
                                <input  type="radio"  id="frequency_everyweekend" name="challengefrequency" value="everyweekend"><label for="frequency_everyweekend">주말만</label>
                                <input  type="radio"  id="frequency_week1" name="challengefrequency" value="week1"><label for="frequency_week1">주 1회</label>
                                <input  type="radio"  id="frequency_week2" name="challengefrequency" value="week2"><label for="frequency_week2">주 2회</label>
                                <input  type="radio"  id="frequency_week3" name="challengefrequency" value="week3"><label for="frequency_week3">주 3회</label>
                                <input  type="radio"  id="frequency_week4" name="challengefrequency" value="week4"><label for="frequency_week4">주 4회</label>
                                <input  type="radio"  id="frequency_week5" name="challengefrequency" value="week5"><label for="frequency_week5">주 5회</label>
                                <input  type="radio"  id="frequency_week6" name="challengefrequency" value="week6"><label for="frequency_week6">주 6회</label>
                            </div>
  							<div class="col-lg-12 scrollMenu choices" id="startdate">
                                <label  for="fir">시작일<span>*</span></label>
                                <br>
                                <input  type="radio"  id="start_date_today" name="challengestartdate" value=""><label for="start_date_today">오늘</label>
                                <input  type="radio"  id="start_date_tomorrow" name="challengestartdate" value=""><label for="start_date_tomorrow">내일</label>
                                <input  type="radio"  id="start_date_after2" name="challengestartdate" value=""><label for="start_date_after2">2일 후</label>
                                <input  type="radio"  id="start_date_after3" name="challengestartdate" value=""><label for="start_date_after3">3일 후</label>
                                <input  type="radio"  id="start_date_after4" name="challengestartdate" value=""><label for="start_date_after4">4일 후</label>
                                <input  type="radio"  id="start_date_after5" name="challengestartdate" value=""><label for="start_date_after5">5일 후</label>
                                <input  type="radio"  id="start_date_after6" name="challengestartdate" value=""><label for="start_date_after6">6일 후</label>
                                <input  type="radio"  id="start_date_after7" name="challengestartdate" value=""><label for="start_date_after7">7일 후</label>
                            </div>
                            <div class="col-lg-12 choices" id="period">
                                <label  for="fir">챌린지 기간<span>*</span></label>
                                <br>
                                <input  type="radio"  id="duration_week1" name="challengeperiod" value="7" ><label for="duration_week1">1주</label>
                                <input  type="radio"  id="duration_week2" name="challengeperiod" value="14" ><label for="duration_week2">2주</label>
                                <input  type="radio"  id="duration_week3" name="challengeperiod" value="21" ><label for="duration_week3">3주</label>
                                <input  type="radio"  id="duration_week4" name="challengeperiod" value="28" ><label for="duration_week4">4주</label>
                                <div><input type="hidden"  id="endday" name="challengeenddate" value="">
                            <span id="enddayChk"></span>
                            </div>
                            </div>
                            
                            <div class="col-lg-3">
                                <label for="fir">인증 가능 시간<span>*</span></label>
                                <input type="time"  list="times" value="00:00" step="1800" id="certification_start_time" name="certificationstarttime">
                                
                            </div>
                            <div class="col-lg-3">
                                <label for="last">인증 종료 시간<span>*</span></label>
                                <input type="time"  list="times" value="23:59" id="certification_end_time" name="certificationendtime">
                            </div>
                            <div id="ingeungDiv">
                                <div id="ingeung">
                                    <div class="image-container" >
                                        <h4>인증 성공예시</h4>
                                        
                                        <input type="file"  style="display: none;" id="input-image1" name="success">
                                        <label id="Spic" class="selected_pic" for="input-image1" style="width: 350px; height: 350px;">
                                            <img style='width:auto; height:auto; max-width: 350px; max-height: 350px; object-fit: contain;' id="preview-image1" src="/img/인증성공예시.png">
                                        </label>
                                    </div>
                                    <div class="image-container">
                                        <h4>인증 실패예시</h4>
                                        
                                        <input  type="file"  id="input-image2" style="display: none;" name="fail">
                                        <label id="Fpic"class="selected_pic" for="input-image2" style="width: 350px; height: 350px;">
                                            <img style='width:auto;height:auto; max-width: 350px; max-height: 350px; object-fit: contain;' id="preview-image2" src="/img/인증실패예시.png" >
                                        </label>
                                    </div>
                                </div>
                               
                            </div>
                           
            
                            <div class="col-lg-12">
                                <label for="cun">인증 방법<span>*</span></label>
                                <br>
                                <textarea required name="certificationway" cols="55" rows="10" id="certification_method" placeholder="- 챌린지가 시작되면 인증 방법을 수정할 수 없습니다. 신중히 작성해주세요.&#13;&#10;- 혼란을 겪지 않도록 정확한 기준과 구체적인 인증 방법을 적어주세요.&#13;&#10;&#13;&#10; ex) 오늘 날짜와 걸음 수가 보이도록 업로드"></textarea>
                            </div>
                            
                            <div class="col-lg-12">
                                <label for="cun">챌린지 소개<span>*</span></label>
                                <br>
                                <textarea required name="challengeintro" cols="55" rows="10" id="challenge_explain" placeholder="- 챌린지를 소개해보세요! &#13;&#10;&#13;&#10;ex) 매일 한강에서 달리기 하며 건강해지고 싶습니다!"></textarea>
                            </div>
                            <div class="col-lg-4">
                                <label for="cun-name">예치금 설정</label>
                                <input  name="deposit" type="number" id="cun-name" min="0" max="200000" placeholder="0원 ~ 20만원 사이로 설정 가능합니다.(숫자만 입력해주세요)">
                            </div>
                            
                            <div class="col-lg-4">
                                <label for="fir">최대 모집 인원 지정<span>*</span></label>
                                <br>
                                <div id="max_member">
                                    <div>
                                        
                                        <input  type="number"  id="offline_spot_search" name="maxchallenger" min="5" max="40" placeholder="5명 ~ 40명 사이로 설정 가능합니다.(숫자만 입력해주세요)">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 choices" id="categories">
                                <label  for="fir">카테고리 선택<span>*</span></label>
                                <br>
                                <input  type="radio"  id="category_select1" value="exercise" name="category"><label for="category_select1">운동</label>
                                <input  type="radio"  id="category_select2" value="eatingHabits" name="category"><label for="category_select2">식습관</label>
                                <input  type="radio"  id="category_select3" value="wakeUp" name="category"><label for="category_select3">기상</label>
                                <input  type="radio"  id="category_select4" value="hobby" name="category"><label for="category_select4">취미</label>
                            </div>
                            
		<div>
            
            <div id="ingeung">
                <div class="image-container2">
                   <h4>대표사진 선택</h4>
                    <input  type="file"  id="input-image3" style="display: none;" name="thumbnail">
                    <label id="Tpic" class="selected_pic" for="input-image3" style="width: 350px; height: 350px;">
                        <img  style='width:auto;height:auto; max-width: 350px; max-height: 350px; object-fit: contain;' id="preview-image3" src="/img/대표사진선택.png">
                    </label>
                </div>
                <br>
                
            </div>
				
    <script>
        function readImage1(input) {
         // 인풋 태그에 파일이 있는 경우
         if(input.files && input.files[0]) {
             // 이미지 파일인지 검사 (생략)
             // FileReader 인스턴스 생성
             const reader = new FileReader()
             // 이미지가 로드가 된 경우
             reader.onload = e => {
                 const previewImage = document.getElementById("preview-image1")
                 previewImage.src = e.target.result
             }
             // reader가 이미지 읽도록 하기
             reader.readAsDataURL(input.files[0])
         }
     }
     // input file에 change 이벤트 부여
     const inputImage1 = document.getElementById("input-image1")
     inputImage1.addEventListener("change", e => {
         readImage1(e.target)
     })
     function readImage2(input) {
         // 인풋 태그에 파일이 있는 경우
         if(input.files && input.files[0]) {
             // 이미지 파일인지 검사 (생략)
             // FileReader 인스턴스 생성
             const reader = new FileReader()
             // 이미지가 로드가 된 경우
             reader.onload = e => {
                 const previewImage = document.getElementById("preview-image2")
                 previewImage.src = e.target.result
             }
             // reader가 이미지 읽도록 하기
             reader.readAsDataURL(input.files[0])
         }
     }
     // input file에 change 이벤트 부여
     const inputImage2 = document.getElementById("input-image2")
     inputImage2.addEventListener("change", e => {
         readImage2(e.target)
     })
     function readImage3(input) {
         // 인풋 태그에 파일이 있는 경우
         if(input.files && input.files[0]) {
             // 이미지 파일인지 검사 (생략)
             // FileReader 인스턴스 생성
             const reader = new FileReader()
             // 이미지가 로드가 된 경우
             reader.onload = e => {
                 const previewImage = document.getElementById("preview-image3")
                 previewImage.src = e.target.result
             }
             // reader가 이미지 읽도록 하기
             reader.readAsDataURL(input.files[0])
         }
     }
     // input file에 change 이벤트 부여
     const inputImage3 = document.getElementById("input-image3")
     inputImage3.addEventListener("change", e => {
         readImage3(e.target)
     })
                 </script>
		</div>
                        </div>
                     
                    </div>
                    
                    <div class="col-lg-8" id="make_btn">
                        <input type="submit" id="makeChallenge" name="makeChallenge" value="챌린지 만들기">
                    </div>
                </div>
                
            </form>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

   

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
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ac0def900a39c342fe65cab35fe4b06&libraries=services"></script>
 <script>
// 마커를 담을 배열입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

 

/* <input type="text" id="address">
<input type="button" value="검색" onclick="search_location();"> */



// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
function search_location(){
	var address = document.getElementById("offline_address").value;
	// 키워드로 장소를 검색합니다
	ps.keywordSearch(address, placesSearchCB);	
}
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
/* 
// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);
 */
//지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
 kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
     searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
         if (status === kakao.maps.services.Status.OK) {
             var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
             detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
             
             var content = '<div class="bAddr">' +
                             '<span class="title">법정동 주소정보</span>' + 
                             detailAddr + 
                         '</div>';

             // 마커를 클릭한 위치에 표시합니다 
             marker.setPosition(mouseEvent.latLng);
             marker.setMap(map);

             // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
             infowindow.setContent(content);
             infowindow.open(map, marker);
             $('input[name=offlineaddress]').attr('value',result[0].address.address_name);
             
         }   
     });
 });

 // 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
 kakao.maps.event.addListener(map, 'idle', function() {
     searchAddrFromCoords(map.getCenter(), displayCenterInfo);
 });

 function searchAddrFromCoords(coords, callback) {
     // 좌표로 행정동 주소 정보를 요청합니다
     geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
 }

 function searchDetailAddrFromCoords(coords, callback) {
     // 좌표로 법정동 상세 주소 정보를 요청합니다
     geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
 }

 // 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
 function displayCenterInfo(result, status) {
     if (status === kakao.maps.services.Status.OK) {
         var infoDiv = document.getElementById('centerAddr');

         for(var i = 0; i < result.length; i++) {
             // 행정동의 region_type 값은 'H' 이므로
             if (result[i].region_type === 'H') {
                 infoDiv.innerHTML = result[i].address_name;
                 break;
             }
         }
     }    
 }
</script>
<style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
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


	<!--  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ac0def900a39c342fe65cab35fe4b06=LIBRARY"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ac0def900a39c342fe65cab35fe4b06&libraries=services,clusterer,drawing"></script>
	 <%@include file="./include/footer.jsp" %>
</body>

</html>