<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="./include/header.jsp" %>
<!DOCTYPE html>


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
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <style>
     
        h2{
            text-align: center;
            
            margin: 30px 0 50px;
        }
        .minho{
           text-align: center;
            margin: 10px 50px;
        }
         .minho img{
            width: 230px;
            height: 230px;
            padding: 5px;
            filter: grayscale(100%);
            transition: 1s;
       
        }
          .minho img:hover{
            filter: grayscale(0%);
            transform: scale(1.1);
        }
       </style>  
     
</head>

<body>
   
    <h2>mypage_image</h2s>
    <div class="minho">

    </div>
      <script> 
    
       
        	 let minho= $(".minho");
        	 let str=""; 
     
      	   $.getJSON("/getAttachList",function(arr){
         
         		   
         for(key in arr){
             let fileCallPath=encodeURIComponent(arr[key].uploadFilePath+ "/s_"+arr[key].uuid+"_"+arr[key].fileName);
               
                 str += "<img src='/displaying?fileName=" + fileCallPath +"'>";
              
           
                 minho.html(str);
        
         }
           });
       </script>
     	<%@include file="./include/footer.jsp" %>
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