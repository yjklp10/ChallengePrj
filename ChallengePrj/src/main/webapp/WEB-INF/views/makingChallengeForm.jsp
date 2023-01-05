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
    <title>Fashi | Template</title>

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
  
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
                    <div class="mail-service">
                        <i class=" fa fa-envelope"></i>
                        hello.colorlib@gmail.com
                    </div>
                    <div class="phone-service">
                        <i class=" fa fa-phone"></i>
                        +65 11.188.888
                    </div>
                </div>
                <div class="ht-right">
                    <a href="#" class="login-panel"><i class="fa fa-user"></i>Login</a>
                    <div class="lan-selector">
                        <select class="language_drop" name="countries" id="countries" style="width:300px;">
                            <option value='yt' data-image="img/flag-1.jpg" data-imagecss="flag yt"
                                data-title="English">English</option>
                            <option value='yu' data-image="img/flag-2.jpg" data-imagecss="flag yu"
                                data-title="Bangladesh">German </option>
                        </select>
                    </div>
                    <div class="top-social">
                        <a href="#"><i class="ti-facebook"></i></a>
                        <a href="#"><i class="ti-twitter-alt"></i></a>
                        <a href="#"><i class="ti-linkedin"></i></a>
                        <a href="#"><i class="ti-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="/index">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="advanced-search">
                            <button type="button" class="category-btn">All Categories</button>
                            <form action="#" class="input-group">
                                <input type="text" placeholder="What do you need?">
                                <button type="button"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 text-right col-md-3">
                        <ul class="nav-right">
                            <li class="heart-icon"><a href="#">
                                    <i class="icon_heart_alt"></i>
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="cart-icon"><a href="#">
                                    <i class="icon_bag_alt"></i>
                                    <span>3</span>
                                </a>
                                <div class="cart-hover">
                                    <div class="select-items">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="si-pic"><img src="img/select-product-1.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>$60.00 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="si-pic"><img src="img/select-product-2.jpg" alt=""></td>
                                                    <td class="si-text">
                                                        <div class="product-selected">
                                                            <p>$60.00 x 1</p>
                                                            <h6>Kabino Bedside Table</h6>
                                                        </div>
                                                    </td>
                                                    <td class="si-close">
                                                        <i class="ti-close"></i>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="select-total">
                                        <span>total:</span>
                                        <h5>$120.00</h5>
                                    </div>
                                    <div class="select-button">
                                        <a href="#" class="primary-btn view-card">VIEW CARD</a>
                                        <a href="#" class="primary-btn checkout-btn">CHECK OUT</a>
                                    </div>
                                </div>
                            </li>
                            <li class="cart-price">$150.00</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>All departments</span>
                        <ul class="depart-hover">
                            <li class="active"><a href="#">Women’s Clothing</a></li>
                            <li><a href="#">Men’s Clothing</a></li>
                            <li><a href="#">Underwear</a></li>
                            <li><a href="#">Kid's Clothing</a></li>
                            <li><a href="#">Brand Fashion</a></li>
                            <li><a href="#">Accessories/Shoes</a></li>
                            <li><a href="#">Luxury Brands</a></li>
                            <li><a href="#">Brand Outdoor Apparel</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li><a href="./home.html">Home</a></li>
                        <li><a href="./shop.html">Shop</a></li>
                        <li><a href="#">Collection</a>
                            <ul class="dropdown">
                                <li><a href="#">Men's</a></li>
                                <li><a href="#">Women's</a></li>
                                <li><a href="#">Kid's</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="./contact.html">Contact</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="./blog-details.html">Blog Details</a></li>
                                <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                <li><a href="./check-out.html">Checkout</a></li>
                                <li><a href="./faq.html">Faq</a></li>
                                <li><a href="./register.html">Register</a></li>
                                <li><a href="./login.html">Login</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text product-more">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.html">Shop</a>
                        <span>Check Out</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

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
                                <input type="radio" id="onOff_select1" name="onOff" onclick="online_select();"><label for="onOff_select1">온라인</label>
                                <input type="radio" id="onOff_select2" name="onOff" onclick="offline_select();"><label for="onOff_select2">오프라인</label>
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
                                        <input type="text" id="address" style="width: 300px;">
										<input type="button" value="검색" id="address_btn"onclick="search_location();">
                                        </div>
                                        
                                        <label for="town">모임 장소 상세 설명<span>*</span></label>
                                        <br>
                                        <textarea  style="width: 300px;height:150px"id="offline_spot_explain" ></textarea>
                                        <br>
                                        <label for="town">모임 시작 시간 설정<span>*</span></label>
                                        
                                        <input  type="time" id="offline_start_time">
                                        
                                         </div>
                                </div>
                            </div>
                            <div class="col-lg-12 scrollMenu choices">
                                <label for="fir">인증빈도<span>*</span></label>
                                <br>
                                <input type="radio" id="frequency_select1" name="frequency"><label for="frequency_select1">매일</label>
                                <input type="radio" id="frequency_select2" name="frequency"><label for="frequency_select2">평일 매일</label>
                                <input type="radio" id="frequency_select3" name="frequency"><label for="frequency_select3">주말 매일</label>
                                <input type="radio" id="frequency_select4" name="frequency"><label for="frequency_select4">주 1회</label>
                                <input type="radio" id="frequency_select5" name="frequency"><label for="frequency_select5">주 2회</label>
                                <input type="radio" id="frequency_select6" name="frequency"><label for="frequency_select6">주 3회</label>
                                <input type="radio" id="frequency_select7" name="frequency"><label for="frequency_select7">주 4회</label>
                                <input type="radio" id="frequency_select8" name="frequency"><label for="frequency_select8">주 5회</label>
                                <input type="radio" id="frequency_select8" name="frequency"><label for="frequency_select8">주 6회</label>
                            </div>
 
                            <div class="col-lg-12 choices">
                                <label for="fir">챌린지 기간<span>*</span></label>
                                <br>
                                <input type="radio" id="duration_select1" name="duration"><label for="duration_select1">1주</label>
                                <input type="radio" id="duration_select2" name="duration"><label for="duration_select2">2주</label>
                                <input type="radio" id="duration_select3" name="duration"><label for="duration_select3">3주</label>
                                <input type="radio" id="duration_select4" name="duration"><label for="duration_select4">4주</label>
                            </div>
                            <div class="col-lg-3">
                                <label for="fir">인증 가능 시간<span>*</span></label>
                                <input type="time" id="fir">
                            </div>
                            <div class="col-lg-3">
                                <label for="last">인증 종료 시간<span>*</span></label>
                                <input type="time" id="end_time">
                            </div>
                            <div class="col-lg-12 scrollMenu choices" >
                                <label for="fir">시작일<span>*</span></label>
                                <br>
                                <input type="radio" id="start_date_select1" name="start_date"><label for="start_date_select1">오늘</label>
                                <input type="radio" id="start_date_select2" name="start_date"><label for="start_date_select2">내일</label>
                                <input type="radio" id="start_date_select3" name="start_date"><label for="start_date_select3">2일 후</label>
                                <input type="radio" id="start_date_select4" name="start_date"><label for="start_date_select4">3일 후</label>
                                <input type="radio" id="start_date_select5" name="start_date"><label for="start_date_select5">4일 후</label>
                                <input type="radio" id="start_date_select6" name="start_date"><label for="start_date_select6">5일 후</label>
                                <input type="radio" id="start_date_select7" name="start_date"><label for="start_date_select7">6일 후</label>
                                <input type="radio" id="start_date_select8" name="start_date"><label for="start_date_select8">7일 후</label>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun">인증 방법<span>*</span></label>
                                <br>
                                <textarea cols="55" rows="10" id="certification_method" placeholder="ex) 오늘 날짜와 걸음 수가 보이도록 업로드&#13;&#10;&#13;&#10;- 챌린지가 시작되면 인증 방법을 수정할 수 없습니다. 신중히 작성해주세요.&#13;&#10;- 혼란을 겪지 않도록 정확한 기준과 구체적인 인증 방법을 적어주세요. "></textarea>
                            </div>
                            <div class="col-lg-6">
                                <label for="fir">인증 성공 예시<span>*</span></label>
                                <br>
                                <!-- <img src="/img/hero-1.jpg" class="rounded" style="width:250px;height:250px;" alt="..."> -->
                             <input name="uploadFiles" type="file" multiple class="rounded" style="width:250px;height:250px;" alt="...">
								<button class="uploadBtn">Upload</button>
								
								<div class="uploadResult">
                            </div>
                            <div class="col-lg-6">
                                <label for="last">인증 실패 예시<span>*</span></label>
                                <br>
                             <input name="uploadFiles" type="file" multiple class="rounded" style="width:250px;height:250px;" alt="...">
								<button class="uploadBtn">Upload</button>
								
								<div class="uploadResult">
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
                                <input type="radio" id="category_select1" name="category"><label for="category_select1">운동</label>
                                <input type="radio" id="category_select2" name="category"><label for="category_select2">식습관</label>
                                <input type="radio" id="category_select3" name="category"><label for="category_select3">기상</label>
                                <input type="radio" id="category_select4" name="category"><label for="category_select4">취미</label>
                            </div>
                            <div class="col-lg-12">
                                <label for="fir">대표 사진 선택<span>*</span></label>
                                <br>
                               <input name="uploadFiles" type="file" multiple class="rounded" style="width:250px;height:250px;" alt="...">
								<button class="uploadBtn">Upload</button>
								
								<div class="uploadResult">
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

    <!-- Partner Logo Section Begin -->
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Logo Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello.colorlib@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1">
                    <div class="footer-widget">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Checkout</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Serivius</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Shopping Cart</a></li>
                            <li><a href="#">Shop</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="newslatter-item">
                        <h5>Join Our Newsletter Now</h5>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Enter Your Mail">
                            <button type="button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

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
	var address = document.getElementById("address").value;
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

</script>
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