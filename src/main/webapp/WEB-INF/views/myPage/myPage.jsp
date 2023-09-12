<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header 시작 -->
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- 메인 시작 -->
<section id="mypage" class="mypage container wrap">
	<div id="sub-bnr" class="mb-5"><h5>My page</h5></div>
	   	<div class="d-flex align-items-start">
			<!-- Side Nav Left -->
			<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				<button class="nav-link active bg-white" id="v-pills-order-tab" data-bs-toggle="pill" data-bs-target="#v-pills-order-tab" role="tab" aria-controls="v-pills-order" aria-selected="true" style="white-space: nowrap; padding: revert;"><h5>주문내역</h5></button>
				<button class="nav-link bg-white" id="v-pills-favorite-tab" data-bs-toggle="pill" data-bs-target="#v-pills-favorite-tab" role="tab" aria-controls="v-pills-favorite" aria-selected="false" style="white-space: nowrap; padding: revert;"><h5>찜한 상품</h5></button>
				<button class="nav-link bg-white" id="v-pills-address-tab" data-bs-toggle="pill" data-bs-target="#v-pills-address-tab" role="tab" aria-controls="v-pills-address" aria-selected="false" style="white-space: nowrap; padding: revert;"><h5>배송지 관리</h5></button>
				<button class="nav-link bg-white" id="v-pills-review-tab" data-bs-toggle="pill" data-bs-target="#v-pills-review" role="tab" aria-controls="v-pills-review" aria-selected="false" style="white-space: nowrap; padding: revert;"><h5>상품 후기</h5></button>
				<button class="nav-link bg-white" id="v-pills-question-tab" data-bs-toggle="pill" data-bs-target="#v-pills-question-tab" role="tab" aria-controls="v-pills-question" aria-selected="false" style="white-space: nowrap; padding: revert;"><h5>상품 문의</h5></button>
				<button class="nav-link bg-white" id="v-pills-edit-tab" data-bs-toggle="pill" data-bs-target="#v-pills-edit-tab" role="tab" aria-controls="v-pills-edit" aria-selected="false" style="white-space: nowrap; padding: revert;"><h5>개인정보 수정</h5></button>
			</div>
			
			<!-- Mu Page - Contents Area -->
			<div class="tab-content" id="v-pills-tabContent">
		    	<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-order-tab">
		    		<jsp:include page="/WEB-INF/views/myPage/orderList.jsp" />
		    	</div>
			    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-favorite-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/orderlist.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-address-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/orderlist.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-review-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/orderlist.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-question-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/orderlist.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-edit-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/orderlist.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
		  	</div>
		</div>
	
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />


