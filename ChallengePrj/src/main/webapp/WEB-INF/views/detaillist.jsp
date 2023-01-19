<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="X-UA-Compatible" content="ie=chrome">

    <!-- 카테고리 아이콘 -->
    <section class="category-icon">
    <div class="banner-section spad">
        <div class="container-fluid">
            <div class="row">
                <div class="icon0">
                    <div class="single-banner">
                       <a href="#">
                        <img src="img/인기.png" alt="">
                        <div class="inner-text">
                            <h5>인기</h5>
                        </div>
                       </a>
                    </div>
                </div>
                <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/신규.png" alt="">
                        <div class="inner-text">
                            <h5>신규</h5>
                        </div>
                        </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/온라인.png" alt="">
                        <div class="inner-text">
                            <h5>온라인</h5>
                        </div>
                      </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/오프라인.png" alt="">
                        <div class="inner-text">
                            <h5>오프라인</h5>
                        </div>
                        </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/운동.png" alt="">
                        <div class="inner-text">
                            <h5>운동</h5>
                        </div>
                    </a>
                    </div>
                </div>
                <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/공부.png" alt="">
                        <div class="inner-text">
                            <h5>공부</h5>
                        </div>
                         </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/취미.png" alt="">
                        <div class="inner-text">
                            <h5>취미</h5>
                        </div>
                         </a>
                    </div>
                </div>
               <div class="icon0">
                    <div class="single-banner">
                    <a href="#">
                        <img src="img/규칙적인생활.png" alt="">
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
    
    <!-- 챌린지 리스트 -->
    
     <section class="challenge-list">
    	 <div class="list-container">
   			 	<div class="list">
   			 		 <ul>
   		  			<li class="list-name"><h3>챌린지 리스트 👀</h3></li>
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
    			<c:forEach var="hotRes" items="${hotRes }" begin="0" step="1">

				
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
    
        <!-- 챌린지 리스트 끝 -->

       
        <!-- 공백용 -->
        
        <section class="blank">
        </section>

    
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