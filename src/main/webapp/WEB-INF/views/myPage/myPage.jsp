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
					<button class="nav-link active bg-white fz-10" class="nav-link active" id="order-tab" data-bs-toggle="tab" data-bs-target="#order" type="button" role="tab" aria-controls="orderList" aria-selected="true">주문내역</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-12" id="heart-tab" data-bs-toggle="tab" data-bs-target="#heart" type="button" role="tab" aria-controls="heart" aria-selected="false">찜한 상품</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-12" id="delivery-tab" data-bs-toggle="tab" data-bs-target="#delivery" type="button" role="tab" aria-controls="delivery" aria-selected="false">배송지 관리</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-12" id="review-tab" data-bs-toggle="tab" data-bs-target="#review" type="button" role="tab" aria-controls="review" aria-selected="false">상품 후기</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-12" id="userqna-tab" data-bs-toggle="tab" data-bs-target="#userqna" type="button" role="tab" aria-controls="guserqna" aria-selected="false">상품 문의</button>
				</li>
				<li class="nav-item" role="presentation">
					<button class="nav-link bg-white fz-12" id="userpro-tab" data-bs-toggle="tab" data-bs-target="#userpro" type="button" role="tab" aria-controls="userpro" aria-selected="false">개인정보 수정</button>
				</li>
			</ul>
			
			<!-- Mu Page - Contents Area -->
			<div class="tab-content w-85 mt-2">
		    	<div class="tab-pane active" id="order" role="tabpanel" aria-labelledby="order-tab">
		    		<jsp:include page="/WEB-INF/views/myPage/orderList.jsp" />
		    	</div>
			    <div class="tab-pane fade" id="heart" role="tabpanel" aria-labelledby="heart-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/heart.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="delivery" role="tabpanel" aria-labelledby="delivery-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/delivery.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/userReview.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="userqna" role="tabpanel" aria-labelledby="userqna-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/userqna.jsp" /> --%>
			    	내용이 없습니다.
			    </div>
			    <div class="tab-pane fade" id="userpro" role="tabpanel" aria-labelledby="userpro-tab">
			    	<%-- <jsp:include page="/WEB-INF/views/myPAge/userpro.jsp" /> --%>
			    	<form method="post" action="/login" class="needs-validation" novalidate>
			            <!-- 로그인 폼 -->

			            <!-- 로그인 타이틀 -->
			            <h6 class="justify-content-center">비밀번호 확인</h6>
			
			            <!-- 이메일 입력 필드 -->
			            <div class="form-floating form-group">
			                <input name="username" type="email" class="form-control" id="floatingInput" placeholder="name@example.com" required>
			                <label for="floatingInput">이메일</label>
			                <div class="invalid-feedback">로그인 회원의 이메일 입력되야함</div>
			            </div>
			
			            <!-- 비밀번호 입력 필드 -->
			            <div class="form-floating">
			                <input name="password" type="password" class="form-control" id="floatingPassword" placeholder="Password" required>
			                <label for="floatingPassword">비밀번호</label>
			                <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
			            </div>
			
			            <!-- 로그인 버튼 -->
			            <button class="btn btn-primary w-100 my-1 py-2" type="submit">비밀번호 확인</button>

			        </form>
			    </div>
		  	</div>
		</div>
	
 </section>
<!-- footer 시작 -->
<jsp:include page="/WEB-INF/views/footer.jsp" />


