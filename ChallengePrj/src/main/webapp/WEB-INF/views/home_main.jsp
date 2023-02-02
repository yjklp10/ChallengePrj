<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="X-UA-Compatible" content="ie=chrome">
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script>
 
 </script>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
 

    <!-- 상단 홍보 배너 -->
     
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="img/메인배너1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                        </div>
                    </div>
                </div>
            </div>
             <div class="single-hero-items set-bg" data-setbg="img/2023미라클모닝.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                        </div>
                    </div>
                </div>
            </div>
             <div class="single-hero-items set-bg" data-setbg="img/오프라인홍보.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                        </div>
                    </div>
                </div>
            </div>
             <div class="single-hero-items set-bg" data-setbg="img/신규이벤트.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                        </div>
                    </div>
                </div>
            </div>
    	</div>
    	
  
	
    </section>
    
    <!-- 상단 홍보 배너 끝 -->





	<!-- 스크롤 퀵 메뉴 끝 -->


   <!-- 카테고리 아이콘 -->
    <section class="category-icon">
    <div class="banner-section spad">
        <div class="container-fluid">
            <div class="row">
                <div class="icon0">
                    <div class="single-banner">
                       <a href='detaillist'>
                        <img src="img/신규.png">
                        <div class="inner-text">
                            <h5>신규</h5>
                        </div>
                       </a>
                    </div>
                </div>
                <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_category?category=공식'>
                        <img src="img/인기.png">
                        <div class="inner-text">
                            <h5>공식</h5>
                         </div>
                    </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_onofflist?onoffchoice=온라인'>
                        <img src="img/온라인2.png">
                        <div class="inner-text">
                            <h5>온라인</h5>
                        </div>
                      </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_onofflist?onoffchoice=오프라인'>
                        <img src="img/오프라인.png">
                        <div class="inner-text">
                            <h5>오프라인</h5>
                        </div>
                        </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_category?category=운동'>
                        <img src="img/운동.png">
                        <div class="inner-text">
                            <h5>운동</h5>
                        </div>
                    </a>
                    </div>
                </div>
                <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_category?category=공부'>
                        <img src="img/공부2.png">
                        <div class="inner-text">
                            <h5>공부</h5>
                        </div>
                         </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_category?category=취미'>
                        <img src="img/취미2.png">
                        <div class="inner-text">
                            <h5>취미</h5>
                        </div>
                         </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href='detaillist_category?category=규칙적인 생활'>
                        <img src="img/규칙적인생활.png">
                        <div class="inner-text">
                           <h5>규칙적인 생활</h5>
                         </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
    <!-- 카테고리 아이콘 끝 -->
    
   
   
       <!-- 신규 챌린지 리스트 -->
    
     <section class="challenge-list">
    	 <div class="list-container">
   			 	<div class="list">
   			 		 <ul>
   		  			<li class="list-name"><a href='detaillist'><h3>신규 챌린지 🐥</h3></a></li>
   		  			<li class="list-plus"><a href='detaillist'><h6>더보기 +</h6></a></li>
   		  			</ul>
				</div>
				
   		 	<div class="content-list">
   		 		<div class="content-pic">
   		 		
   		 		  <ul>
					 <c:choose>
    				<c:when test="${empty newRes }">
     					<p>--- 작성된 글이 없습니다 ---</p>
     				</c:when>
     			
     			<c:otherwise>
    			<c:forEach var="newRes" items="${newRes }" begin="0" end="3" step="1">

				
  				  <li> 
  				  <a href="/chdetail?challengeno=${newRes.challengeno }">  				  	
   				   <img src="../static2/thumb/${newRes.thumbnailname }" alt="${newRes.thumbnailname }">
   				    
   				    <div class="content-name">
       					<p class="chname"><c:out value="${newRes.challengetitle }"/> / <span class="onoff"> <c:out value="${newRes.onoffchoice }"/></span></p>
        				<p class="timeoff">시작일 : <fmt:formatDate value="${newRes.challengestartdate }" pattern="yyyy-MM-dd"/> ~ </p>
      				 </div>
      				 </a>
     				</li>
     				
  
       			 </c:forEach>
       			 </c:otherwise>
        		</c:choose>
   				 </ul>
   					 		
  		 		</div>	
  		 		</div>	
  		 	</div>
  		 
    </section>
    
        <!-- 신규 챌린지 리스트 끝 -->
        
   
   
      
    <!-- 공식 챌린지 리스트 -->
    
     <section class="challenge-list">
    	 <div class="list-container">
   			 	<div class="list">
   			 		 <ul>
   		  			<li class="list-name"><a href='detaillist_category?category=공식'><h3>공식 챌린지 🔥</h3></a></li>
   		  			<li class="list-plus"><a href='detaillist_category?category=공식'><h6>더보기 +</h6></a></li>
   		  			</ul>
				</div>
				
   		 	<div class="content-list">
   		 		<div class="content-pic">
   		 		
   		 		  <ul>
					 <c:choose>
    				<c:when test="${empty hotRes }">
     					<p>--- 작성된 글이 없습니다 ---</p>
     				</c:when>
     			
     			<c:otherwise>
    			<c:forEach var="hotRes" items="${hotRes }" begin="0" end="3" step="1">

				
  				  <li> 
  				  <a href="/chdetail?challengeno=${hotRes.challengeno }"> 				  	
   				   <img src="../static2/thumb/${hotRes.thumbnailname }" alt="${hotRes.thumbnailname }">

   				    
   				    <div class="content-name">
       					<p class="chname"><c:out value="${hotRes.challengetitle }"/> / <span class="onoff"> <c:out value="${hotRes.onoffchoice }"/></span></p>
        				<p class="timeoff">시작일 : <fmt:formatDate value="${hotRes.challengestartdate }" pattern="yyyy-MM-dd"/> ~ </p>
      				 </div>
      				 </a>
     				</li>
     				
  
       			 </c:forEach>
       			 </c:otherwise>
        		</c:choose>
   				 </ul>
   					 		
  		 		</div>	
  		 		</div>	
  		 	</div>
  		 
    </section>
    
        <!-- 인기 챌린지 리스트 끝 -->
        
  
        
		  <!-- 수평선 -->
      
        <section class="horizen">
          <img src="img/수평선.png">
           </section>
        
       	  <!-- 수평선 끝 -->
       	  
       	  
       	  
       	 <!-- 공백용 -->
        
        <section class="blank">
        	<div class="blank">
        	</div>
        </section>
        
      	<!-- 공백용 끝 -->
       
       
       
       
        <!-- 온라인/오프라인 가이드 -->
        
        <section class="guide_onoff">
        
      	  <div class="guide_offline">
      		  <a href='detaillist_onofflist?onoffchoice=온라인'>
      	     <h3>코로나 싫어! 밖에 나갈래!</h3>
      		 <h5>그럼 오프라인 모임은 어때? 😉</h5>
       		 <img src="img/오프라인가이드.png">
       		  </a>
      	  </div>
      	 
        
      		 <div class="vs">
      	 	<h2><b>VS</b></h2>
      		 </div>
        
        
     	  <div class="guide_online">
     	  <a href='detaillist_onofflist?onoffchoice=오프라인'>
      		<h3>날 추운데 어딜나가!</h3>
	  		<h5>온라인으로 하면되지! 😁</h5>
	  		 <img src="img/온라인가이드.png">
	  		  </a>
        </div>
        
        </section>
        
      <!-- 온라인/오프라인 가이드 끝 -->
      
      
     <!-- 공백용 -->
        
        <section class="blank">
        <div class="blank">
        </div>
        </section>
        
      <!-- 공백용 끝 -->
      
        
      
      <!-- 작심삼일 가이드 -->
      
      <section class="guide3">
    	  <div class="challenge_guide">
    	  
     		<h3>작심삼일? NO!</h3>
	  		<h6>어떻게 하면 더 잘할 수 있을까? 자기 관리 잘하는 고수들의 노하우!</h6>
	  	 </div>
	  	 
	  	 
	  	  <div class="challenge_guide_img">
	  		 <a href="https://brunch.co.kr/@ljs-president/126" target="_blank">
	  		 	<img src="img/가이드0.jpg">
	  		 	<div class="challenge_guide_head"><b>긍정적인 습관을 형성하고 유지하는 방법</b></div>
	  		 	<div class="challenge_guide_writer">by 더불어 사는 사회</div>
	  		 	</a>
	  		 	
	  		 <a href="https://brunch.co.kr/@hyung6260/559" target="_blank">
	  		 	<img src="img/가이드1.jpg">
	  		 	<div class="challenge_guide_head"><b>작심삼일이 습관을 만든다</b></div>
	  		 	<div class="challenge_guide_writer">by 김형준</div>
	  		 	</a>
	  		 	
	  		 <a href="https://brunch.co.kr/@sat10am/131" target="_blank">
	  			 <img src="img/가이드2.jpg">
	  			 <div class="challenge_guide_head"><b>좋은 습관을 유지하는 법</b></div>
	  			 <div class="challenge_guide_writer">by 박철</div>
	  			 </a>
	   	</div>
	   	</a>
	    
       </section>
       
       
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