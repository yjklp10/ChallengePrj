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
        background-color: gray;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }
    #offline_select{
        display: none;
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
   <script>
$(document).ready(function() {
    	   
        	  
    	   $("input[name='start_date']").click(function () {
    		   var obj_length = document.getElementsByName("start_date").length;
    		   
    	        for (var i=0; i<obj_length; i++) {
    	        	
    	            if (document.getElementsByName("start_date")[i].checked == true) {

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

             		   var checkVal = parseInt($("input[name='start_date']:checked").val());
                        var checkDate = new Date(checkVal);
                        
                        var startDay = checkDate.getFullYear()+"-"+(checkDate.getMonth()+1)+"-"+checkDate.getDate();

                        $("input[name='start_date']:checked").attr('value',startDay);

             		   console.log("시작일: " + startDay);
                       
                    
    	            }
    	        }
             
    		  });

              $("input[name='duration']").click(function () {
    		   var obj_length = document.getElementsByName("duration").length;
    		   
    	        for (var i=0; i<obj_length; i++) {
    	        	
    	            if (document.getElementsByName("duration")[i].checked == true) {

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

                        

             		   var checkVal = parseInt($("input[name='start_date']:checked").val());
             		   
             		  var durationVal = parseInt($("input[name='duration']:checked").val());
                       console.log("기존 기간 밸류 값(밀리 초) : "+durationVal);
                      var endDate = new Date(checkVal+durationVal);
                    
                      

                      var endDay = endDate.getFullYear()+"-"+(endDate.getMonth()+1)+"-"+endDate.getDate();
                      var durationDate = (durationVal/1000/60/60/24);

                      $("input[name='duration']:checked").attr('value',durationDate);
                      var newDurationVal = parseInt($("input[name='duration']:checked").val());
                      console.log("챌린지 기간: "+durationDate);
                        console.log("수정된 기간 밸류 값(밀리 초 -> 일로 변경): " + newDurationVal);
                      console.log("마감일: "+endDay);

    	            }
    	        }
             
    		  });
    	   

            });

    </script>
</head>

<body>
    

    <!-- Shopping Cart Section Begin -->
    <section class="checkout-section spad">
        <div class="container">
            <form action="#" class="checkout-form" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <h4>챌린지 만들기</h4>
                        <div class="row">
                            <div class="col-lg-4">
                                <label for="town">챌린지 제목<span>*</span></label>
                                <input type="text" id="challenge_title">
                            </div>
                            <div class="col-lg-12 choices" id="onOff_choice">
                                <label for="fir">온라인/오프라인 여부<span>*</span></label>
                                <br>
                                <input type="radio" id="onOff_select1" name="onOff" value="challenge_online" onclick="online_select();"><label for="onOff_select1">온라인</label>
                                <input type="radio" id="onOff_select2" name="onOff" value="challenge_offline" onclick="offline_select();"><label for="onOff_select2">오프라인</label>
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
                                        <input type="text"  id="offline_address" style="width: 300px;">
										<input type="button" value="검색" id="address_btn"onclick="search_location();">
                                        </div>
                                        
                                        <label for="town">모임 장소 상세 설명<span>*</span></label>
                                        <br>
                                      
                                        <br>
                                   
                                          <input type="text" name="offline_spot_address"  style="width: 300px;height:50px">
                                          <br>
                                        <textarea  style="width: 300px;height:75px" id="offline_spot_detail" name="offline_spot_detail" ></textarea>
                                        <br>
                                        <label for="town">모임 시작 시간 설정<span>*</span></label>
                                        <br>
                                        <input  type="time" id="offline_start_time" name="offline_start_time">
                                       
                                         </div>
                                </div>
                            </div>
                            <div class="col-lg-12 scrollMenu choices">
                                <label for="fir">인증빈도<span>*</span></label>
                                <br>
                                <input type="radio" id="frequency_everyday" name="frequency" value="frequency_everyday"><label for="frequency_everyday">매일</label>
                                <input type="radio" id="frequency_everyweek" name="frequency" value="frequency_week"><label for="frequency_week">평일 매일</label>
                                <input type="radio" id="frequency_everyweekend" name="frequency" value="frequency_weekend"><label for="frequency_weekend">주말 매일</label>
                                <input type="radio" id="frequency_week1" name="frequency" value="frequency_week1"><label for="frequency_week1">주 1회</label>
                                <input type="radio" id="frequency_week2" name="frequency" value="frequency_week2"><label for="frequency_week2">주 2회</label>
                                <input type="radio" id="frequency_week3" name="frequency" value="frequency_week3"><label for="frequency_week3">주 3회</label>
                                <input type="radio" id="frequency_week4" name="frequency" value="frequency_week4"><label for="frequency_week4">주 4회</label>
                                <input type="radio" id="frequency_week5" name="frequency" value="frequency_week5"><label for="frequency_week5">주 5회</label>
                                <input type="radio" id="frequency_week6" name="frequency" value="frequency_week6"><label for="frequency_week6">주 6회</label>
                            </div>
  							<div class="col-lg-12 scrollMenu choices" >
                                <label for="fir">시작일<span>*</span></label>
                                <br>
                                <input type="radio" id="start_date_today" name="start_date" value=""><label for="start_date_today">오늘</label>
                                <input type="radio" id="start_date_tomorrow" name="start_date" value=""><label for="start_date_tomorrow">내일</label>
                                <input type="radio" id="start_date_after2" name="start_date" value=""><label for="start_date_after2">2일 후</label>
                                <input type="radio" id="start_date_after3" name="start_date" value=""><label for="start_date_after3">3일 후</label>
                                <input type="radio" id="start_date_after4" name="start_date" value=""><label for="start_date_after4">4일 후</label>
                                <input type="radio" id="start_date_after5" name="start_date" value=""><label for="start_date_after5">5일 후</label>
                                <input type="radio" id="start_date_after6" name="start_date" value=""><label for="start_date_after6">6일 후</label>
                                <input type="radio" id="start_date_after7" name="start_date" value=""><label for="start_date_after7">7일 후</label>
                            </div>
                            <div class="col-lg-12 choices">
                                <label for="fir">챌린지 기간<span>*</span></label>
                                <br>
                                <input type="radio" id="duration_week1" name="duration" value="7"><label for="duration_week1">1주</label>
                                <input type="radio" id="duration_week2" name="duration" value="14"><label for="duration_week2">2주</label>
                                <input type="radio" id="duration_week3" name="duration" value="21"><label for="duration_week3">3주</label>
                                <input type="radio" id="duration_week4" name="duration" value="28"><label for="duration_week4">4주</label>
                            </div>
                            <div class="col-lg-3">
                                <label for="fir">인증 가능 시간<span>*</span></label>
                                <input type="time" id="certification_start_time">
                            </div>
                            <div class="col-lg-3">
                                <label for="last">인증 종료 시간<span>*</span></label>
                                <input type="time" id="certification_end_time">
                            </div>
                           
                           <script>
                      
                           </script>
                           
                            <div class="col-lg-12">
                                <label for="cun">인증 방법<span>*</span></label>
                                <br>
                                <textarea cols="55" rows="10" id="certification_method" placeholder="ex) 오늘 날짜와 걸음 수가 보이도록 업로드&#13;&#10;&#13;&#10;- 챌린지가 시작되면 인증 방법을 수정할 수 없습니다. 신중히 작성해주세요.&#13;&#10;- 혼란을 겪지 않도록 정확한 기준과 구체적인 인증 방법을 적어주세요. "></textarea>
                            </div>
                            
                            <div class="col-lg-12">
                                <label for="cun">챌린지 소개<span>*</span></label>
                                <br>
                                <textarea cols="55" rows="10" id="challenge_explain" placeholder="ex) 매일 한강에서 달리기 하며 건강해지고 싶습니다!&#13;&#10;&#13;&#10;- 챌린지를 소개해보세요!"></textarea>
                            </div>
                            <div class="col-lg-4">
                                <label for="cun-name">예치금 설정</label>
                                <input type="text" id="cun-name">
                            </div>
                            
                            <div class="col-lg-4">
                                <label for="fir">최대 모집 인원 지정<span>*</span></label>
                                <br>
                                <div id="max_member">
                                    <div>
                                        
                                        <input type="text" id="offline_spot_search">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 choices">
                                <label for="fir">카테고리 선택<span>*</span></label>
                                <br>
                                <input type="radio" id="category_select1" value="exercise" name="category"><label for="category_select1">운동</label>
                                <input type="radio" id="category_select2" value="eatingHabits" name="category"><label for="category_select2">식습관</label>
                                <input type="radio" id="category_select3" value="wakeUp" name="category"><label for="category_select3">기상</label>
                                <input type="radio" id="category_select4" value="hobby" name="category"><label for="category_select4">취미</label>
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
             $('input[name=offline_spot_address]').attr('value',result[0].address.address_name);
             
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
	 
</body>

</html>