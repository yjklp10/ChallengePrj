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

        
        <!-- 작심삼일 가이드 -->
      
      <section class="guide3">
    	  <div class="challenge_guide">
     		<h3>챌린지를 선택해주세요!</h3>
	  		
	  	 </div>
	  
	    
       </section>
        <!-- 공백용 -->
        
        <section class="blank">
        </section>
        
        <!-- 온라인/오프라인 가이드 -->
         
        <section class="guide_onoff">
        <a href="makingChallengeOffLine">
      	  <div class="guide_offline">
      	     <h3>코로나 싫어! 밖에 나갈래!</h3>
      		 <h5>그럼 오프라인 모임은 어때? 😉</h5>
       		 <img src="img/오프라인가이드.png">
      	  </div>
        </a>
      		 <div class="vs">
      	 	<h2><b>VS</b></h2>
      		 </div>
        <a href="makingChallengeOnLine">
     	  <div class="guide_online">
      		<h3>날 추운데 어딜나가!</h3>
	  		<h5>온라인으로 하면되지! 😁</h5>
	  		<img src="img/온라인가이드.png">
	  		 
        </div>
        </a>
        </section>
        
      <!-- 온라인/오프라인 가이드 끝 -->
      
      
      <!-- 공백용 -->
        
        <section class="blank">
        <div class="blank">
        </div>
        </section>
      
      <!-- 공백용 끝 -->
        
    
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