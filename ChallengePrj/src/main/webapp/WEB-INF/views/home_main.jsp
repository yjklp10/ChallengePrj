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
    	
    	
   <!-- 
    	<div style="text-align:center">
 		 <span class="banner_dot"></span> 
 	 	<span class="banner_dot"></span> 
	  	<span class="banner_dot"></span> 
	    <span class="banner_dot"></span> 
	</div>
	-->
	
    </section>
    <!-- 상단 홍보 배너 끝 -->



 <!-- 스크롤 퀵 메뉴 -->

	<div id="quick">

			<a href="#">
			<img src="img/공지사항.png">
			<p id="quick-text">공지사항</p>
			</a>
			
			<a href="#">
			<img src="img/가이드.png">
			<p id="quick-text">가이드</p>
			</a>
			
			<a href="#">
			<img src="img/챌린지개설.png">
			<p id="quick-text">챌린지 개설</p>
			</a>
			
			<a href="#">
			<img src="img/마이페이지.png">
			<p id="quick-text">마이페이지</p>
			</a>
			
	</div>

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
                    <a href='detaillist_hot'>
                        <img src="img/인기.png">
                        <div class="inner-text">
                            <h5>인기</h5>
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
    
   
      
    <!-- 인기 챌린지 리스트 -->
    
     <section class="challenge-list">
    	 <div class="list-container">
   			 	<div class="list">
   			 		 <ul>
   		  			<li class="list-name"><a href='detaillist_hot'><h3>인기 챌린지 🔥</h3></a></li>
   		  			<li class="list-plus"><a href='detaillist_hot'><h6>더보기 +</h6></a></li>
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
  				  <a href=""> 				  	
   				   <img src="${pageContext.request.contextPath }/static2/thumb/${hotRes.thumbnailpath }" alt="${hotRes.thumbnailpath }">
   				    
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
  				  <a href=""> 				  	
   				   <img src="${pageContext.request.contextPath }/static2/thumb/${newRes.thumbnailpath }" alt="${newRes.thumbnailpath }">
   				    
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
        
        
        
        <!-- 공백용 -->
        
        <section class="blank">
        </section>
        
        <!-- 온라인/오프라인 가이드 -->
        
        <section class="guide_onoff">
      	  <div class="guide_offline">
      	     <h3>코로나 싫어! 밖에 나갈래!</h3>
      		 <h5>그럼 오프라인 모임은 어때? 😉</h5>
       		 <img src="img/오프라인가이드.png">
      	  </div>
        
      		 <div class="vs">
      	 	<h2><b>VS</b></h2>
      		 </div>
        
     	  <div class="guide_online">
      		<h3>날 추운데 어딜나가!</h3>
	  		<h5>온라인으로 하면되지! 😁</h5>
	  		 <img src="img/온라인가이드.png">
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
	  		 <img src="img/가이드0.jpg">
	  		 <img src="img/가이드1.jpg">
	  		 <img src="img/가이드2.jpg">
	   	</div>
	    
       </section>
       
       
     <!-- 공백용 -->
        
        <section class="blank">
        <div class="blank">
        </div>
        </section>
      
      <!-- 공백용 끝 -->
        
    			
  <!--
    <section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">이달의 챌린지</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel owl-loaded owl-drag">

                    <div class="owl-stage-outer">
                    <div class="owl-stage" style="transform: translate3d(-808px, 0px, 0px); transition: all 1.2s ease 0s; width: 2695px;"><div class="owl-item cloned" style="width: 244.443px; margin-right: 25px;"><div class="product-item">
                            <div class="pi-pic">
                                <img src="img/임시3.png" alt="">
                                <div class="icon">
                                </div>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name"></div>
                                <a href="#">
                                    <h5>매일 필사 1가지</h5>
                                </a>
                                <div class="product-price">
                                    ~ 23/3/1
                                </div>
                           		</div>
                       		</div>
       				  </div>
        			</div>
    			</section>  
 
    	<section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">인기 챌린지</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel owl-loaded owl-drag">

                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-808px, 0px, 0px); transition: all 1.2s ease 0s; width: 2695px;"><div class="owl-item cloned" style="width: 244.443px; margin-right: 25px;"><div class="product-item">
                            <div class="pi-pic">
                                <img src="img/임시3.png" alt="">
                                <div class="icon">
                                </div>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name"></div>
                                <a href="#">
                                    <h5>매일 필사 1가지</h5>
                                </a>
                                <div class="product-price">
                                    ~ 23/3/1
                                </div>
                           		</div>
                       		</div>
       				  </div>
        			</div>
    			</section> 

	<section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">신규 챌린지</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel owl-loaded owl-drag">

                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-808px, 0px, 0px); transition: all 1.2s ease 0s; width: 2695px;"><div class="owl-item cloned" style="width: 244.443px; margin-right: 25px;"><div class="product-item">
                            <div class="pi-pic">
                                <img src="img/임시3.png" alt="">
                                <div class="icon">
                                </div>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name"></div>
                                <a href="#">
                                    <h5>매일 필사 1가지</h5>
                                </a>
                                <div class="product-price">
                                    ~ 23/3/1
                                </div>
                           		</div>
                       		</div>
       				  </div>
        			</div>
    			</section> 
    			-->
    			    <!-- 각 챌린지 끝-->
		
	 <!-- top 버튼 -->

	</div>
	  <p class="btn_top"><a href="#none">
		 <img src="img/화살표.png">
	  </a></p>
	</div>
	
	<!-- top 버튼 끝 -->

    
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