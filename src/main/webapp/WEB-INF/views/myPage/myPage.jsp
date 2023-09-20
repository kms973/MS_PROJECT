<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="mypage" class="mypage container wrap">
	<div id="sub-bnr"><h5>My page</h5></div>
	
   	<div class="d-flex align-items-start justify-content-between">
			<!-- Side Nav Left -->
			<ul class="nav flex-column nav-pills mt-2 me-3 side-tab w-15" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				<li class="nav-item" role="presentation">
					<button class="nav-link active bg-white fz-14" class="nav-link active" id="order-tab" data-bs-toggle="tab" data-bs-target="#order" type="button" role="tab" aria-controls="orderList" aria-selected="true">주문내역</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-14" id="heart-tab" data-bs-toggle="tab" data-bs-target="#heart" type="button" role="tab" aria-controls="heart" aria-selected="false">찜한 상품</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-14" id="delivery-tab" data-bs-toggle="tab" data-bs-target="#delivery" type="button" role="tab" aria-controls="delivery" aria-selected="false">배송지 관리</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-14" id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button" role="tab" aria-controls="review" aria-selected="false">상품 후기</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-14" id="userqna-tab" data-bs-toggle="tab" data-bs-target="#userqna" type="button" role="tab" aria-controls="guserqna" aria-selected="false">상품 문의</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-14" id="userpro-tab" data-bs-toggle="tab" data-bs-target="#userpro" type="button" role="tab" aria-controls="userpro" aria-selected="false">개인정보 수정</button>
				</li>
			</ul>
			
			<!-- Mu Page - Contents Area -->
			<div class="tab-content w-85 mt-2">
		    	<div class="tab-pane active" id="order" role="tabpanel" aria-labelledby="order-tab">
		    		<jsp:include page="/WEB-INF/views/myPage/orderList.jsp" />
		    	</div>
			    <div class="tab-pane" id="heart" role="tabpanel" aria-labelledby="heart-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPage/heart.jsp" /> --%>
			    	내용이 없습니다1.
			    </div>
			    <div class="tab-pane" id="delivery" role="tabpanel" aria-labelledby="delivery-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPage/delivery.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane" id="review" role="tabpanel" aria-labelledby="review-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPage/userReview.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			   <div class="tab-pane" id="userqna" role="tabpanel" aria-labelledby="userqna-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPage/userqna.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			     <div class="tab-pane" id="userpro" role="tabpanel" aria-labelledby="userpro-tab">
			    	<jsp:include page="/WEB-INF/views/myPage/userPro.jsp" />
			    </div>
		  	</div>
		</div>
	
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />


