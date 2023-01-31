<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="X-UA-Compatible" content="ie=chrome">




 
    <!-- 챌린지 리스트 -->
    
     <section class="challenge-list">
    	 <div class="list-container">
   			 	<div class="list">
   			 		 <ul>
   		  			<li class="list-name"><h3>검색 결과 🔍<h3></li>
   		  			</ul>
				</div>
    
   			<div class="content-list">
   		 		<div class="content-pic">
   		 		
   		 		  <ul>
					 <c:choose>
    				<c:when test="${empty newRes }">
     					<p>--- 검색 결과가 없습니다 ---</p>
     				</c:when>
     			
     			<c:otherwise>
    			<c:forEach var="newRes" items="${newRes }" begin="0" step="1">

				
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
    
        <!-- 챌린지 리스트 끝 -->

       
        <!-- 공백용 -->
        
        <section class="blank">
        </section>


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