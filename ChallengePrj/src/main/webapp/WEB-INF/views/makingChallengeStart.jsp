<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="X-UA-Compatible" content="ie=chrome">

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

         
        
        
        <!-- 챌린지 선택 제목 -->
      
      <section class="challenge-choice">
    	  <div class="challenge_guide">
     		<h3>챌린지를 선택해주세요!</h3>
	  	 </div>
       </section>




        <!-- 챌린지 선택  -->
         

        <section class="challenge-choice-icon">
        	<a href="makingChallengeOffLine">
        		<div class="choice_icon">
        			<img src="img/오프라인초이스.png">
        			<h3><b>오프라인 챌린지</b></h3>
        		</div>
        	</a>
        

       		 <a href="makingChallengeOnLine">
     		  	<div class="choice_icon">
	  				<img src="img/온라인초이스.png">
	  				<h3><b>온라인 챌린지</b></h3>
       			 </div>
       		 </a>
       		 
        </section>
        
      <<!-- 챌린지 선택 끝 -->
  
    
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


<script src="chrome-extension://ldinpeekobnhjjdofggfgjlcehhmanlj/inpage.js" id="stacks-wallet-provider"></script>


 <!-- FOOTER -->
	<%@include file="./include/footer.jsp" %>

</body>
</html>

