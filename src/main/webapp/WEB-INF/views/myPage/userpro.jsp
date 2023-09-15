<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- 주문내역 헤더 -->
<div class="d-flex my-2 justify-content-between w-100">
	<h5>주문내역</h5>
   	<select class="form-select w-auto" aria-label="Default select example">
		<option value="3" selected>3개월</option>
		<option value="6">6개월</option>
		<option value="all">1년</option>
	</select>
</div>

<!-- 주문 리스트 -->
<div class="row mt-3 mx-0 justify-content-between w-100">
    <div class="col-12 p-0">
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


