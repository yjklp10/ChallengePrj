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

      <style>

        html, body, div, span, applet, object, iframes, h1, h2, h3, h4, h5, h6,
        
            p, blockquote, pre, a, abbr, acronym, address, big, quotes, code, del,
        
            dfn, em, img, ins, kbd, q, s, samp, small, strike, sub, sup, tt, var, u,
        
            i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table,
        
            caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
        
            details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
        
            output, ruby, section, summary, time, mark, audio, video {
        
            margin: 0;
        
            padding: 0;
        
            border: 0;
        
            font-size: 100%;
        
            do: inherit;
        
            vertical-align: baseline;
        
        }
        
        
        
        article, aside, details, figcaption, figure, footer, header, hgroup,
        
            menu, nav, section {
        
            display: block;
        
        }
        
        
        
        blockquote, q {
        
            quotes: none;
        
        }
        
        
        
        blockquote : before, blockquote : after, q : before, q : after {
        
            content: '';
        
            content: none;
        
        }
        
        
        
        table {
        
            border-collapse: collapse;
        
            border-spacing: 0;
        
        }
        
        /*css 초기화*/
        
        
        
        .card {
        
            height: 400px;
        
            width: 350px;
        
            border-radius: 15px;
        
            display: inline-block;
        
            margin-top: 30px;
        
            margin-left: 30px;
        
            margin-bottom: 30px;
        
            position: relative;
        
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        
    
        
        }
        
        
        
        .card-header {
        
            -webkit-transition: 0.5s; /*사파리 & 크롬*/
        
            -moz-transition: 0.5s;  /*파이어폭스*/
        
            -ms-transition: 0.5s;	/*인터넷 익스플로러*/
        
            -o-transition: 0.5s;  /*오페라*/
        
            transition: 0.5s;
        
            width: 100%;
        
            height: 200px;
        
            border-radius: 15px 15px 0 0;
        
            background-image: url("img/TSOY-4988.jpg");
        
            background-size: 100% 200px;
        
            background-repeat: no-repeat;	
        
        }
        
        
        
        .card:hover .card-header  {
        
            opacity: 0.8;
        
            height: 100px;
        
        }
        
        
        
        .card-header-is_closed{
        
            background-color: #EF5A31 ;
        
            color: #FFF ;
        
            font-weight: bold ;
        
            text-align: center ;
        
            float: right;
        
            margin: 15px 15px 0 0;
        
            border-radius: 50%;
        
            font-weight: bold;
        
            padding: 10px 10px;
        
            line-height: 20px;
        
        }
        
        
        
        h1 {
        
            font-size: 22px;
        
            font-weight: bold;
        
        }
        
        
        
        .card-body {
        
        }
        
        
        
        .card-body-header{
        
            line-height: 25px;
        
            margin: 10px 20px 0px 20px;
        
        }
        
        
        
        .card-body-description  {
        
            opacity: 0;
        
            color: #757B82;
        
            line-height: 25px;
        
            -webkit-transition: .2s ease-in-out; /*사파리&크롬*/
        
            -moz-transition: .2s ease-in-out; /*파이어폭스*/
        
            -ms-transition: .2s ease-in-out; /*익스플로러*/
        
            -o-transition: .2s ease-in-out; /*오페라*/
        
            transition : .2s ease-in-out;
        
            overflow: hidden;
        
            height: 180px;
        
            margin: 5px 20px;
        
        }
        
        
        
        .card:hover .card-body-description {
        
            opacity: 1;
        
            -webkit-transition: .5s ease-in-out;
        
            -moz-transition: .5s ease-in-out;
        
            -ms-transition: .5s ease-in-out;
        
            -o-transition: .5s ease-in-out;
        
            transition : .5s ease-in-out;
        
           
        
        }
        
        
        
        .card-body-hashtag {
        
            color: #2478FF;
        
            font-style: italic;
        
        }
        
        
        
        .card-body-footer {
        
              position: absolute; 
        
              margin-top: 15px;
        
              margin-bottom: 6px;
        
            bottom: 0; 
        
            width: 314px;
        
            font-size: 14px;
        
            color: #9FA5A8;
        
            padding: 0 15px;
        
        }
         
          .detail{
            float: left;
        }
        .popup{
            float: right;
        }
       button{
        background: black;
        color: white;
        border: 2px solid white;
        border-radius: 5px;
        padding:5px 10px;
        font-size:10px;
        transition: .5s ease;
    }
       button:hover{
        transition: .5s ease;
        border: 2px solid black;
        background: transparent;
        color:black;
    }
        
        
        
        </style>

<body>
   
    <c:forEach items="${list }" var="dto">
     <div class="card">



		<!-- 카드 헤더 -->

		<div class="card-header" >

			<div class = "card-header-is_closed" > 

                <div class = "card-header-text" > 진행 중 </div > 

             

            </div >

		</div>



		<!--  카드 바디 -->

		<div class="card-body">



			<!--  카드 바디 헤더 -->

			<div class="card-body-header">

				<h1>${dto.title }</h1>

				<p class="card-body-hashtag">${dto.endline}</p>

				 <p class = "card-body-nickname"> 

                                 인증시간 ${dto.starttime }~${dto.endtime }

           		         </p>

			</div>

			<p class="card-body-description">

		      ${dto.detail }
             

			</p>

			<!--  카드 바디 본문 -->



			<!--  카드 바디 푸터 -->

			<div class="card-body-footer">

				<hr style="margin-bottom: 8px; opacity: 0.5; border-color: #EF5A31">

				    <i class="detail"><button onclick="location.href='/mychallenge?title=${dto.title}'">상세 페이지</button></i>

		           <i class="popup"><button onclick="location.href='/fopen?title=${dto.title}&chid=${dto.chid }'">인증페이지</button></i>
		         
    


 
			</div>



		</div>



	</div>
   

 
     </c:forEach>
   

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
