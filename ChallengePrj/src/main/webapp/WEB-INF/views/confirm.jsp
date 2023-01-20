<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="./include/header.jsp" %>
<!DOCTYPE html>
<html>

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
</head>
<script>
      window.onload=function() {
    	 var w;
    	 document.getElementById("open").onclick=function() {
    		 w=open("/popen","","width=400px, height=400px");
    	 };
      };
    </script>
   <style>
   
   .serv_list{
        padding-top: 70px;
        padding-bottom: 70px ;
    }
    .serv_list.container{
        max-width: 1500px;
        margin: auto;
    }
  
   
   .serv_list .container .item_list{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
     
   }
    .serv_list .container .item_list .card{
        border:1px solid #eee;
        border-radius: 5px;
        height: 400px;
        width: 250px;
        padding: 5px;
        margin-bottom: 10px;

    }
    .serv_list .container .item_list .card img{
        height: 250px;
        width: 250px;
    }
     .serv_list .container .item_list .card img1{
        height: 250px;
        width: 250px;
    }
    .serv_list .container .item_list .card .text p{
        
        font-size: 14px;
        opacity: .8;
    }
    .serv_list .container .item_list .card .text button{
        background: black;
        color: white;
        border: 2px solid white;
        border-radius: 5px;
        padding:5px 10px;
        font-size:10px;
        transition: .5s ease;
    }
    .serv_list .container .item_list .card .text button:hover{
        transition: .5s ease;
        border: 2px solid black;
        background: transparent;
        color:black;
    }
   </style>
<body>
   
     <section class="serv_list">
    <div class="container">
     
        <div class="item_list">
            <div class="card">
            <div class="img">
                <img src="img/0185dfdf4b6afa4df2ad21167cb26373.jpg" alt="">
            </div>
            <div class="text">
             <h2>인증 방법</h2>
             <p>자신이 속한 챌린지의 인증방법을 참고합니다! 시간을 어기면 -1됩니다</p>
            </div>
            </div>
            <img src="img/271228.png" width="100px" height="100px" style="margin-top: 100px;">
            <div class="card">
                <div class="img">
                    <img src="img/TSOY-4988.jpg" alt="">
                </div>
                <div class="text">
                 <h2>인증 예시</h2>
                 <p>자신이 속한 챌린지의 인증예시를 참고하세요!</p>
                </div>
                </div>
                <img src="img/271228.png" width="100px" height="100px" style="margin-top: 100px;">
                <div class="card">
                    <div class="img1">
                        <img src="img/no-image.png" alt="">
                    </div>
                    <div class="text">
                     <h3>인증 하기</h3>
                     <p>자신이 속한 챌린지의 인증방법을 참고합니다!</p>
                    <button id="open"><i class="fas fa-check"></i>인증하기</button>
                    </div>
                    </div>
    
        </div>
    </div>
    </section>
   
   

    <!-- Footer Section Begin -->
   	<%@include file="./include/footer.jsp" %>
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
</body>

</html>
